	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>one language</title>
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
<h1><c:out value="${language.name}"/></h1>
<p>Description: <c:out value="${language.creator}"/></p>
<p>Number of pages: <c:out value="${language.currentVersion}"/></p>
<a href="/languages/${language.id}/edit">Edit Language</a>
<form action="/languages/${language.id}/delete" method="post">
    <input type="submit" value="Delete">
</form>
</div>
</body>
</html>