<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Messanger</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<img src="<spring:url value="/resource/images/logo2.jpg"  htmlEscape="true" />" alt="Logo"  />
				<h1>Valued Users</h1>
				<p>Add a new one<p>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form  modelAttribute="newUser" class="form-horizontal"  >
			<fieldset>
				<legend>Add new user</legend>

				<form:errors path="*" cssClass="alert alert-danger" element="div"/>

				<div class="form-group">
					<label class="control-label col-lg-2" for="firstName">First Name</label>
					<div class="col-lg-10">
						<form:input id="firstName" path="firstName" type="text" class="form:input-large"/>
						<form:errors path="firstName" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="lastName">Last Name</label>
					<div class="col-lg-10">
						<form:input id="lastName" path="lastName" type="text" class="form:input-large"/>
						<form:errors path="lastName" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="age">Email</label>
					<div class="col-lg-10">
						<form:input id="email" path="email" type="text" class="form:input-large"/>
						<form:errors path="email" cssClass="text-danger"/>
					</div>
				</div>

 
				<div class="form-group">
					<label class="control-label col-lg-2" for="userName">User Name</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="userName" path="userCredentials.userName" type="text" class="form:input-large"/>
							<form:errors path="userCredentials.userName" cssClass="text-danger"/>
						</div>
					</div>
				</div>

	
				<div class="form-group">
					<label class="control-label col-lg-2" for="password">Password</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:password id="password" path="userCredentials.password"  class="form:input-large"/>
							<form:errors path="userCredentials.password" cssClass="text-danger"/>
						</div>
					</div>
				</div>

	
				<div class="form-group">
					<label class="control-label col-lg-2" for="verifyPassword">Verify Password</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:password  path="userCredentials.verifyPassword"  class="form:input-large"/>
							<form:errors path="userCredentials.verifyPassword" cssClass="text-danger"/>
						</div>
					</div>
				</div>

					<div class="form-group">
					<label class="control-label col-lg-2" for="authority">Role</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input  path="userCredentials.authority[0].authority" type="text" value="ROLE_USER" class="form:input-large"/>
							<form:errors path="userCredentials.authority[0].authority" cssClass="text-danger"/>
						</div>
					</div>
				</div>
 
 							<form:hidden path="userCredentials.enabled" value="TRUE"  />
 

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
					</div>
				</div>
				
			</fieldset>
		</form:form>
	</section>
</body>
</html>
