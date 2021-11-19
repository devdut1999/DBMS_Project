<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="zxx">

 <style>
	.blank_row
	{
		background-color: rgb(4, 16, 89) !important;
	    height: 10px !important; /* overwrites any other rules */
	    
	}

	  #hero {
	  width: 100%;
	  height: 100vh;
	  background: url(../img/hero-bg.jpg) top center;
	  background-size: cover;
	  position: relative;
	}

	@media (min-width: 1024px) {
	  #hero {
	    background-attachment: fixed;
	  }
	}

	
	#hero .hero-container {
	  position: absolute;
	  bottom: 0;
	  top: 0;
	  left: 0;
	  right: 0;
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  flex-direction: column;
	  text-align: center;
	}

	
	
      .wave{
        position: fixed;
        bottom: 0;
        left: 0;
        height: 100%;
        width: 100%;
        z-index: -1;
      }
      
    @media screen and (max-width: 1050px){
      .container{
        grid-gap: 5rem;
      }
    }

 
#distributors {
  
  border-collapse: collapse;
  width: 100%;
}

#distributors td, #distributors th {
  border: 1px solid #ddd;
  padding: 8px;
}

#distributors tr:nth-child(even){background-color: white;}

#distributors tr:nth-child(odd){background-color: white;}
#distributors tr:hover {background-color: #ddd;}

#distributors th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: rgb(116, 116, 196);
  color: rgb(45, 45, 48);
}

.error {color:red}
</style>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="KVS Departmental Store">
    <meta name="keywords" content="html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>View Customers</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" type="text/css">
     <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/album/">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="{% static 'open-iconic/font/css/open-iconic-bootstrap.css' %}" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
   </head>


<body>
    

  
<jsp:include page="header.jsp" />

  

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                   
                    <div class="featured__item__text">
                    <table id="distributors">
                   			<tr class="blank_row">
						    	<td colspan="6"><h2 style = "color:white;">Customers</h2></td>
							</tr>
                    		  	
							  <tr>
							    <th>Customer Id</th>
							    <th>Customer Name</th>
							    <th>Street</th>
							    <th>City</th>
							    <th>State</th>
							    <th>Email</th>
							    
							  </tr>
							  
							  <!-- loop over and show the distributors -->
							 
							  
							  	<tr>
							    <td>${customer.userName}</td>
							    <td>${customer.firstName}</td>
							    <td>${customer.street}</td>
							    <td>${customer.city}</td>
							    <td>${customer.state}</td>
							    <td>${customer.email}</td>
							    
							   
					</table>
</div>
                   
                </div>
            </div>
            
        </div>
    </section>
    <!-- Featured Section End -->


    
<br>
                   <br>
		
                    
           	<section >
			  
			  <img class="wave" src="${pageContext.request.contextPath}/resources/img/dev/fashion.png">
			    
			   
			</section>
           	


    <!-- Footer Section Begin -->
     
        <jsp:include page="footer.jsp" />
      <!-- Footer Section End -->
    	
    
    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  

</body>

</html>
