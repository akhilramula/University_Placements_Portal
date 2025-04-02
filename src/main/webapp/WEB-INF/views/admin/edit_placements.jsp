<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="adminnavbar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Placement</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f7f9fc;
            font-family: 'Arial', sans-serif;
        }
        .container {
            max-width: 800px;
            margin-top: 50px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }
        h2 {
            color: #343a40;
            text-align: center;
        }
        .btn-custom {
            background-color: #007bff;
            color: white;
            border-radius: 5px;
        }
        .form-control {
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .form-group label {
            font-weight: bold;
        }
        .icon {
            margin-right: 8px;
        }
        .form-group .form-text {
            font-size: 0.9em;
            color: #6c757d;
        }
        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2 class="mb-4"><i class="fas fa-edit icon"></i> Edit Placement</h2>

        <!-- Edit Placement Form -->
        <form action="/updatePlacements" method="post">
      
            <div class="form-group">
                <label for="placement_id">Placement ID</label>
                <input type="text" name="placement_id" class="form-control" value="${placement.placement_id}" readonly>
            </div>

            <div class="form-group">
                <label for="company_name">Company Name</label>
                <input type="text" id="company_name" name="company_name" class="form-control" value="${placement.company_name}" required>
            </div>

            <div class="form-group">
                <label for="job_title">Job Title</label>
                <input type="text" id="job_title" name="job_title" class="form-control" value="${placement.job_title}" required>
            </div>

            <div class="form-group">
                <label for="job_description">Job Description</label>
                <textarea id="job_description" name="job_description" class="form-control" rows="4" required>${placement.job_description}</textarea>
            </div>

            <div class="form-group">
                <label for="job_location">Job Location</label>
                <input type="text" id="job_location" name="job_location" class="form-control" value="${placement.job_location}" required>
            </div>

            <div class="form-group">
                <label for="salary_package">Salary Package</label>
                <input type="text" id="salary_package" name="salary_package" class="form-control" value="${placement.salary_package}" required>
            </div>

            <div class="form-group">
                <label for="eligibility_description">Eligibility Criteria</label>
                <input type="text" id="eligibility_description" name="eligibility_description" class="form-control" value="${placement.eligibility_description}" required>
            </div>

            <div class="form-group">
                <label for="interview_location">Interview Location</label>
                <input type="text" id="interview_location" name="interview_location" class="form-control" value="${placement.interview_location}" required>
            </div>

            <div class="form-group">
                <label for="interview_datetime">Interview Date & Time</label>
                <input type="datetime-local" id="interview_datetime" name="interview_datetime" class="form-control" value="${placement.interview_datetime}" required>
            </div>

            <div class="btn-container">
                <button type="submit" class="btn btn-custom">
                    <i class="fas fa-save icon"></i> Save Changes
                </button>
                <a href="viewPlacements" class="btn btn-secondary">
                    <i class="fas fa-times-circle icon"></i> Cancel
                </a>
            </div>
        </form>
    </div>

    <%@ include file="../footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
