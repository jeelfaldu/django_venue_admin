{% extends '../desing.php' %} {% load static %}{% block usercontent %}


<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> HOME</a> <a href="#">FEEDBACK</a> <a href="#" class="current">ADD FEEDBACK</a> </div>
    <h1>FEEDBACK</h1>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
            <h5>ADD FEEDBACK</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="addfeedback" name="addfeedback" id="addfeedback" novalidate="novalidate">
            	{% csrf_token %}
              <!-- Text input -->
              <div class="control-group">
                <label class="control-label">User Id<span class="required">*</span></label>
                <div class="controls">
                  <input type="text" name="user_id" id="user_id" placeholder="User Id" class="form-control input-md" required>
                </div>
              </div>
              <!-- Text input -->
              <div class="control-group">
                <label class="control-label">Venue Id<span class="required">*</span></label>
                <div class="controls">
                  <input type="text" name="venue_id" id="venue_id" placeholder="Venue Id" class="form-control input-md" required>
                </div>
              </div>
              <!-- Textarea input -->
              <div class="control-group">
                <label class="control-label">FeedBack Details<span class="required">*</span></label>
                <div class="controls">
                  <textarea name="feedback_details" id="feedback_details" placeholder="Feedback" class="form-control input-md" required></textarea>
                </div>
              </div>
              <!-- Date input -->
             <div class="control-group">
                <label class="control-label">Date<span class="required">*</span></label>
                <div class="controls">
                  <input type="date" name="date" id="date" placeholder="Date" class="form-control input-md" required>
                </div>
              </div>
              <div class="form-actions">  
                <input type="submit" value="Submit Feedback" class="btn btn-success">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

{% endblock %}
