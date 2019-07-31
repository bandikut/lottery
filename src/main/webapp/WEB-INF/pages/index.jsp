<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>

<head>
<meta contentType="text/html; charset="UTF-8"/>
<script src="https://kit.fontawesome.com/d59ba06d82.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="<c:url value="/resources/style2.css" />" type="text/css" rel="stylesheet">
<title>Welcome</title>
</head>

<body>
<div class="content">
<div class="box">
	<div class="card-deck">
		<div class="card">
		  <div class="card-body text-center">
		    <h5><span class="emphasizePositive"><i class="fas fa-arrow-up"></i></span> The biggest winner's jackpot prize</h5>
		    <h6>${biggestPrize.getSevenP()}</h6>
		    <p>
			  <a class="class="badge badge-light" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
			    Details
			  </a>
			</p>
			<div class="collapse" id="collapseExample">
			  <div class="card card-body">
			   ${biggestPrize.toStringForUsers()}
			  </div>
			</div>
		  </div>
		</div>
	
		<div class="card">
		  <div class="card-body text-center">
		     <h5><span  class="emphasizeNegative"><i class="fas fa-arrow-down"></i></span> The smallest winner's jackpot prize</h5>
		    <h6>${smallestPrize.getSevenP()}</h6>
		    <p>
			  <a class="class="badge badge-light" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
			    Details
			  </a>
			</p>
			<div class="collapse" id="collapseExample">
			  <div class="card card-body">
			   ${smallestPrize.toStringForUsers()}
			  </div>
			</div>
		  </div>
		</div>
	</div>
	<br>
	<div class="card-deck">
	
		<div class="card">
		  <div class="card-body text-center">
		    <h5><span class="emphasizePositive"><i class="fas fa-users"></i></span> The number of the most jackpot winners in a week </h5>
		    <h6>${maxWinners.getSevenM()} persons</h6>
		  </div>
		</div>
	
		<div class="card">
		  <div class="card-body text-center">
		     <h5><span  class="emphasizeNegative"><i class="far fa-meh"></i></span> The number of weeks when nobody won the jackpot</h5>
		    <h6>${nobodyWins} weeks since 1999</h6>
		  </div>
		</div>
	
	</div>
</div>

<div class="topBottomStyle">
	<h3>All lotto numbers that has been drawn</h3>
</div>

<div class="box">
<div class="dataTableStyle">
		<table class="table table-striped">
			<tr>
				<th>ID</th>
				<th>Year</th>
				<th>Week</th>
				<th>Date</th>
				<th>Winning prize</th>
				<th>Winning numbers drawn by hand</th>
			</tr>
			<c:forEach var="numbers" items="${allRecord}">
				<tr>
					<td>${numbers.id}</td>
					<td>${numbers.year}</td>
					<td>${numbers.week}</td>
					<td>${numbers.date}</td>
					<td>${numbers.sevenP}, int: ${numbers.derivedSevenP}</td>
					<td>${numbers.numbersByHand.getNum1()},
						${numbers.numbersByHand.getNum2()},
						${numbers.numbersByHand.getNum3()},
						${numbers.numbersByHand.getNum4()},
						${numbers.numbersByHand.getNum5()},
						${numbers.numbersByHand.getNum6()},
						${numbers.numbersByHand.getNum7()}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>

</div>

<div class="box">
	<div class="card-deck">
		<div class="card">
		  <div class="card-body text-center">
		    <h5><span class="emphasizePositive"><i class="fas fa-arrow-up"></i></span> The biggest winner's jackpot prize</h5>
		    <h6>${biggestPrize.getSevenP()}</h6>
		    <p>
			  <a class="class="badge badge-light" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
			    Details
			  </a>
			</p>
			<div class="collapse" id="collapseExample">
			  <div class="card card-body">
			   ${biggestPrize.toStringForUsers()}
			  </div>
			</div>
		  </div>
		</div>
	
		<div class="card">
		  <div class="card-body text-center">
		     <h5><span  class="emphasizeNegative"><i class="fas fa-arrow-down"></i></span> The smallest winner's jackpot prize</h5>
		    <h6>${smallestPrize.getSevenP()}</h6>
		    <p>
			  <a class="class="badge badge-light" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
			    Details
			  </a>
			</p>
			<div class="collapse" id="collapseExample">
			  <div class="card card-body">
			   ${smallestPrize.toStringForUsers()}
			  </div>
			</div>
		  </div>
		</div>
	</div>
</div>


<footer class="footer topBottomStyle">
		<h6>Created by Andrea Hajdu, 2019 | 
		<a href="https://github.com/bandikut"><i class="fab fa-github"></i> bandikut</a></h6>	
</footer>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
