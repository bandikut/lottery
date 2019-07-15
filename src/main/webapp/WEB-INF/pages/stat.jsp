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

<title>Statok</title>
</head>
<body>

	<section class="has-background-light">
		<div class="hero-body">
		<div class="container">
			<h1  class="title">Hányszor szerepelt összesen a 13-as szám a húzásokban?</h1>
			<h2  class="subtitle">${num13}-szor</h2>
		</div>
		</div>
	</section>
	
 <section class="bgcol">
        <div class="hero-body">
            <div class="container">
                <h1 class="title fontColor"><span class="icon is-small is-left">
                        <i class="fas fa-search"></i>
                    </span>&nbsp Searching combinations of numbers </h1>
                    <h2 class="subtitle fontColor">Choose at least a number search in list</h2>

                <div class="field is-horizontal">
                    <div class="field-body">
                        <div class="field">
                            <p class="control is-danger is-expanded has-icons-left ">
                                <input class="input" id="number1" type="number" name="num1" maxlength="2" min="1"
                                    max="35" placeholder="1.">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-list-ol"></i>
                                </span>
                            </p>
                            <p class="help has-text-light">
                                This field is required
                            </p>
                        </div>


                        <div class="field">
                            <p class="control is-expanded has-icons-left">
                                <input class="input" id="number1" type="number" name="num1" maxlength="2" min="1"
                                    max="35" placeholder="2.">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-list-ol"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control is-expanded has-icons-left">
                                <input class="input" id="number1" type="number" name="num2" maxlength="2" min="1"
                                    max="35" placeholder="3.">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-list-ol"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control is-expanded has-icons-left">
                                <input class="input" id="number1" type="number" name="num3" maxlength="2" min="1"
                                    max="35" placeholder="4.">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-list-ol"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control is-expanded has-icons-left">
                                <input class="input" id="number1" type="number" name="num4" maxlength="2" min="1"
                                    max="35" placeholder="5.">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-list-ol"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control is-expanded has-icons-left">
                                <input class="input" id="number1" type="number" name="num5" maxlength="2" min="1"
                                    max="35" placeholder="5.">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-list-ol"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control is-expanded has-icons-left">
                                <input class="input" id="number1" type="number" name="num6" maxlength="2" min="1"
                                    max="35" placeholder="6.">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-list-ol"></i>
                                </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control is-expanded has-icons-left">
                                <input class="input" id="number1" type="number" name="num7" maxlength="2" min="1"
                                    max="35" placeholder="7.">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-list-ol"></i>
                                </span>
                            </p>
                        </div>


                    </div>
                </div>



                <div class="field is-horizontal">
                    <!--  <div class="field-label"> -->
                    <!-- Left empty for spacing -->
                    <!-- </div> -->
                    <div class="field-body">
                        <div class="field">
                            <div class="control">
                                <button class="button has-background-light">
                                    Search
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	
	
</body>
</html>