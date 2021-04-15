<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
	<div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/languages">Home</a>
        </li>
      </ul>
      <form class="d-flex" action="/">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-dark" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<div class="p-3 mb-2 bg-info text-white">
<h1>Edit Language</h1>
<div class="mb-3">
<form:form action="/languages/${language.id}" method="post" modelAttribute="language">
    <input type="hidden" name="_method" value="put">
    <p>
        <form:label for="exampleFormControlInput1" class="form-label" path="name">Name</form:label>
        <form:errors path="name"/>
        <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" path="name"/>
    </p>
    <p>
        <form:label for="exampleFormControlInput1" class="form-label" path="creator">Creator</form:label>
        <form:errors path="creator"/>
        <form:textarea type="text" class="form-control" id="exampleFormControlInput1" placeholder="" path="creator"/>
    </p>
    <p>
        <form:label for="exampleFormControlInput1" class="form-label" path="currentVersion">Current Version</form:label>
        <form:errors path="currentVersion"/>     
        <form:input class="form-control" id="exampleFormControlInput1" placeholder="" type="number" path="currentVersion"/>
    </p>    
    <input type="submit" value="Submit"/>
</form:form>  
</div> 
</div>
</body>
</html>