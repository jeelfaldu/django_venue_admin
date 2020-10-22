from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import *
from django.db.models.functions import Now
import json


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
    return render(request, "./user/index.php")


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
    return render(request, "./user/feedbacks/addfeedback.php")


def Login(request):
    if request.method == "POST":
        username = request.POST['email']
        password = request.POST['password']
        print(username, password)
        if Users.objects.filter(email=username, password=password).exists():
            # userdata = Users.objects.all().filter(email=username,password=password)
            request.session['username'] = username
            return render(request, './user/index.php')
        else:
            print("not login")
    return render(request, './user/loginregister.php')


def logout(request):
    try:
        del request.session['username']
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
    try:
        cateringes = Cateringes.objects.all()
        venues = Venues.objects.all()
        decorations = Decorations.objects.all()
        packages = Packages.objects.all()
    except:
        pass
    return render(
        request, './user/bookings/addbooking.php', {
            "Cateringes": cateringes,
            "Venues": venues,
            "Decorations": decorations,
            "Packages": packages
        })


def int_or_0(value):
    try:
        return int(value)
    except:
        return 0


def booking(request):
    # data = json.decoder(request.POST.get('package_id'))
    # console.log(data)
    # var = json.loads(data)
    # print(data)
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
    return render(request, './user/index.php')
