
{% extends '../desing.php' %} {% load static %}{% block usercontent %}

<div id="content">
  <div id="content-header">
    <!-- <div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> HOME</a> <a href="#">VENUES</a> <a href="#" class="current">VIEW VENUES</a> </div> -->
    <div class="tp-breadcrumb">
        <div class="row">
            <div class="col-md-8">
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="">VENUES</li>
                    <li class="current">VIEW VENUES</li>
                </ol>
            </div>
        </div>
    
</div>
    <h1>Venues</h1>

  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>View Venues</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>Venue ID</th>
                  <th>Venue Name</th>
                  <th>Venue Address</th>
                  <th>Venue Price</th>
                  <th>Capacity Of People</th>
                  <!-- <th>Actions</th> -->
                </tr>
              </thead>
              <tbody>
              {% for venue in venues %}
              	
                <tr class="gradeX">
                  <td>{{ venue.id }}</td>
                  <td>{{ venue.venue_name }}</td>
                  <td>{{ venue.address }}</td>
                  <td>{{ venue.price }}</td>
                  <td>{{ venue.capacity_of_people }}</td>
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
