from django.shortcuts import render,redirect

# Create your views here.
from django.http import HttpResponse
from .models import *


def index(request):
    try:
        data = Cateringes.objects.all()
    except:
        pass
    return render(request,"index.html",{'data' : data})

def venues(request):
    try:
        data = Venues.objects.all()
    except:
        pass
    return render(request,"venues.html",{'data' : data})

def cateringes(request):
    try:
        data = Cateringes.objects.all()
    except:
        pass
    return render(request,"cateringes.html",{'data' : data})

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