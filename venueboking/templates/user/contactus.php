{% extends './desing.php' %} {% load static %}{% block usercontent %}
<div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> HOME</a> <a href="#">CONTACT US</a> <a href="#" class="current">CONTACT US PAGE</a> </div>
        <h1>CONTACT US</h1>
    </div>
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
                        <h5>CONTACT US</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal" method="post" action="savecontacts" name="addfeedback" id="addfeedback" novalidate="novalidate">
                            {% csrf_token %}
                            <!-- Text input -->
                            <div class="form-group">
                                <label class="control-label" for="first">First Name <span class="required">*</span></label>
                                <input id="firstname" name="firstname" type="text" placeholder="First Name" class="form-control input-md" required>
                            </div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class=" control-label" for="lastname">Last Name <span class="required">*</span></label>
                                <div class=" ">
                                    <input id="lastname" name="lastname" type="text" placeholder="Last name" class="form-control input-md" required>
                                </div>
                            </div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class=" control-label" for="email">E-Mail <span class="required">*</span></label>
                                <input id="email" name="email" type="text" placeholder="E-Mail" class="form-control input-md" required>
                            </div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class=" control-label" for="phone">Phone <span class="required">*</span></label>
                                <input id="phone" name="phone" type="text" placeholder="Phone" class="form-control input-md" required>
                            </div>
                            <!-- Textarea -->
                            <div class="form-group">
                                <label class="  control-label" for="message">Write Your Message</label>
                                <textarea class="form-control" rows="6" id="message" name="message">
                                </textarea>
                            </div>
                            <!-- Button -->
                            <div class="form-group">
                                <button id="submit" name="submit" class="btn btn-primary btn-lg">SUBMIT FEEDBACK</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6 contact-info">
                    <div class="well-box">
                        <ul class="listnone">
                            <li class="address">
                                <h2><i class="fa fa-map-marker"></i>Location</h2>
                                <p>1228 Hawks Nest Lane Saint Louis, MO 63143</p>
                            </li>
                            <li class="email">
                                <h2><i class="fa fa-envelope"></i>E-Mail</h2>
                                <p>Info@weddingvendor.com</p>
                            </li>
                            <li class="call">
                                <h2><i class="fa fa-phone"></i>Contact</h2>
                                <p>+1800-123-4567</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="well-box">
                        <h2>Need Help ?</h2>
                        <p>Are you an advertiser enquiring about advertising in You &amp; Your Wedding or on weddingvendor? Please <a href="#">click here </a>to contact the advertising team.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}