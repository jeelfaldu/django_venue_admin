from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import *
from django.db.models.functions import Now
import json
from django.core.mail import send_mail
from django.http import HttpResponse, HttpResponseRedirect
import random


# Create your views here.
def userLogin(request):
    return render(request, "./user/loginregister.html")


def viewvenues(request):
    try:
        data = Venues.objects.all()
    except:
        pass
    return render(request, "./user/venues/viewvenue.php", {'venues': data})


def viewdecorations(request):
    try:
        data = Decorations.objects.all()
    except:
        pass
    return render(request, "./user/decorations/viewdecorations.php",
                  {'decorations': data})


def index(request):
    return render(request, "./user/loginregister.html")


def viewcateringes(request):
    try:
        data = Cateringes.objects.all()
    except:
        pass
    return render(request, "./user/cateringes/viewcateringes.php",
                  {'cateringes': data})


def viewpackages(request):
    try:
        data = Packages.objects.all()
    except:
        pass
    return render(request, "./user/packages/viewpackage.php",
                  {'packages': data})


def userfeedback(request):
    uid = request.session['id']
    return render(request, "./user/feedbacks/addfeedback.php", {'id': uid})


def newFeedback(request):
    try:
        if request.POST.get("user_id"):
            Feedbacks.objects.create(
                user_id=request.POST.get("user_id"),
                venue_id=request.POST.get("venue_id"),
                feedback_details=request.POST.get("feedback_details"),
                date=request.POST.get("date"))
        return render(request, "./user/index.php")
    except:
        return render(request, "./user/loginregister.html")


def Login(request):
    if request.method == "POST":
        username = request.POST['email']
        password = request.POST['password']
        print(username, password)
        if Users.objects.filter(email=username, password=password).exists():
            userdata = Users.objects.filter(
                email=username, password=password).get()
            print(userdata)
            request.session['username'] = username
            request.session['id'] = userdata.id
            return redirect(newbooking)
            # render(request, './user/newbooking')
        else:
            print("not login")
    return render(request, './user/loginregister.html')


def logout(request):
    try:
        del request.session['username']
        del request.session['id']
        print("logout")
    except:
        pass
    return render(request, './user/index.php')


def userregister(request):
    if request.POST:
        try:
            newdata = Users.objects.create(
                name=request.POST.get('name'),
                email=request.POST.get('email'),
                password=request.POST.get('password'),
                created_at=Now())
        except:
            pass
    return render(request, './user/index.php')


def newbooking(request):
    if 'id' not in request.session:
        return redirect(index)
    try:
        uid = request.session['id']
        cateringes = Cateringes.objects.all()
        venues = Venues.objects.all()
        decorations = Decorations.objects.all()
        packages = Packages.objects.all()
    except:
        pass
    return render(
        request, './user/bookings/addbooking.php', {
            "id": uid,
            "Cateringes": cateringes,
            "Venues": venues,
            "Decorations": decorations,
            "Packages": packages
        })


def receipt(request, rid):
    data = Payments.objects.filter(id=rid).get()
    # print(data.cateringes_id)
    user = Users.objects.filter(id=data.user_id).get()
    # Venue = Venues.objects.filter(id=data.venue_id).get()
    # Package = Packages.objects.filter(id=data.package_id).get()
    # Bookings = Bookings.objects.filter(id=rid).get()
    # Decoration = Decorations.objects.filter(id=data.decoration_id).get()
    # Cateringe = Cateringes.objects.filter(id=data.cateringes_id).get()
    return render(
        request,
        "./user/receipt.php",
        {
            "data": data,
            "username": user.name,
            # "vname": Venue.venue_name,
            # "pdtail": Package.package_details,
            # "dtype": Decoration.decoration_type,
            # "dprice": Decoration.price,
            # "catring": Cateringe
        })


def int_or_0(value):
    try:
        return int(value)
    except:
        return 0


def userpsw(request):
    return render(request, './user/forgot.php')


