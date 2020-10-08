"""venue URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from venueboking import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('login', views.login, name='login'),
    path('', views.index, name='home'),
    path('adminlogin', views.adminlogin, name='adminlogin'),
    path('logout_data', views.logout_data, name='logout_data'),
    ##########################
    path('index.html', views.index, name='index'),
    path('venues.html', views.venues, name='venues'),
    path('cateringes.html', views.cateringes, name='cateringes'),
    path('decorations.html', views.decorations, name='decorations'),
    path('package.html', views.package, name='package'),
    path('payment.html', views.payment, name='payment'),
    path('feedback.html', views.feedback, name='feedback'),
    path('booking.html', views.booking, name='booking'),
    ############################
    path('addcateringes.html', views.addcateringes, name='addcateringes'),
    path('adddecorations.html', views.adddecorations, name='adddecorations'),
    path('addpackage.html', views.addpackage, name='addpackage'),
    path('addvenues.html', views.addvenues, name='addvenues'),
    path('addpayment.html', views.addpayment, name='addpayment'),
    path('addfeedback.html', views.addfeedback, name='addfeedback'),
    path('addbooking.html', views.addbooking, name='addbooking'),
    ############################
    path('save', views.save, name='save'),
    path('deletdata/<int:did>/<slug:slug>', views.deletdata, name='deletdata'),
    path('editdata/<int:did>/<slug:slug>', views.editdata, name='editdata'),
   
]
