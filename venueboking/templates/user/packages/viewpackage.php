{% extends '../desing.php' %} {% load static %}{% block usercontent %}

<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> HOME</a> <a href="#">PACKAGE</a> <a href="#" class="current">VIEW PACKAGE</a> </div>
    <h1>Package</h1>
    <!-- @if(Session::has('flash_message_error'))
      <div class="alert alert-error alert-block">
        <button type="button" class="close" data-dismiss="alert"></button> 
          <strong>{!! session('flash_message_error') !!}</strong>
      </div>
    @endif
    @if(Session::has('flash_message_success'))
      <div class="alert alert-error alert-block">
        <button type="button" class="close" data-dismiss="alert"></button> 
          <strong>{!! session('flash_message_success') !!}</strong>
      </div>
    @endif -->
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>View Package</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>Package Id</th>
                  <th>Venue Id</th>
                  <th>Package Details</th>
                  <th>Cost</th>
                  <!-- <th>Actions</th> -->
                </tr>
              </thead>
              <tbody>
                {% for package in packages %}
                <tr class="gradeX">
                  <td>{{ package.id }}</td>
                  <td>{{ package.venue_id }}</td>
                  <td>{{ package.package_details }}</td>
                  <td>{{ package.cost }}</td>
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