<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/morris/morris.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/select2/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">



</head>




<body>



      
            <!-- ???????????? -->
            <section class="content-header">
                <h1>  ????????????                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> ??????</a></li>
                    <li><a href="#">????????????</a></li>
                    <li class="active">????????????</li>
                </ol>
            </section>
            <!-- ???????????? /-->

            <!-- ???????????? -->
            <section class="content">

                <div class="box-body">

                    <!--tab???-->
                    <div class="nav-tabs-custom">

                        <!--tab???-->
                        <ul class="nav nav-tabs">
                           
                            <li>
                                <a href="#tab-treetable" data-toggle="tab">????????????</a>
                            </li>
                           
                        </ul>
                        <!--tab???/-->

                        <!--tab??????-->
           
                        
                       
                      <!--?????????-->
                            <div class="tab-pane" id="tab-treetable">
                                <table id="collapse-table1" class="table table-bordered table-hover dataTable" >
                                    <thead>
                                        <tr  style="color:red; font-size:26px; ">
                                            <th>??????</th>
                                            <th colspan="2">????????????</th>
                                            <th>????????????</th>
                                        </tr>
                                    </thead>                                    
                                    <tr style="color:red; font-size:20px;">
                                        <td>??????</td>
                                        <td colspan="2">50</td>
                                        <td>50000</td>
                                    </tr>
                            </table>        
                                    <hr/>
                                    
                            <table id="collapse-table" class="table table-bordered table-hover dataTable" >        
                            
                               
                                 <c:forEach items="${users}" var="user">
						<tr data-tt-id="0${user.id}"
							style="color: red; ' font-weight ': 'bold'; font-size: 24px;">
							<td>${user.username}</td>
							<td colspan="3">${user.address}</td>
						</tr>

						<tbody>
							<c:forEach items="${user.order}" var="od">
							   <c:if test="${not empty user.order}">
								<tr data-tt-id="1${od.id}" data-tt-parent-id="0${user.id}"
									style="color: blue; font-size: 20px;">
									<td>?????????:${od.id}</td>
									<td>????????????:${od.number}</td>
									<td>????????????:</td>
									<td>?????? ??????</td>
								</tr>
								
								
							<c:forEach items="${od.orderlist}"  var="odl">	
							  <c:if test="${not empty od.orderlist}">
								<tr data-tt-id="1-1${od.id}" data-tt-parent-id="1${od.id}"
									style="color:#999; font-size: 18px;">
									<td>??????:${odl.pid}</td>
									<td>??????:</td>
									<td>??????:${odl.buynum}</td>
									<td>????????????:</td>
								</tr>
								</c:if>
							</c:forEach>
								
								
								
								
						</c:if>
							</c:forEach>
						</tbody>
					</c:forEach>

                                </table>
                                
                                
                            </div>
                            <!--?????????/-->
                            
                            
                            
                            
                   
                             </div>
                             </div>
  
 




<script src="${pageContext.request.contextPath}/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/jQueryUI/jquery-ui.min.js"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/raphael/raphael-min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/morris/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/knob/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/daterangepicker/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/daterangepicker/daterangepicker.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/datepicker/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/fastclick/fastclick.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/iCheck/icheck.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/adminLTE/js/app.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/treeTable/jquery.treetable.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/select2/select2.full.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-markdown/js/markdown.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-markdown/js/to-markdown.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/ckeditor/ckeditor.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/input-mask/jquery.inputmask.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/chartjs/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.resize.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.pie.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/flot/jquery.flot.categories.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/ionslider/ion.rangeSlider.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-slider/bootstrap-slider.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script>
        $(document).ready(function() {
            // ?????????
            $(".select2").select2();

            // WYSIHTML5?????????
            $(".textarea").wysihtml5({
                locale: 'zh-CN'
            });
        });


        // ??????????????????
        function setSidebarActive(tagUri) {
            var liObj = $("#" + tagUri);
            if (liObj.length > 0) {
                liObj.parent().parent().addClass("active");
                liObj.addClass("active");
            }
        }



        $(document).ready(function() {

            // ???????????????
            $(".my-colorpicker1").colorpicker();
            $(".my-colorpicker2").colorpicker();

        });




        $(document).ready(function() {
            // ?????????
            $(".select2").select2();
        });




        $(document).ready(function() {

            //Date picker
            $('#datepicker').datepicker({
                autoclose: true,
                language: 'zh-CN'
            });

            // datetime picker
            $('#dateTimePicker').datetimepicker({
                format: "mm/dd/yyyy - hh:ii",
                autoclose: true,
                todayBtn: true,
                language: 'zh-CN'
            });

            //Date range picker
            $('#reservation').daterangepicker({
                locale: {
                    applyLabel: '??????',
                    cancelLabel: '??????',
                    fromLabel: '????????????',
                    toLabel: '????????????',
                    customRangeLabel: '?????????',
                    firstDay: 1
                },
                opens: 'left', // ??????????????????????????????
                separator: ' ??? '
                //showWeekNumbers : true,     // ?????????????????????
            });

            //Date range picker with time picker
            $('#reservationtime').daterangepicker({
                timePicker: true,
                timePickerIncrement: 30,
                format: 'MM/DD/YYYY h:mm A',
                locale: {
                    applyLabel: '??????',
                    cancelLabel: '??????',
                    fromLabel: '????????????',
                    toLabel: '????????????',
                    customRangeLabel: '?????????',
                    firstDay: 1
                },
                opens: 'right', // ??????????????????????????????
                separator: ' ??? '
            });

            //Date range as a button
            $('#daterange-btn').daterangepicker({
                    locale: {
                        applyLabel: '??????',
                        cancelLabel: '??????',
                        fromLabel: '????????????',
                        toLabel: '????????????',
                        customRangeLabel: '?????????',
                        firstDay: 1
                    },
                    opens: 'right', // ??????????????????????????????
                    separator: ' ??? ',
                    ranges: {
                        '??????': [moment(), moment()],
                        '??????': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        '??????7???': [moment().subtract(6, 'days'), moment()],
                        '??????30???': [moment().subtract(29, 'days'), moment()],
                        '??????': [moment().startOf('month'), moment().endOf('month')],
                        '?????????': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                    },
                    startDate: moment().subtract(29, 'days'),
                    endDate: moment()
                },
                function(start, end) {
                    $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                }
            );

        });




        $(document).ready(function() {

            /*table tree*/
            $("#collapse-table").treetable({
                expandable: true
            });

        });




        $(document).ready(function() {

            CKEDITOR.replace('editor1');

            // $(".textarea").wysihtml5({
            //     locale:'zh-CN'
            // });

            $("#markdown-textarea").markdown({
                language: 'zh',
                autofocus: false,
                savable: false
            });

        });



        $(document).ready(function() {

            // ??????????????????
            setSidebarActive("admin-dataform");

        });
    </script>







</body>
</html>