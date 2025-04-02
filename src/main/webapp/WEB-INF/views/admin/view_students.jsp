<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Students - University Placements Portal</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #007bff;
            color: white;
            font-weight: bold;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            text-align: center;
        }

        .table th {
            background-color: #f1f1f1;
            text-align: center;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .action-icons {
            font-size: 1.2rem;
        }

        .action-icons i {
            margin-right: 10px;
            cursor: pointer;
        }

        .action-icons i:hover {
            color: #0056b3;
        }

        .search-bar {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<div class="container">
    <div class="card">
        <div class="card-header">
            <h2><i class="fas fa-users"></i> View Students</h2>
        </div>
        <div class="card-body">
            <!-- Search Bar -->
            <div class="search-bar">
                <form class="d-flex" method="get" action="searchStudent">
                    <input class="form-control me-2" type="search" placeholder="Search by Name or ID" name="search" aria-label="Search">
                    <button class="btn btn-primary" type="submit"><i class="fas fa-search"></i> Search</button>
                </form>
            </div>

            <!-- Students Table -->
			<div class="table-responsive">
			    <table class="table table-striped table-bordered text-center w-100">
			        <thead>
			            <tr>
			                <th>#</th>
			                <th>Student ID</th>
			                <th>Full Name</th>
			                <th>Email</th>
			                <th>Mobile</th>
			                <th>Branch</th>
			                <th>Semester</th>
			                <th>Address</th>
			                <th>Profile Picture</th>
			                <th>Actions</th>
			            </tr>
			        </thead>
			        <tbody>
			            <!-- Use JSTL to iterate over the students list -->
			            <c:forEach var="student" items="${students}" varStatus="status">
			                <tr>
			                    <td>${status.count}</td>
			                    <td>${student.student_id}</td>
			                    <td>${student.fullname}</td>
			                    <td>${student.email}</td>
			                    <td>${student.mobile}</td>
			                    <td>${student.branch}</td>
			                    <td>${student.sem}</td>
			                    <td>${student.address}</td>
			                    <td class="text-center">
			                        <c:if test="${not empty student.student_pic}">
			                            <img src="${pageContext.request.contextPath}/uploads/${student.student_pic}" 
			                                 alt="Profile Picture" width="100" height="100" class="rounded-circle img-fluid">
			                        </c:if>
			                        <c:if test="${empty student.student_pic}">
			                            No Image
			                        </c:if>
			                    </td>
			                    
			                    <td class="action-icons">
			                        <a href="editStudent?id=${student.student_id}" class="text-warning"><i class="fas fa-edit"></i></a>
			                        <a href="deleteStudent?id=${student.student_id}" class="text-danger"><i class="fas fa-trash-alt"></i></a>
			                    </td>
			                </tr>
			            </c:forEach>
			            <!-- If no students exist -->
			            <c:if test="${empty students}">
			                <tr>
			                    <td colspan="11">No students found.</td>
			                </tr>
			            </c:if>
			        </tbody>
			    </table>
			</div>

        </div>
    </div>
</div>

<%@ include file="../footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
