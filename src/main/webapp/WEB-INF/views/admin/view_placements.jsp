<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Placements</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 1000px;
            margin-top: 50px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .btn-primary, .btn-warning, .btn-danger {
            margin: 5px;
        }
        .icon {
            margin-right: 10px;
        }
    </style>
</head>
<body>
	<%@ include file="adminnavbar.jsp" %>
    <div class="container">
        <h2 class="text-center text-primary mb-4">
            <i class="fas fa-briefcase icon"></i> View Placements
        </h2>

        <table class="table table-striped">
            <thead>
                <tr>
					<th>Placement ID</th>
                    <th>Company Name</th>
                    <th>Job Title</th>
                    <th>Job Description</th>
                    <th>Job Location</th>
                    <th>Salary Package</th>
                    <th>Eligibility</th>
					<th>Interview Location</th>
                    <th>Interview Date & Time</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through the placements list and display data dynamically -->
                <c:forEach var="placement" items="${placements}">
                    <tr>
						<td>${placement.placement_id }</td>
                        <td>${placement.company_name}</td>
                        <td>${placement.job_title}</td>
                        <td>${placement.job_description}</td>
                        <td>${placement.job_location}</td>
                        <td>${placement.salary_package}</td>
                        <td>${placement.eligibility_description}</td>
						<td>${placement.interview_location}</td>
                        <td>${placement.interview_datetime}</td>
                        <td>
                      
                            <!-- Edit Button -->
                            <a href="/editPlacementsPage?placement_id=${placement.placement_id}" class="btn btn-warning">
                                <i class="fas fa-edit"></i>
                            </a>
                            <!-- Delete Button -->
                            <a href="/deletePlacements/${placement.placement_id}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this placement?')">
                                <i class="fas fa-trash-alt"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Add Placement Button -->
        <div class="d-flex justify-content-center mt-4">
            <a href="/applyForJob?placement_id=${placement.placement_id}" class="btn btn-primary btn-lg">
                <i class="fas fa-plus-circle icon"></i> Add New Placement
            </a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
