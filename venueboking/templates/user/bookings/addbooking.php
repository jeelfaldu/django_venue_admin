{% extends '../desing.php' %} {% load static %}{% block usercontent %}

{% with amount=0 %}
<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> HOME</a> <a href="#">BOOKING</a> <a href="#" class="current">ADD BOOKING</a> </div>
    <h1>BOOKING</h1>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
            <h5>ADD BOOKING</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="booking" name="addbooking" id="addbooking" novalidate="novalidate">
              {% csrf_token %}
              <!-- Text input -->
              <div class="control-group">
                <label class="control-label">User Id <span class="required">*</span></label>
                <div class="controls">
                  <input type="text" name="user_id" id="user_id" placeholder="User Id" class="form-control input-md" required>
                </div>
              </div>
              <!-- Text input -->
              <div class="control-group">
                <label class="control-label">Venue Id <span class="required">*</span></label>
                <div class="controls">
                  <select name="venue_id" onchange=`{{amount}}+{{ 5 }}` id="venue_id" placeholder="Venue Id" class="form-control input-md" required>
                    {% for venue in Venues %}
                    <option value="{{venue.id}}#{{venue.price}}">{{venue.venue_name}}, Price : {{venue.price}}</option>
                    {% endfor %}
                  </select>
                  <!-- <input type="text" name="venue_id" id="venue_id" placeholder="Venue Id" class="form-control input-md" required> -->
                </div>
              </div>
              <!-- Text input -->
              <div class="control-group">
                <label class="control-label">Package Id <span class="required">*</span></label>
                <div class="controls">

                  <select name="package_id" id="package_id" placeholder="Package Id" class="form-control input-md" required>
                    {% for package in Packages %}
                    <option value="{{package.id}}#{{package.cost}}">{{package.package_details}}, Price : {{package.cost}}</option>
                    {% endfor %}
                  </select>
                  <!-- <input type="text" name="package_id" id="package_id" placeholder="Package Id" class="form-control input-md" required> -->
                </div>
              </div>
              <!-- Text input -->
              <div class="control-group">
                <label class="control-label">Decoration Id <span class="required">*</span></label>
                <div class="controls">
                  <select name="decoration_id" id="decoration_id" placeholder="Decoration Id" class="form-control input-md" required>
                    {% for package in Decorations %}
                    <option value="{{package.id}}#{{package.price}}">{{package.decoration_type}}, Price : {{package.price}}</option>
                    {% endfor %}
                  </select>
                  <!-- <input type="text" name="decoration_id" id="decoration_id" placeholder="Decoration Id" class="form-control input-md" required> -->
                </div>
              </div>
              <!-- Text input -->
              <div class="control-group">
                <label class="control-label">Catering Id <span class="required">*</span></label>
                <div class="controls">
                  <select name="cateringes_id" id="cateringes_id" placeholder="Catering Id" class="form-control input-md" required>
                    {% for package in Cateringes %}
                    <option value="{{package.id}}#{{package.price}}">{{package.catering_type}}, Price : {{package.price}}</option>
                    {% endfor %}
                  </select>
                  <!-- <input type="text" name="cateringes_id" id="cateringes_id" placeholder="Catering Id" class="form-control input-md" required> -->
                </div>
                <!-- Text input -->
                <div class="control-group">
                  <label class="control-label">Booking cost <span class="required">*</span></label>
                  <div class="controls">
                    <input type="text" name="booking_cost" id="booking_cost" placeholder="Booking Cost" class="form-control input-md" required>
                  </div>
                </div>
                <!-- Date input -->
              </div>
              <div class="control-group">
                <label class="control-label">Date</label>
                <div class="controls">
                  <input type="date" name="date" id="date">
                </div>
              </div>
              <!-- Time slot input -->
              <div class="control-group">
                <label class="control-label">Time_slot</label>
                <div class="controls">
                  <input type="time" name="time_slot" id="time_slot">
                </div>
              </div>

              <div class="control-group">
                <label class="control-label">payment type</label>
                <div class="form-check">
                  <label class="form-check-label">
                    <input type="radio" class="form-check-input" id="cod" name="payment" value="COD">COD
                  </label>
                </div>
                <div class="form-check">
                  <label class="form-check-label">
                    <input type="radio" class="form-check-input" id="payment" name="payment" value="ONLINE">ONLINE
                  </label>
                </div>
                <div id="test" hidden>


                </div>
              </div>
          </div>
          <div class="form-actions">
            <input type="submit" id="submit" value="Submit Booking" class="btn btn-success">
          </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" onclick="$('#cod').click();" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <div class="col-5">
          <h3>Payment</h3>
          <label for="fname">Accepted Cards</label>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="cc-name">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="John More Doe" required="">
              <small class="text-muted">Full name as displayed on card</small>

            </div>
            <div class="col-md-6 mb-3">
              <label for="cc-number">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="1111-2222-3333-4444" required="">

            </div>
          </div>

          <div class="row">
            <div class="col-md-3 mb-3">
              <label for="cc-expiration">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="MM/YY" required="">

            </div>
            <div class="col-md-3 mb-3">
              <label for="cc-expiration">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="352" required="">

            </div>
          </div>
        </div>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" onclick="$('#submit').click();" data-dismiss="modal">Payment</button>
        <button type="button" class="btn btn-warning" onclick="$('#cod').click();" data-dismiss="modal">Cancel</button>
      </div>
    </div>

  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
  $(document).ready(function() {
    $("#payment").click(function() {
      $("#myModal").modal("show");
    });
    $("#cod").click(function() {
      $("#test").hide()
    })
  });
</script>


{% endwith %}
{% endblock %}