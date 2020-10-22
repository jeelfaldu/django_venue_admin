{% load static %}
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Are you local weddding vendor provider & looking for wedding vendor website template. Wedding Vendor Responsive Website Template suitable for wedding vendor supplier, wedding agency, wedding company, wedding events etc.. ">
    <meta name="keywords" content="Wedding Vendor, wedding template, wedding website template, events, wedding party, wedding cake, wedding dress, wedding couple, couple, Wedding Venues Website Template">
    <title>Wedding Vendor | Find The Best Wedding Vendors</title>
    <!-- Bootstrap -->
    <link href="{% static 'css/front_css/bootstrap.min.css' %}" rel="stylesheet">
    <!-- Template style.css -->
    <link rel="stylesheet" type="text/css" href="{% static 'css/front_css/style.css' %}">
    <link rel="stylesheet" type="text/css" href="{% static 'css/front_css/owl.carousel.css' %}">
    <link rel="stylesheet" type="text/css" href="{% static 'css/front_css/owl.theme.css' %}">
    <link rel="stylesheet" type="text/css" href="{% static 'css/front_css/owl.transitions.css' %}">
    <!-- Font used in template -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700|Roboto:400,400italic,500,500italic,700,700italic,300italic,300' rel='stylesheet' type='text/css'>
    <!--font awesome icon -->
    <link rel="stylesheet" href="{% static 'css/front_css/font-awesome/4.4.0/css/font-awesome.min.css' %}">
    <!-- favicon icon -->
    <link rel="shortcut icon" href="{% static 'css/front_css/images/favicon.ico' %}" type="image/x-icon">
</head>

<body>
    <div class="collapse" id="searcharea">
        <!-- top search -->
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for...">
            <span class="input-group-btn">
                <button class="btn btn-primary" type="button">Search</button>
            </span>
        </div>
    </div>
    <!-- /.top search -->


    {% include "./topbar.php" %}
    {% include "./header.php" %}
    {% include "./slider.php" %}
    <div class="container">

    {% block usercontent %}

    {% endblock %}
    </div>
    {% include "./footer.php" %}


    <!-- 

    @include('layouts.frontlayout.header')

    @include('layouts.frontlayout.slider')

    @yield('content')

    @include('layouts.frontlayout.footer')
     -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="{% static 'js/front_js/jquery.min.js' %}"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="{% static 'js/front_js/bootstrap.min.js' %}"></script>
    <!-- Flex Nav Script -->
    <script src="{% static 'js/front_js/jquery.flexnav.js'%}" type="text/javascript"></script>
    <script src="{% static 'js/front_js/navigation.js' %}"></script>
    <!-- slider -->
    <script src="{% static 'js/front_js/owl.carousel.min.js' %}"></script>
    <script type="text/javascript" src="{% static 'js/front_js/slider.js' %}"></script>
    <!-- testimonial -->
    <script type="text/javascript" src="{% static 'js/front_js/testimonial.js' %}"></script>
    <!-- sticky header -->
    <script src="{% static 'js/front_js/jquery.validate.js' %}"></script>
    <script src="{% static 'js/front_js/jquery.sticky.js' %}"></script>
    <script src="{% static 'js/front_js/header-sticky.js' %}"></script>
</body>


<!-- Mirrored from jituchauhan.com/wedding/wedding-new/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Aug 2020 09:24:35 GMT -->

</html>