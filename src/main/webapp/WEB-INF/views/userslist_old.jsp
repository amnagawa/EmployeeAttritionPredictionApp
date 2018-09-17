<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Trade Forecast Screen</title>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/static/css/bootstrap.min.css" />" rel="stylesheet"> 
<%--     <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link> --%>

    <!-- Custom CSS -->
    <link href="<c:url value="/static/css/share-trade.css" />" rel="stylesheet"> 
<%--     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link> --%>
<%-- 	<link href="<c:url value='/static/css/one-page-wonder.css' />" rel="stylesheet"> --%>
    
    <!-- Custom Fonts -->
    <link href="<c:url value="/static/css/font-awesome.min.css" />" rel="stylesheet"> 
    
	<!-- DataTables Responsive CSS -->
    <link href="<c:url value="/static/css/dataTables.responsive.css" />" rel="stylesheet">       
	
   
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"> AnandMurti</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                     <a href="<c:url value='/' />">Home</a>                   
                </li>                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a href="<c:url value='/aboutUs' />">About Us</a>                    
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="<c:url value="/logout" />"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
<!--                 <div class="sidebar-nav navbar-collapse"> -->
<!--                     <ul class="nav" id="side-menu"> -->
<!--                         <li class="sidebar-search"> -->
<!--                             <div class="input-group custom-search-form"> -->
<!--                                 <input type="text" class="form-control" placeholder="Search..."> -->
<!--                                 <span class="input-group-btn"> -->
<!--                                 <button class="btn btn-default" type="button"> -->
<!--                                     <i class="fa fa-search"></i> -->
<!--                                 </button> -->
<!--                             </span> -->
<!--                             </div>                             -->
<!--                         </li> -->
<!--                         <li class="sidebar-search"> -->
<!--                             <a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a> -->
<!--                         </li>                       -->
<!--                         <li class="sidebar-search"> -->
<!--                             <a href="tables.html"><i class="fa fa-table fa-fw"></i> Tables</a> -->
<!--                         </li>                        -->
<!--                     </ul> -->
<!--                 </div> -->
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
        <%@include file="authheader.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">                
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div>Add New User!</div>
                                </div>
                            </div>
                        </div>
                        <a href="<c:url value='/newuser' />">
                            <div class="panel-footer">
                                <span class="pull-left">Add User</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div>Add New Trade</div>
                                </div>
                            </div>
                        </div>
                        <a href="<c:url value='/newTradeForecast' />">
                            <div class="panel-footer">
                                <span class="pull-left">Add Trade Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>                
            </div>
            <!-- /.row -->
            <div class="row">                
                <!-- /.col-lg-8 -->
				<div class="col-lg-12">
                    <h1 class="page-header">List of Users</h1>
                </div>
				<!-- /.col-lg-12 -->				          
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Trade Forecast list
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                            	<thead>
						      		<tr>
								        <th>Firstname</th>
								        <th>Lastname</th>
								        <th>Email</th>
								        <th>SSO ID</th>
								        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
								        	<th width="100"></th>
								        </sec:authorize>
								        <sec:authorize access="hasRole('ADMIN')">
								        	<th width="100"></th>
								        </sec:authorize>
								        
									</tr>
						    	</thead>
					    		<tbody>
									<c:forEach items="${users}" var="user">
										<tr>
											<td>${user.firstName}</td>
											<td>${user.lastName}</td>
											<td>${user.email}</td>
											<td>${user.ssoId}</td>
										    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
												<td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
									        </sec:authorize>
									        <sec:authorize access="hasRole('ADMIN')">
												<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>
					        				</sec:authorize>
										</tr>
									</c:forEach>
			    				</tbody>
                            </table>
                            <!-- /.table-responsive -->                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-4">                   
                </div>
                <!-- /.col-lg-4 -->
                <sec:authorize access="hasRole('ADMIN')">
		            <div class="col-lg-12">
		                    <h1 class="page-header">Share Market Trends</h1>
		                </div>
						<!-- /.col-lg-12 -->				          
		                <div class="col-lg-12">
		                    <div class="panel panel-default">
		                        <div class="panel-heading">
		                            Share Market Trends Information
		                        </div>
		                        <!-- /.panel-heading -->
		                        <div class="panel-body">
		                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example1">
		                            	<thead>	                            
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
											<th>Edit</th>
				                            <th>Delete</th>
		                        		</thead>
				                        <tbody>
					                        <c:forEach var="tradeForecast" items="${listTradeForecast}">
					
					                            <tr>				                                				
													<td>${tradeForecast.tradeId}</td>
													<td>${tradeForecast.tradeDate}</td>
													<td>${tradeForecast.company}</td>
													<td>${tradeForecast.status}</td>
													<td>${tradeForecast.cpm}</td>
													<td>${tradeForecast.orderType}</td>
													<td>${tradeForecast.buySellValue}</td>
													<td>${tradeForecast.targetValue}</td>
													<td>${tradeForecast.stopLossValue}</td>
													<td>${tradeForecast.profitLossValue}</td>
													<td>${tradeForecast.result}</td>
													<td>${tradeForecast.tradeResultDate}</td>
													<td>${tradeForecast.comments}</td>								
													<td>	
														<p data-placement="top" data-toggle="tooltip" title="Edit">
														    <a href="editTradeForecast?id=${tradeForecast.tradeId}"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></a>                                        
					                                    </p>
					                                </td>
					                                
					                                <td>
					                                    <p data-placement="top" data-toggle="tooltip" title="Delete">
					                                    <a href="deleteTradeForecast?id=${tradeForecast.tradeId}"> <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete"><span class="glyphicon glyphicon-trash"></span></button></a>                                      
					                                    </p>
					                                </td>                                  
					                            </tr>
					                            </c:forEach>				                            
				                        </tbody>
		                            </table>
		                            <!-- /.table-responsive -->                           
		                        </div>
		                        <!-- /.panel-body -->
		                    </div>
		                    <!-- /.panel -->
	                </div>
		            <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
		                <div class="modal-dialog">
		                    <div class="modal-content">
		                        <div class="modal-header">
		                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
		                            <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
		                        </div>
		                        <div class="modal-body">
		
		                            <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
		
		                        </div>
		                        <div class="modal-footer ">
		                            <button type="button" class="btn btn-success deleteTradeForecast?id=${tradeForecast.tradeId}"><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
		                            <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
		                        </div>
		                    </div>
		                </div>
		            </div>
                </sec:authorize>
            </div>
            <!-- /.row -->            
                <!-- /.col-lg-12 -->
                <div class="col-lg-4">                   
                </div>
                <!-- /.col-lg-4 -->
            </div>
            <%@include file="authfooter.jsp" %> 
        </div>
        <!-- /#page-wrapper -->
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<c:url value="/static/js/jquery.min.js" />" ></script> 

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/static/js/bootstrap.min.js" />" ></script> 
    <script src="<c:url value="/static/js/jquery.dataTables.min.js" />" ></script> 
    <script src="<c:url value="/static/js/dataTables.bootstrap.min.js" />" ></script> 
    <script src="<c:url value="/static/js/dataTables.responsive.js" />" ></script> 

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
        
        $('#dataTables-example1').DataTable({
            responsive: true
        });
        
        $("#mytable #checkall").click(function () {
            if ($("#mytable #checkall").is(':checked')) {
                $("#mytable input[type=checkbox]").each(function () {
                    $(this).prop("checked", true);
                });

            } else {
                $("#mytable input[type=checkbox]").each(function () {
                    $(this).prop("checked", false);
                });
            }
        });

        $("[data-toggle=tooltip]").tooltip();
    });
    </script>

</body>

</html>
