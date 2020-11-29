{% extends './desing.php' %} {% load static %}{% block usercontent %}
<div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> HOME</a> </div>
        <h1>My Booking</h1>
    </div>
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                        <h5>Payment</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <table class="table table-bordered data-table">
                            <thead>
                                <tr>
                                    <th> ID</th>
                                    <th>Total Amout</th>
                                    <th>Paid Amout</th>
                                    <th>Get Recipt</th>
                                    <!-- <th>Actions</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                {% for item in data %}

                                <tr class="gradeX">
                                    <td>{{ item.id }}</td>
                                    <td>{{ item.total_amount }}</td>
                                    <td>{{ item.amount_paid }}</td>
                                    <td><a href="receipt/{{item.id}}">View</td>
                                </tr>
                                {% endfor %}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}