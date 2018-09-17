<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>  
    <title>AngularJS ngResource Example</title>  
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }

    </style>
<!--      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->
     <link href="<c:url value='/static/css/bootstrap.min.css' />" rel="stylesheet"></link>
     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
  </head>
  <body ng-app="myApp" class="ng-cloak">
      <div class="generic-container" ng-controller="AttritionPredictionController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">Enter Share Market Trends </span></div>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.employeeAttritionPrediction.tradeId" />
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="tradeDate">Date</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.tradeDate" id="tradeDate" class="username form-control input-sm" placeholder="Enter Trade Date" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.tradeDate.$error.required">This is a required field</span>
<!--                                       <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span> -->
<!--                                       <span ng-show="myForm.uname.$invalid">This field is invalid </span> -->
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="company">Company</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.company" id="company" class="username form-control input-sm" placeholder="Enter Company Name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.company.$error.required">This is a required field</span>
                                      <span ng-show="myForm.company.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.company.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="status">Status</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.status" id="status" class="username form-control input-sm" placeholder="Enter Status" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.status.$error.required">This is a required field</span>
                                      <span ng-show="myForm.status.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.status.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="cpm">CPM</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.cpm" id="cpm" class="username form-control input-sm" placeholder="Enter CPM Value" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.cpm.$error.required">This is a required field</span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="orderType">Order Type</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.orderType" id="orderType" class="username form-control input-sm" placeholder="Enter Order Type" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.orderType.$error.required">This is a required field</span>
                                      <span ng-show="myForm.orderType.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.orderType.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="buySellValue">Buy/Sell Value</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.buySellValue" id="buySellValue" class="username form-control input-sm" placeholder="Enter Buy Sell Value" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.buySellValue.$error.required">This is a required field</span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="targetValue">Target</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.targetValue" id="targetValue" class="username form-control input-sm" placeholder="Enter Target Value" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.targetValue.$error.required">This is a required field</span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="stopLossValue">Stop Loss</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.stopLossValue" id="stopLossValue" class="username form-control input-sm" placeholder="Enter Stop Loss Value" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.stopLossValue.$error.required">This is a required field</span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="profitLossValue">Profit/Loss in %</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.profitLossValue" id="profitLossValue" class="username form-control input-sm" placeholder="Enter Profit Loss Value" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.profitLossValue.$error.required">This is a required field</span>
                                      <span ng-show="myForm.profitLossValue.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.profitLossValue.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                        
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="result">Result</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.result" id="result" class="form-control input-sm" placeholder="Enter Result. [This field is validation free]"/>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="tradeResultDate">Date Of Result</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.tradeResultDate" id="tradeResultDate" class="form-control input-sm" placeholder="Enter Date of Result. [This field is validation free]"/>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="result">Comments</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.employeeAttritionPrediction.comments" id="comments" class="form-control input-sm" placeholder="Enter Comments. [This field is validation free]"/>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-actions floatRight">
                              <input type="submit"  value="{{!ctrl.employeeAttritionPrediction.tradeId ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">List of Share Market Trends </span></div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
	                       	  <th>Trade #</th>
	                          <th>Date</th>
	                          <th>Company</th>
	                          <th>Status</th>
	                          <th>CPM</th>
	                          <th>Order Type</th>
							  <th>Buy/Sell Value</th>
							  <th>Target</th>
							  <th>Stop Loss</th>
	                          <th>Profit/Loss in %</th>
	                          <th>Result</th>		                            
	                          <th>Date Of Result</th>
	                          <th>Comments</th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="employeeAttritionPrediction in ctrl.employeeAttritionPredictions">
                              <td><span ng-bind="employeeAttritionPrediction.tradeId"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.tradeDate"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.company"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.status"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.cpm"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.orderType"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.buySellValue"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.targetValue"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.stopLossValue"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.profitLossValue"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.result"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.tradeResultDate"></span></td>
                              <td><span ng-bind="employeeAttritionPrediction.comments"></span></td>
                              <td>
                              <button type="button" ng-click="ctrl.edit(employeeAttritionPrediction.tradeId)" class="btn btn-success custom-width">Edit</button>  <button type="button" ng-click="ctrl.remove(tradeForecast.tradeId)" class="btn btn-danger custom-width">Remove</button>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
      
      <script src="<c:url value='/static/js/angular.js' />"></script>
      <script src="<c:url value='/static/js/angular-resource.js' />"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/emp_attr_prediction_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/emp_attr_prediction_controller.js' />"></script>
  </body>
</html>