 {% load static %}
 <link href="{% static 'css/front_css/bootstrap.min.css' %}" rel="stylesheet">
 <!-- Template style.css -->
 <link rel="stylesheet" type="text/css" href="{% static 'css/front_css/style.css' %}">
 <link rel="stylesheet" type="text/css" href="{% static 'css/front_css/owl.carousel.css' %}">
 <link rel="stylesheet" type="text/css" href="{% static 'css/front_css/owl.theme.css' %}">
 <link rel="stylesheet" type="text/css" href="{% static 'css/front_css/owl.transitions.css' %}">

 <div id="content">
     <div id="content-header">
         <!-- <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> HOME /</a> <a href="#">RECEIPT</a> </div> -->
         <div class="text-center">
             <h1>INVOICE</h1>
         </div>
         <div class="row-fluid">
             <div class="container">
                 <hr>
                 <table class="table">
                     <tr>
                         <td>Name</td>
                         <td>
                             <h3> {{username}}</h3>
                         </td>
                     </tr>
                     <tr>
                         <td>Booking Date</td>
                         <td>{{data.date}}</td>
                     </tr>
                     <tr>
                         <td>Total Amount</td>
                         <td>{{data.total_amount}}</td>
                     </tr>
                     <tr>
                         <td>Paid Amount</td>
                         <td>{{data.amount_paid}}</td>
                     </tr>

                 </table>
                 <div class="btn btn-danger" id="print" onclick="document.getElementById('print').style = 'display:none';  window.print(); window.location.reload();">Print<div>
                     </div>
                 </div>
             </div>
         </div>