def resetpswd(request):
    useremail = request.POST.get("email")
    # print(Users.objects.filter(email=request.POST.get("email")).get())
    if Users.objects.filter(email=request.POST.get("email")).exists():
        otp = random.randint(1000, 9999)
        send_email(request, otp, request.POST.get("email"))
        return render(
            request, './user/resetpswd.php', {
                'data':
                Users.objects.filter(email=request.POST.get("email")).get(),
                "otp":
                otp
            })
    else:
        msg = "Email id not found !!"
        return render(request, './user/resetpswd.php', {
            'email': useremail,
            "msg": msg
        })


def reset(request):
    id = request.POST.get("id")
    if (request.POST.get("mainotp") != request.POST.get("otp")):
        return render(request, "./user/index.php", {"msg": "OTP NOT MATCH"})
    newpswd = request.POST.get("newpswd")
    data = Users.objects.filter(id=id).update(password=newpswd)
    if (data == 1):
        msg = "Password reset succesfully"
    else:
        msg = "something went wrong."
    return render(request, './user/loginregister.html', {"msg": msg})


def booking(request):
    # data = json.decoder(request.POST.get('package_id'))
    # console.log(data)
    # var = json.loads(data)
    # print(data)
    if (Bookings.objects.filter(date=request.POST.get('date')).exists()):
        return render(request, "./user/index.php", {"msg": "Booking Full"})
    test = request.POST.get('venue_id').split("#")[1].replace(',', '')
    test1 = request.POST.get('package_id').split("#")[1].replace(',', '')
    test3 = request.POST.get('decoration_id').split("#")[1].replace(',', '')

    amount = int(test) + int(test1) + int(test3)
    print("Total amount : >>>>>>>>>>>", amount)
    try:
        pass
        # pid = request.POST.get('package_id').split("#")[0]
        # pprice = request.POST.get('package_id').split("#")[1]
        # print("abcd efg ", pprice)

        newdata = Bookings.objects.create(
            # id=request.POST.get('name'),
            user_id=request.POST.get('user_id'),
            venue_id=request.POST.get('venue_id').split("#")[0],
            package_id=request.POST.get('package_id').split("#")[0],
            booking_cost=request.POST.get('booking_cost'),
            decoration_id=request.POST.get('decoration_id').split("#")[0],
            date=request.POST.get('date'),
            time_slot=request.POST.get('time_slot'),
            cateringes_id=request.POST.get('cateringes_id')[0],
        )

        if (request.POST.get('booking_cost') == amount):
            stat = "Full payment"
        else:
            stat = "Half payment"

        Payments.objects.create(
            user_id=request.POST.get('user_id'),
            total_amount=amount,
            amount_paid=request.POST.get('booking_cost'),
            status=stat,
            date=Now())

    except:
        pass
    return redirect(mybooking)
    # return render(request, './user/index.php', {"msg": "Booking Successfully"})


def mybooking(request):
    # data = Payments.objects.filter(user='4').get()
    data = Payments.objects.filter(user_id='4')

    try:
        data = Payments.objects.filter(user_id='4')
    except:
        pass
    return render(request, "./user/mybooking.php", {'data': data})


def send_email(request, otp, email):
    subject = request.POST.get('subject', 'OTP FOR PASSWORD RESET')
    message = request.POST.get('message', "OTP ID : " + str(otp))
    from_email = request.POST.get('from_email', 'faldujeel@gmail.com')
    if subject and message and from_email:
        try:
            send_mail(subject, message, from_email, [email])
        except BadHeaderError:
            pass
            # return HttpResponse('Invalid header found.')
        # return render(request, './user/index.php')
    else:
        # In reality we'd use a form class
        # to get proper validation errors.
        return HttpResponse('Make sure all fields are entered and valid.')


def contactus(request):
    return render(request, "./user/contactus.php")


def savecontacts(request):
    try:
        data = Contects.objects.create(
            fname=request.POST.get("firstname"),
            lname=request.POST.get("lastname"),
            email=request.POST.get("email"),
            number=request.POST.get("phone"),
            msg=request.POST.get("message"),
        )
    except:
        pass

    return render(request, "./user/index.php")
