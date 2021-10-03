<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.model.*, java.util.*"%>
<%@page import="com.model.Product, java.util.*"%>
<%@page import="com.data.ProductDAO, com.controller.product.ProductControllerServlet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css" integrity="sha512-oHDEc8Xed4hiW6CxD7qjbnI+B07vDdX7hEPTvn9pSZO1bcRqHp8mj9pyr+8RVC2GmtEfI2Bi9Ke9Ass0as+zpg==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,500;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="./css/home.css">
  <link rel="stylesheet" href="./css/base.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/fixedheader/3.2.0/js/dataTables.fixedHeader.min.js"></script>
<title>Add Product</title>
</head>
<body>
	<c:import url="sharedView\header.jsp"></c:import>
	  <div class="app-container app-content">
        <div class="grid">
		  <div class="grid_row">
			<div class="grid_column-2">
			  <p> Add, Update, Remove,.. here</p>
			</div>
			<div class="grid_column-10">
			  <table id="example" class="display table-product" style="width:100%">
		        <thead>
		            <tr>
		                <th>Name</th>
		                <th>Description</th>
		                <th>Picture</th>
		                <th>Amount</th>
		                <th>Release Day</th>
		                <th>Price</th>
		            </tr>
		        </thead>
		        <tbody>
					<c:forEach var="product" items="${list_product}">
						<tr style="font-weight: 300; color: grey;"> 
							<th>${product.name}</th>
			                <th>${product.description}</th>
			                <th> <img style="width: 50px; height: 50px;" src="assets/img/p11.jpg"></th>
			                <th></th>
			                <th></th>
			                <th>${product.price}</th>
						</tr>
					</c:forEach>
		        </tbody>
		        <tfoot>
		            <tr>
						<th>Name</th>
		                <th>Description</th>
		                <th>Picture</th>
		                <th>Amount</th>
		                <th>Release Day</th>
		                <th>Price</th>
		            </tr>
		        </tfoot>
		    </table>
			</div>
		  </div>
        </div>
      </div>

      <c:import url="sharedView\footer.jsp"></c:import>
      	    <script type="text/javascript">
      $(document).ready(function () {
    // Setup - add a text input to each footer cell
    $('#example thead tr')
        .clone(true)
        .addClass('filters')
        .appendTo('#example thead');

    var table = $('#example').DataTable({
        orderCellsTop: true,
        fixedHeader: true,
        initComplete: function () {
            var api = this.api();

            // For each column
            api
                .columns()
                .eq(0)
                .each(function (colIdx) {
                    // Set the header cell to contain the input element
                    var cell = $('.filters th').eq(
                        $(api.column(colIdx).header()).index()
                    );
                    var title = $(cell).text();
                    $(cell).html('<input type="text" placeholder="' + title + '" />');

                    // On every keypress in this input
                    $(
                        'input',
                        $('.filters th').eq($(api.column(colIdx).header()).index())
                    )
                        .off('keyup change')
                        .on('keyup change', function (e) {
                            e.stopPropagation();

                            // Get the search value
                            $(this).attr('title', $(this).val());
                            var regexr = '({search})'; //$(this).parents('th').find('select').val();

                            var cursorPosition = this.selectionStart;
                            // Search the column for that value
                            api
                                .column(colIdx)
                                .search(
                                    this.value != ''
                                        ? regexr.replace('{search}', '(((' + this.value + ')))')
                                        : '',
                                    this.value != '',
                                    this.value == ''
                                )
                                .draw();

                            $(this)
                                .focus()[0]
                                .setSelectionRange(cursorPosition, cursorPosition);
                        });
                });
        },
    });
});
    </script>
        <script>
        function filterProduct() {
          var input, filter, table, tr, td;
          input = document.getElementById("myInput");
          filter = input.value.toUpperCase();
          table = document.getElementById("table-product");
          tr = table.getElementsByClassName("body-list");
          for(var i = 0; i < tr.length; i++) {
            td0 = tr[i].getElementsByTagName("td")[0];
            td1 = tr[i].getElementsByTagName("td")[1];
            td2 = tr[i].getElementsByTagName("td")[2];
            td4 = tr[i].getElementsByTagName("td")[4];
            if(td0 || td1 || td2 || td4) {
              var txt0 = td0.textContent || td0.innerText;
              var txt1 = td1.textContent || td1.innerText;
              var txt2 = td2.textContent || td2.innerText;
              var txt4 = td4.textContent || td4.innerText;
              if((txt0.toUpperCase().indexOf(filter) > -1) 
              || (txt1.toUpperCase().indexOf(filter) > -1) 
              || (txt2.toUpperCase().indexOf(filter) > -1)
              || (txt4.toUpperCase().indexOf(filter) > -1)) {
                tr[i].style.display = "";
              }
              else {
                tr[i].style.display = "none";
              }
            }
          }
        }
      </script>
</body>
</html>
</body>
</html>