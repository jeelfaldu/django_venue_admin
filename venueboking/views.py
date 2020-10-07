from django.shortcuts import render,redirect

# Create your views here.
from django.http import HttpResponse
from .models import *

def login(request):
    return render(request,"login.html")

def adminlogin(request):
    if request.method == "POST":
        username =  request.POST['loginemail']
        password = request.POST['loginpassword']
        print(username,password)
        if Users.objects.filter(email=username,password=password).exists():
            request.session['admin_username']=username
           
            return redirect('/')
        else:
            print("not login")
    return render(request,'login.html')

def logout_data(request):
    try:
	    del request.session['admin_username']
	    print("logout")
    except:
        pass
    return render(request,"login.html")


def index(request):
    if request.session.has_key('admin_username'):
        try:
            data = Cateringes.objects.all()
        except:
            pass
        return render(request,"index.html",{'data' : data})
    else:
        return render(request,"login.html")

def venues(request):
    if request.session.has_key('admin_username'):
        try:
            data = Venues.objects.all()
        except:
            pass
        return render(request,"venues.html",{'data' : data})
    else:
        return render(request,"login.html")

    

def cateringes(request):
    if request.session.has_key('admin_username'):
        try:
            data = Cateringes.objects.all()
        except:
            pass
        return render(request,"cateringes.html",{'data' : data})
    else:
        return render(request,"login.html")

def decorations(request):
    try:
        data = Decorations.objects.all()
    except:
        pass
    return render(request,"decorations.html",{'data' : data})

def package(request):
    try:
        data = Packages.objects.all()
    except:
        pass
    return render(request,"package.html",{'data' : data})

def payment(request):
    try:
        data = Payments.objects.all()
    except:
        pass
    return render(request,"payment.html",{'data' : data})

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
            return render(request,"addcateringes.html")
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
            return render(request,"adddecorations.html")
    else:
        return redirect(index)

def addvenues(request):
    if request.session.has_key('admin_username'):
        return render(request,"addvenues.html")
    else:
        return redirect(index)

def addpackage(request):
    if request.session.has_key('admin_username'):
        return render(request,"addpackage.html")
    else:
        return redirect(index)

def addpayment(request):
    if request.session.has_key('admin_username'):
        return render(request,"addpayment.html")
    else:
        return redirect(index)

def addfeedback(request):
    if request.session.has_key('admin_username'):
        return render(request,"addfeedback.html")
    else:
        return redirect(index)

def addbooking(request):
    if request.session.has_key('admin_username'):
        return render(request,"addbooking.html")
    else:
        return redirect(index)

def save(request):
    # if request.POST.get('slug'):
        # if request.POST.get('slug')== 'cateringes':
    
        # CateringesForm(id = 10).update(data=request.POST)
    # return render(request,"adddecorations.html" )
    if('slug'== 'venues'):
        pass
        #     data=Venues.objects.filter(id = request.POST.get('id')).update(field1 = 2)
        #     return render(request,"addvenues.html" ,{'data':data})
        # if(slug== 'decorations'):
        #     data=Decorations.objects.filter(id = request.POST.get('id')).update(field1 = 2)
        #     return render(request,"adddecorations.html", {'data':data})
        # if(slug== 'package'):
        #     data=Packages.objects.filter(id = request.POST.get('id')).update(field1 = 2)
        #     return render(request,"addpackage.html", {'data':data})
        # if(slug== 'payment'):
        #     data=Payments.objects.filter(id = request.POST.get('id')).update(field1 = 2)
        #     return render(request,"addpayment.html" ,{'data':data})
        # if(slug== 'feedback'):
        #     data=Feedbacks.objects.filter(id = request.POST.get('id')).update(field1 = 2)
        #     return render(request,"addfeedback.html", {'data':data})
        
    else:
        if request.POST.get("catering_type"):
            newdata = Cateringes.objects.create(service=request.POST.get("service"),catering_type=request.POST.get("catering_type"),price=request.POST.get("price"))
            return redirect(index)
        if request.POST.get("decoration_type"):
            newdata = Decorations.objects.create(decoration_type=request.POST.get("decoration_type"),price=request.POST.get("price"))
            return redirect(index)
        if request.POST.get("feedback_details"):
            newdata = Feedbacks.objects.create(feedback_details=request.POST.get("feedback_details"),catering_type=request.POST.get("catering_type"),price=request.POST.get("price"))
            return redirect(index)
        if request.POST.get("package_details"):
            newdata = Packages.objects.create(venue_id=request.POST.get("venue_id"),package_details=request.POST.get("package_details"),cost=request.POST.get("cost"))
            return redirect(index)
        if request.POST.get("total_amount"):
            newdata = Payments.objects.create(user_id=request.POST.get("user_id"),total_amount=request.POST.get("total_amount"),pramount_paidice=request.POST.get("amount_paid"),status=request.POST.get("status"))
            return redirect(index)
        if request.POST.get("venue_name"):
            newdata = Venues.objects.create(service=request.POST.get("service"),catering_type=request.POST.get("catering_type"),price=request.POST.get("price"))
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
    return render(request,"feedback.html",{'data' : data})

def booking(request):
    try:
        data = Cateringes.objects.all()
    except:
        pass
    return render(request,"booking.html",{'data' : data})

def deletdata(request,did,slug):
    if(slug== 'cateringes'):
        delete=Cateringes.objects.get(id=did)
        delete.delete()
    if(slug== 'venues'):
        delete=Venues.objects.get(id=did)
        delete.delete()
    if(slug== 'decorations'):
        delete=Decorations.objects.get(id=did)
        delete.delete()
    if(slug== 'package'):
        delete=Packages.objects.get(id=did)
        delete.delete()
    if(slug== 'payment'):
        delete=Payments.objects.get(id=did)
        delete.delete()
    if(slug== 'feedback'):
        delete=Feedbacks.objects.get(id=did)
        delete.delete()
    # if(slug== 'Cateringes'):
    #     delete=Cateringes.objects.get(id=did)
    #     delete.delete()
    return redirect(slug)


def editdata(request,did,slug):
    if(slug== 'cateringes'):
        data=Cateringes.objects.get(id=did)
        return render(request,"addcateringes.html" ,{'data':data})
    if(slug== 'venues'):
        data=Venues.objects.get(id=did)
        return render(request,"addvenues.html" ,{'data':data})
    if(slug== 'decorations'):
        data=Decorations.objects.get(id=did)
        return render(request,"adddecorations.html", {'data':data})
    if(slug== 'package'):
        data=Packages.objects.get(id=did)
        return render(request,"addpackage.html", {'data':data})
    if(slug== 'payment'):
        data=Payments.objects.get(id=did)
        return render(request,"addpayment.html" ,{'data':data})
    if(slug== 'feedback'):
        data=Feedbacks.objects.get(id=did)
        return render(request,"addfeedback.html", {'data':data})
        # delete.delete()
    # if(slug== 'Cateringes'):
    #     delete=Cateringes.objects.get(id=did)
    #     delete.delete()
    return redirect(slug)