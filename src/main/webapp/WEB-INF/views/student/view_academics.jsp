<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Academics</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        .container { margin-top: 30px; }
        .card { margin-bottom: 15px; }
        .card-header { font-weight: bold; }
        .btn-group button { margin-left: 10px; }
    </style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>

    <div class="container">
        <h2>View Academics</h2>
        <div class="card">
            <div class="card-header">
                <h4>Academic Records</h4>
            </div>
            <div class="card-body">
                <c:if test="${not empty academics}">
                    <c:forEach var="academic" items="${academics}">
                        <div class="row mb-3 align-items-center">
                            <div class="col-md-2"><strong>Student ID:</strong> ${academic.student_id}</div>
                            <div class="col-md-2"><strong>Course Name:</strong> ${academic.course_name}</div>
                            <div class="col-md-2"><strong>Academic Year:</strong> ${academic.academic_year}</div>
                            <div class="col-md-2"><strong>Percentage/GPA:</strong> ${academic.percentage_or_gpa}</div>
                            <div class="col-md-2"><strong>Course Certificate:</strong>
                                <a href="/uploads/${academic.course_certificate_file}" target="_blank">Download</a>
                            </div>
                            <div class="col-md-2 text-end">
                                <div class="btn-group">
                                    <a href="editAcademicsForm?id=${academic.academic_id}" class="btn btn-warning btn-sm">
                                        <i class="bi bi-pencil"></i> Edit
                                    </a>
                                    <a href="delete_academic?id=${academic.academic_id}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this record?');">
                                        <i class="bi bi-trash"></i> Delete
                                    </a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>
                <c:if test="${empty academics}">
                    <p>No academic records available.</p>
                </c:if>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.min.js"></script>
</body>
</html>
