@extends('layouts.frontlayout.desing')
@section('content')

<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> HOME</a> <a href="#">PAYMENT</a> <a href="#" class="current">ADD PAYMENT</a> </div>
    <h1>PAYMENT</h1>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
            <h5>ADD PAYMENT</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="{{ url('/addpayment') }}" name="addpayment" id="addpayment" novalidate="novalidate">
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
                <label class="control-label">Total amount <span class="required">*</span></label>
                <div class="controls">
                  <input type="text" name="total_amount" id="total_amount" placeholder="Total Amount" class="form-control input-md" required>
                </div>
              </div>
              <!-- Text input -->
              <div class="control-group">
                <label class="control-label">Amount Paid <span class="required">*</span></label>
                <div class="controls">
                  <input type="text" name="amount_paid" id="amount_paid" placeholder="Amount Paid" class="form-control input-md" required>
                </div>
              </div>
              <!-- Text input -->
             <div class="control-group">
                <label class="control-label">Status <span class="required">*</span></label>
                <div class="controls">
                  <input type="text" name="status" id="status" placeholder="eg:Half/Full Payment" class="form-control input-md" required>
                </div>
              </div>
              <!-- Date input -->
              <div class="control-group">
                <label class="control-label">Payment Date <span class="required">*</span></label>
                <div class="controls">
                  <input type="date" name="date" id="date" placeholder="Date" class="form-control input-md" required>
                </div>
              </div>
              <div class="form-actions">
                <input type="submit" value="Payment Done" class="btn btn-success">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

@endsection