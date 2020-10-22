{% extends '../desing.php' %} {% load static %}{% block usercontent %}

<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> HOME</a> <a href="#">DECORATIONS</a> <a href="#" class="current">VIEW DECORATIONS</a> </div>
    <h1>Decorations</h1>
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
            <h5>View Decorations</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>Decoration ID</th>
                  <th>Decoration Type</th>
                  <th>Decoration Price</th>
                  <!-- <th>Actions</th> -->
                </tr>
              </thead>
              <tbody>
              {% for decoration in decorations %}
              	
                <tr class="gradeX">
                  <td>{{ decorations.id }}</td>
                  <td>{{ decorations.decoration_type }}</td>
                  <td>{{ decorations.price }}</td>
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
