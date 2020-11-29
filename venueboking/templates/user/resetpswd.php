{% extends './desing.php' %} {% load static %}{% block usercontent %}

<!-- /.page header -->
<div class="tp-breadcrumb">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Forget Page</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="main-container">
    <div class="container">
        <div class="col-md-offset-3 col-md-6 well-box">
            <form action="{% url 'reset' %}" method="post">
                {% csrf_token %}
                <!-- Text input-->
                {% if msg %}
                <div> {{msg}}</div>
                <div class="form-group">
                    <a href="{% url 'home' %}" class="btn btn-primary">Goto Home</a>
                </div>
                {% else %}
                <input type="hidden" value="{{otp}}" name="mainotp" id="mainotp"></input>
                <input id="id" name="id" type="number" value="{{data.id}}" hidden required>
                <div class="form-group">
                    <label class="control-label" for="email">E-mail<span class="required">*</span></label>
                    <input id="email" name="email" type="text" value="{{data.email}}" placeholder="E-Mail" class="form-control  input-md" disabled required>
                </div>
                <div class="form-group">
                    <label class="control-label" for="otp">OTP<span class="required">*</span></label>
                    <input id="otp" name="otp" type="number" value="" placeholder="OTP" class="form-control  input-md" required>
                </div>
                <div class="form-group">
                    <label class="control-label" for="newpswd">New Password<span class="required">*</span></label>
                    <input id="newpswd" name="newpswd" type="password" placeholder="New Password" class="form-control input-md" required>
                </div>

                <div class="form-group">
                    <button id="submit" name="submit" class="btn btn-primary">Submit</button>
                </div>
                {% endif %}
                <!-- <div class="form-group">
                        <button id="submit" name="submit" class="btn btn-primary">Reset Password</button>
                    </div> -->
            </form>
            <!-- Nav tabs -->
            <!-- Tab panes -->
        </div>
    </div>
</div>
{% endblock %}