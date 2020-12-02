from django.shortcuts import render, redirect

# Create your views here.
from django.http import HttpResponse
from .models import *


def login(request):
    return render(request, "login.html")


def adminlogin(request):
    if request.method == "POST":
        username = request.POST['loginemail']
        password = request.POST['loginpassword']
        print(username, password)
        if Users.objects.filter(email=username, password=password).exists():
            request.session['admin_username'] = username
            return redirect(index)
        else:
            print("not login")
    return render(request, 'login.html')


def logout_data(request):
    try:
        del request.session['admin_username']
        print("logout")
    except:
        pass
    return render(request, "login.html")


def index(request):
    if request.session.has_key('admin_username'):
        try:
            data = Contects.objects.all()
        except:
            pass
        return render(request, "index.html", {'data': data})
    else:
        return render(request, "login.html")


def venues(request):
    if request.session.has_key('admin_username'):
        try:
            data = Venues.objects.all()
        except:
            pass
        return render(request, "venues.html", {'data': data})
    else:
        return render(request, "login.html")


def cateringes(request):
    if request.session.has_key('admin_username'):
        try:
            data = Cateringes.objects.all()
        except:
            pass
        return render(request, "cateringes.html", {'data': data})
    else:
        return render(request, "login.html")


def decorations(request):
    try:
        data = Decorations.objects.all()
    except:
        pass
    return render(request, "decorations.html", {'data': data})


def package(request):
    try:
        data = Packages.objects.all()
    except:
        pass
    return render(request, "package.html", {'data': data})


def payment(request):
    try:
        data = Payments.objects.all()
    except:
        pass
    return render(request, "payment.html", {'data': data})


def addcateringes(request):
    if request.session.has_key('admin_username'):
        if request.method == "POST":
            newdata = Cateringes(request.POST)
            try:
                newdata.save()
                return redirect(index)
            except:
                pass
        else:
            return render(request, "addcateringes.html")
    else:
        return redirect(index)


def adddecorations(request):
    if request.session.has_key('admin_username'):
        if request.method == "POST":
            newdata = Decorations(request.POST)
            try:
                newdata.save()
                return redirect(index)
            except:
                pass
        else:
            return render(request, "adddecorations.html")
    else:
        return redirect(index)


def addvenues(request):
    if request.session.has_key('admin_username'):
        return render(request, "addvenues.html")
    else:
        return redirect(index)


def addpackage(request):
    if request.session.has_key('admin_username'):
        return render(request, "addpackage.html")
    else:
        return redirect(index)


def addpayment(request):
    if request.session.has_key('admin_username'):
        return render(request, "addpayment.html")
    else:
        return redirect(index)


def addfeedback(request):
    if request.session.has_key('admin_username'):
        return render(request, "addfeedback.html")
    else:
        return redirect(index)


def addbooking(request):
    if request.session.has_key('admin_username'):
        return render(request, "addbooking.html")
    else:
        return redirect(index)


