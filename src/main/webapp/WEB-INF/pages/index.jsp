<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>

<head>
<meta contentType="text/html; charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="<c:url value="/resources/style2.css" />" type="text/css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bangers|Bowlby+One+SC|Carter+One&display=swap" rel="stylesheet">
<title>Scandinavian lottery</title>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar  navbar-expand-sm fixed-top navBarColor titles text-dark">
	<h1 id="home"><a class="navbar-brand" href="">
		<div class="media">
		<img src='<c:url value="/resources/pics/cl.svg" />' class="mr-3 mx-auto" alt="..." height="30px">
		</div>
	</a></h1>
	<ul class="navbar-nav">
    	<li class="nav-item">
      		<a class="nav-link  text-dark" href="#stats">Stats</a>
    	</li>
    	<li class="nav-item">
      		<a class="nav-link  text-dark" href="#numbers">Numbers</a>
    	</li>
    	<li class="nav-item">
      		<a class="nav-link  text-dark" href="#search">Search</a>
    	</li>
    	<li class="nav-item">
      		<a class="nav-link  text-dark" href="#about">About</a>
      	</li>
   </ul>
</nav>

<div class="topBottomStyle topMargin" id="stats">
	<h1 class="titles">Scandinavian lottery</h1>
</div>

<div class="topBottomStyle" >
	<h3 class="titles">Some stats</h3>
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
	<span id="numbers"></span>
</div>

<div class="topBottomStyle">
	<h3 class="titles"> All lotto numbers that has been drawn</h3>
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



<div class="box">
	<div class="card-deck">
		<div class="card">
		  <div class="card-body text-center">
		     <h5><span  class="emphasizePositive"><i class="fas fa-pizza-slice"></i></span> The 7 most frequent number</h5>
			       <c:forEach items="${freq}" var="f" begin="29" end="35">
			    		<span class="strong">${f.key}</span> (x ${f.value}),
	 				</c:forEach>
		  </div>
		</div>
		
		<div class="card">
		  <div class="card-body text-center">
		     <h5><span  class="emphasizeNegative"><i class="fas fa-lemon"></i></span> The 7 least frequent number</h5>
				 <c:forEach items="${freq}" var="f" begin="0" end="6">
			    		<span class="strong">${f.key}</span> (x ${f.value}),
	 			</c:forEach>
		  </div>
		</div>
	</div>
	<span id="search"></span>
</div>

<div class="topBottomStyle">
	<h3 class="titles"> Search</h3>
</div>

<div class="box">
<h4>Let's find out whether the given combination has been drawn </h4>
<form:form class="form-group" method="post" modelAttribute="lNumbers" action="${pageContext.request.contextPath}/search">
	<fieldset>
		<div class="form-group">
			<label for="n1">1. number</label>
			<input type="number" min="1" max="35" required="required" id="n1">
		</div>
		<div class="form-group">
			<label for="n2">2. number</label>
			<input type="number" min="1" max="35" id="n2">
		</div>
		<div class="form-group">
			<label for="n3">3. number</label>
			<input type="number" min="1" max="35" id="n3">
		</div>
		<div class="form-group">
			<label for="n4">4. number</label>
			<input type="number" min="1" max="35" id="n4">
		</div>
		<div class="form-group">
			<label for="n5">5. number</label>
			<input type="number" min="1" max="35" id="n5">
		</div>
		<div class="form-group">
			<label for="n6">6. number</label>
			<input type="number" min="1" max="35" id="n6">
		</div>
		<div class="form-group">
			<label for="n7">7. number</label>
			<input type="number" min="1" max="35" id="n7"><br><br>
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-warning">Check</button>
		</div>
	</fieldset>
</form:form>
</div>

<div class="topBottomStyle">
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-1">
			<div class="media">
	  			<img src='<c:url value="/resources/pics/j.png" />' class="mr-3 mx-auto" alt="..." height="45px">
			</div>
		</div>
		<div class="col-sm-1">
			<div class="media">
	  			<img src='<c:url value="/resources/pics/my.png" />' class="mr-3 mx-auto" alt="..." height="45px">
			</div>
		</div>
		<div class="col-sm-1">
			<div class="media">
	  			<img src='<c:url value="/resources/pics/sp.png" />' class="mr-3 mx-auto" alt="..." height="45px">
			</div>
		</div>
		<div class="col-sm-1">
			<div class="media">
	  			<img src='<c:url value="/resources/pics/bs.png" />' class="mr-3 mx-auto" alt="..." height="45px">
			</div>
		</div>
		<div class="col-sm-4"></div>
</div>
</div>

<footer class="topBottomStyle" id="about">
		<h6 >Created by Andrea Hajdu, 2019 | 
		<a href="https://github.com/bandikut"><i class="fab fa-github"></i> bandikut</a></h6>	
</footer>

	<script src="https://kit.fontawesome.com/d59ba06d82.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
