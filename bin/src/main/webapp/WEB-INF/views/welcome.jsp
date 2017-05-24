<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link rel="stylesheet" 	href="<c:url value="/resource/css/style.css" />" >
<title>Welcome</title>
</head>
<body>

	<section>
		<div class="jumbotron">
			<div class="container">
				<img
					src="<spring:url value="/resource/images/logo2.jpg"  htmlEscape="true" />"
					alt="Logo" />
				<h1>${greeting}</h1>
				<p>${tagline}</p>
				Welcome ${user.firstName} !

			</div>

			<div class="container">
				<c:choose>
					<c:when test="${empty user}">
						<a href="<spring:url value='/login' />"
							class="btn btn-default pull-right"> Login</a>
					</c:when>
					<c:otherwise>
						<a href="<spring:url value="/users/add" />"
							class="btn btn-default pull-right">Add User</a>
						<a href="<spring:url value="/users" />"
							class="btn btn-default pull-right">User List</a>
						<br>
						<a href="<spring:url value='/logout' />"
							class="btn btn-default pull-right"> Logout</a>

					</c:otherwise>
				</c:choose>
				<a href="<spring:url value='/users' />" class="btn btn-default">
					<span class="glyphicon-hand-left glyphicon"></span> Go to Community
				</a>


			</div>
			<div class="pull-left">
				<h3>${SpecialBlurb}</h3>
			</div>

		</div>
		<c:choose>
			<c:when test="${!empty user}">
				<div class="col-xs-4 col-xs-offset-4">
					<form action="<spring:url value="/sendMsg"></spring:url>"
						method="post" class="form-signin">
						<sec:csrfInput />
						<fieldset>
							<div class="form-group">
								<h3>Select users to sent message to:</h3>
								<div class="checkbox">
									<label><input type="checkbox" value="">user 1</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">user 2</label>
								</div>
								<div class="checkbox disabled">
									<label><input type="checkbox" value="" disabled>user
										3</label>
								</div>

								<div class="form-group">
									<label for="InputMessage">Message</label>
									<div class="input-group">
										<textarea name="InputMessage" id="InputMessage"
											class="form-control" rows="5" required></textarea>
										<!-- <span class="input-group-addon"><i
											class="glyphicon glyphicon-ok form-control-feedback"></i></span>-->
									</div>
								</div>
							</div>
							<input class="btn btn-lg btn-primary btn-block" type="submit"
								value="Send">
						</fieldset>
					</form>
				</div>
				</c:when>
		</c:choose>
	</section>


</body>
</html>
