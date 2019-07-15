<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href='<c:url value="/rsc/style.css" />' type="text/css"
	rel="stylesheet" />
<link href='<c:url value="/rsc/bulma.css" />' type="text/css"
	rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>

<title>Összes szám</title>
</head>
<body>


<section class="bgImage">
	<div class="hero-body">
	<div class="container">
<div class="tile is-ancestor is-offset-1">
  <div class="tile is-vertical is-11">
  	<div class="tile">
  		<div class="tile is-parent is-vertical ">
	  		<article class="tile is-child notification is-warning ">
		        <p class="title">Rules</p>
		        <p class="subtitle">in a nutshell...</p>
		        <div class="content">
		          	<figure class="image is-4by3">
		        		<img alt="lottery" src='<c:url value="/rsc/lottery3.jpg"></c:url>' />
<!-- 		          		<img alt="lottery" src="/rsc/lottery3.jpg"> -->
		          	</figure>
		        	
		        </div>
	      </article>
	      <article class="tile is-child notification is-warning">
          <p class="title">...tiles</p>
          <p class="subtitle">Bottom tile</p>
          <div class="content">
          In Scandinavian lottery, you have to choose 7 out of 35 numbers. The numbers take part in a hand and machine draw every week, 7-7 on both draws. This will result in a cash prize if you have at least 4 results on one or both draws. The main prize is 7 hits.<br>
					Can be played in manual
          </div>
        </article>
  		</div>
  		 <div class="tile is-parent">
    	<article class="tile is-child notification is-success">
	     	 <div class="content">
		        <p class="title">Rules</p>
		        <p class="subtitle">in a nutshell</p>
		        <div class="content">
		        	In Scandinavian lottery, you have to choose 7 out of 35 numbers. The numbers take part in a hand and machine draw every week, 7-7 on both draws. This will result in a cash prize if you have at least 4 results on one or both draws. The main prize is 7 hits.<br>
					Can be played in manual and machine form, and you can request quick tips and random numbers. You can post your coupon for 1 or 5 weeks. In the case of a one-week game type, only the next draw will be valid for the next 5 draws and the next 5 draws will be valid.<br>
					In combination games, you can enter more numbers than can be played in a basic game. In this case, you must mark fixed and combination numbers. Each of the combinations will include the selected fixed numbers, and the remaining places will include the combination numbers in all possible ways.
		     
		        </div>
	      	</div>
    	</article>
  </div>
  	</div>
  </div>
</div>
	</div>
	</div>
</section>


<section class="bgImage">
	<div class="hero-body">
	<div class="container">
		<form action="stat" method="POST">
			<h1  class="title "><span class="icon is-small is-left">
	             <i class="fas fa-chart-area"></i>
	         </span> &nbsp  Statisztikákhoz
	         </h1>
			<input class="button" type="submit" value="Statisztikákhoz">
		</form>
		<br />
			<a href="<c:url value='${stat}'></c:url>"></a>
		<br />
		
	</div>
	</div>
</section>


<section class="bgcol1">
	<div class="hero-body">
	<div class="container">
		<h1  class="title ">Hányszor szerepelt összesen a 13-as szám a húzásokban?</h1>
		<h2  class="subtitle ">${num13}</h2>
	</div>
	</div>
</section>



<section class="has-background-light">
	<div class="hero-body">
	<div class="container">
	
	<form class="box" action="search" method="POST">
	<!-- 	handling execption -->
	<c:catch var ="catchException">
		<h1  class="title ">Kilistázza azokat a találatokat, ahol a számsor első szám a megadott szám</h1>
		<div class="field fieldSize-small">
			<label class="label" for="number">1. num</label>		
				<input class="input" id="number1" type="number" name="number" maxlength="2"
						min="1" max="35" required>
		</div>
		<div class="field">
			<input class="button tooltip" type="submit" value="Keres" data-tooltip="The value must be between 1 and 35">
		</div>
		<div class="field">
			<label class="label">${filteredListSize}</label>
		</div>
	
	<c:choose>
		<c:when test="${searchANumber==null}">
			<c:out value="..."></c:out>
		</c:when>
		<c:otherwise>
			<table class="table is-striped">
			<tr>
				<th>id</th>
				<th>év</th>
				<th>hét</th>
				<th>dátum</th>
				<th>1. winning numbers (by machine)</th>
				<th>2. winning numbers (by hand)</th>
			</tr>
			<c:forEach var="numbers" items="${searchANumber}">
				<tr>
					<td>${numbers.id}</td>
					<td>${numbers.year}</td>
					<td>${numbers.week}</td>
					<td>${numbers.date}</td>
					<td>${numbers.m1},${numbers.m2},${numbers.m3},
						${numbers.m4},${numbers.m5},${numbers.m6}, ${numbers.m6}</td>
					<td>${numbers.h1},${numbers.h2},${numbers.h3},
						${numbers.h4},${numbers.h5},${numbers.h6}, ${numbers.h6}</td>
				</tr>
			</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
	</c:catch>
		<c:if test = "${catchException != null}">
	         <p>The exception is : ${catchException} <br />
	         There is an exception: ${catchException.message}</p>
	 </c:if>
	</form>
	</div>
	</div>
</section>


<section class="bgcol1">
<div class="hero-body">
<div class="container">
<div class="container">
		<form class="box" action="name" method="POST">
			<div class="field">
				<label class="label" for="firstNum">A beírt számot kiírja alul</label> <input
					class="input" id="f" type="number" name="firstNum" maxlength="2"
					min="1" max="35">
			</div>
			<div class="field">
				<input class="button is-outlined" type="submit" value="submit">
			</div>
			<label class="label">${firstN}</label>
		</form>
</div>
</div>
</div>
</section>
<br />
<br />

<section>
<div class="hero-body">
<div class="container">
	<h1  class="title">Az összes találat kilistázása</h1>
	<div class="field">
		<label class="label">${lottoListSize}</label>
	</div>
	<table class="table is-striped">
		<tr>
			<th>id</th>
			<th>év</th>
			<th>hét</th>
			<th>dátum</th>
			<th>7-es találat db</th>
			<th>nyeremény</th>
			<th>6-os találat db</th>
			<th>nyeremény</th>
			<th>5-ös találat db</th>
			<th>nyeremény</th>
			<th>4-es találat db</th>
			<th>nyeremény</th>
			<th>1. winning numbers (by machine)</th>
			<th>2. winning numbers (by hand)</th>
		</tr>
		<c:forEach var="numbers" items="${lottoList}">
			<tr>
				<td>${numbers.id}</td>
				<td>${numbers.year}</td>
				<td>${numbers.week}</td>
				<td>${numbers.date}</td>
				<td>${numbers.sevenM}</td>
				<td>${numbers.sevenP}</td>
				<td>${numbers.sixM}</td>
				<td>${numbers.sixP}</td>
				<td>${numbers.fiveM}</td>
				<td>${numbers.fiveP}</td>
				<td>${numbers.fourM}</td>
				<td>${numbers.fourP}</td>
				<td>${numbers.m1},${numbers.m2},${numbers.m3},
					${numbers.m4},${numbers.m5},${numbers.m6}, ${numbers.m6}</td>
				<td>${numbers.h1},${numbers.h2},${numbers.h3},
					${numbers.h4},${numbers.h5},${numbers.h6}, ${numbers.h6}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</div>
</section>


</body>
</html>