def save(request):
    # if request.POST.get('slug'):
    # if request.POST.get('slug')== 'cateringes':

    # CateringesForm(id = 10).update(data=request.POST)
    # return render(request,"adddecorations.html" )
    print(request.POST)
    if (request.POST.get('slug')):
        if (request.POST.get('slug') == 'cateringes'):
            print(request.POST)
            Cateringes.objects.filter(id=request.POST.get('id')).update(
                service=request.POST.get("service"),
                catering_type=request.POST.get("catering_type"),
                price=request.POST.get("price"))
            return redirect(request.POST.get('slug'))
        if (request.POST.get('slug') == 'venues'):
            print(request.POST)
            Venues.objects.filter(id=request.POST.get('id')).update(
                venue_name=request.POST.get("venue_name"),
                address=request.POST.get("address"),
                price=request.POST.get("price"),
                capacity_of_people=request.POST.get("capacity_of_people"))
            return redirect(request.POST.get('slug'))
        if (request.POST.get('slug') == 'decorations'):
            data = Decorations.objects.filter(
                id=request.POST.get('id')).update(
                    decoration_type=request.POST.get("decoration_type"),
                    price=request.POST.get("price"))
            return redirect(request.POST.get('slug'))
        if (request.POST.get('slug') == 'package'):
            data = Packages.objects.filter(id=request.POST.get('id')).update(
                venue_id=request.POST.get("venue_id"),
                package_details=request.POST.get("package_details"),
                cost=request.POST.get("cost"))
            return redirect(request.POST.get('slug'))
        if (request.POST.get('slug') == 'payment'):
            data = Payments.objects.filter(id=request.POST.get('id')).update(
                user_id=request.POST.get("user_id"),
                total_amount=request.POST.get("total_amount"),
                amount_paid=request.POST.get("amount_paid"),
                status=request.POST.get("status"))
            return redirect(request.POST.get('slug'))
        if (request.POST.get('slug') == 'feedback'):
            data = Feedbacks.objects.filter(id=request.POST.get('id')).update(
                user_id=request.POST.get("user_id"),
                venue_id=request.POST.get("venue_id"),
                feedback_details=request.POST.get("feedback_details"),
                date=request.POST.get("date"))
            return redirect(request.POST.get('slug'))
        if (request.POST.get('slug') == 'updatebooking'):
            data = Bookings.objects.filter(id=request.POST.get('id')).update(
                user_id=request.POST.get("user_id"),
                venue_id=request.POST.get("venue_id"),
                package_id=request.POST.get("package_id"),
                booking_cost=request.POST.get("booking_cost"),
                decoration_id=request.POST.get("decoration_id"),
                cateringes_id=request.POST.get("cateringes_id"),
                date=request.POST.get("date"),
                time_slot=request.POST.get("time_slot"))
            return redirect("booking")

    else:
        if request.POST.get("catering_type"):
            newdata = Cateringes.objects.create(
                service=request.POST.get("service"),
                catering_type=request.POST.get("catering_type"),
                price=request.POST.get("price"))
            return redirect(index)
        if request.POST.get("decoration_type"):
            newdata = Decorations.objects.create(
                decoration_type=request.POST.get("decoration_type"),
                price=request.POST.get("price"))
            return redirect(index)
        if request.POST.get("feedback_details"):
            newdata = Feedbacks.objects.create(
                user_id=request.POST.get("user_id"),
                venue_id=request.POST.get("venue_id"),
                feedback_details=request.POST.get("feedback_details"),
                date=request.POST.get("date"))
            return redirect(index)
        if request.POST.get("package_details"):
            newdata = Packages.objects.create(
                venue_id=request.POST.get("venue_id"),
                package_details=request.POST.get("package_details"),
                cost=request.POST.get("cost"))
            return redirect(index)
        if request.POST.get("total_amount"):
            newdata = Payments.objects.create(
                user_id=request.POST.get("user_id"),
                total_amount=request.POST.get("total_amount"),
                amount_paid=request.POST.get("amount_paid"),
                status=request.POST.get("status"),
                date=request.POST.get("date"))
            return redirect(index)
        if request.POST.get("venue_name"):
            newdata = Venues.objects.create(
                venue_name=request.POST.get("venue_name"),
                address=request.POST.get("address"),
                price=request.POST.get("price"),
                capacity_of_people=request.POST.get("capacity_of_people"))
            return redirect(index)
        if request.POST.get("booking_cost"):
            newdata = Bookings.objects.create(
                user_id=request.POST.get("user_id"),
                venue_id=request.POST.get("venue_id"),
                package_id=request.POST.get("package_id"),
                booking_cost=request.POST.get("booking_cost"),
                decoration_id=request.POST.get("decoration_id"),
                cateringes_id=request.POST.get("cateringes_id"),
                date=request.POST.get("date"),
                time_slot=request.POST.get("time_slot"))
            return redirect(index)

    return redirect(index)


# def update(request):
#     try:
#         Model.objects.filter(id = 223).update(field1 = 2)


def feedback(request):
    try:
        data = Feedbacks.objects.all()
    except:
        pass
    return render(request, "feedback.html", {'data': data})


def booking(request):
    try:
        data = Bookings.objects.all()
    except:
        pass
    return render(request, "booking.html", {'data': data})


def deletdata(request, did, slug):
    if (slug == 'cateringes'):
        delete = Cateringes.objects.get(id=did)
        delete.delete()
    if (slug == 'venues'):
        delete = Venues.objects.get(id=did)
        delete.delete()
    if (slug == 'decorations'):
        delete = Decorations.objects.get(id=did)
        delete.delete()
    if (slug == 'package'):
        delete = Packages.objects.get(id=did)
        delete.delete()
    if (slug == 'payment'):
        delete = Payments.objects.get(id=did)
        delete.delete()
    if (slug == 'feedback'):
        delete = Feedbacks.objects.get(id=did)
        delete.delete()
    if (slug == 'booking'):
        delete = Bookings.objects.get(id=did)
        delete.delete()
    if(slug == 'index'):
        delete = Contects.objects.get(id=did)
        delete.delete()
    # if(slug== 'Cateringes'):
    #     delete=Cateringes.objects.get(id=did)
    #     delete.delete()
    return redirect(slug)


def editdata(request, did, slug):
    if (slug == 'cateringes'):
        data = Cateringes.objects.get(id=did)
        return render(request, "addcateringes.html", {'data': data})
    if (slug == 'venues'):
        data = Venues.objects.get(id=did)
        return render(request, "addvenues.html", {'data': data})
    if (slug == 'decorations'):
        data = Decorations.objects.get(id=did)
        return render(request, "adddecorations.html", {'data': data})
    if (slug == 'package'):
        data = Packages.objects.get(id=did)
        return render(request, "addpackage.html", {'data': data})
    if (slug == 'payment'):
        data = Payments.objects.get(id=did)
        return render(request, "addpayment.html", {'data': data})
    if (slug == 'feedback'):
        data = Feedbacks.objects.get(id=did)
        return render(request, "addfeedback.html", {'data': data})
    if (slug == 'booking'):
        data = Bookings.objects.get(id=did)
        return render(request, "addbooking.html", {'data': data})

        # delete.delete()
    # if(slug== 'Cateringes'):
    #     delete=Cateringes.objects.get(id=did)
    #     delete.delete()
    return render(request, "index.html")


def contact(request):
    return render(request, "contact.html")
