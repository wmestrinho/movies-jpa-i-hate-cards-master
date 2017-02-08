<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Creating a Movie</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            background-color: #006bb3;
            margin-bottom: 0;
            border-radius: 0;
        }
        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {height: 450px}
        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 100%;
        }
        /* Set black background color, white text and some padding */
        footer {
            background-color: #006bb3;
            color: white;
            padding: 15px;
        }
        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }
            .row.content {height:auto;}
        }
    </style>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Logo</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li ><a href="/secure/movies">Home</a></li>
                <li class="active"><a href="#">Create</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/open/login.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid text-center">
    <div class="row content">
        <div class="col-sm-2 sidenav">

        </div>
        <div class="col-sm-8 text-left">

           <c:if test="${msg_success != null}">
                <div class="alert alert-success">
                    <c:out value="${msg_success}"/>
                </div>
            </c:if>

            <h1>Create Your Movie</h1>
            <form class="form-horizontal" action="/secure/movie/create" method="post">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="name">Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Movie Name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="description">Description:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="description" name="description" placeholder="Description">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="category">Category:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="category" name="category" placeholder="Category">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="rating">Rating:</label>
                    <div class="col-sm-10">
                        <input type="number" step="0.1" class="form-control" id="rating" name="rating" placeholder="Rating">
                    </div>
                </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="posterUrl">Poster:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="posterUrl" name="posterUrl" placeholder="Add Poster URL">
                        </div>
                    </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="mpaarating">MPAA Rating:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="mpaarating" name="mpaaRating" placeholder="MPAA Rating">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Create</button>
                    </div>
                </div>

            </form>
        </div>
    </div>
            <div class="col-sm-2 sidenav">
        </div>
    </div>


<footer class="container-fluid text-center">
    Welcome To Skippers *copy of Web App</footer>

</body>
</html>