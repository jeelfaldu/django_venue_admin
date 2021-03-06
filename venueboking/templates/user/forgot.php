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
            <form action="{% url 'resetpswd' %}" method="post">
                {% csrf_token %}
                <!-- Text input-->
                <!-- Text input-->
                <div class="form-group">
                    <label class="control-label" for="email">E-mail<span class="required">*</span></label>
                    <input id="email" name="email" type="text" placeholder="E-Mail" class="form-control input-md" required>
                </div>
                <div class="form-group">
                    <button id="submit" name="submit" class="btn btn-primary">Submit</button>
                </div>
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
