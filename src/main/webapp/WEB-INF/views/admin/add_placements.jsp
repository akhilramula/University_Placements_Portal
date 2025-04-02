<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Placement - University Placements Portal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 800px;
            margin: 50px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .form-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-header h2 {
            font-weight: bold;
            color: #343a40;
        }
        .btn-primary {
            background-color: #0d6efd;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0a58ca;
        }
        .form-label {
            font-weight: bold;
            color: #343a40;
        }
    </style>
</head>
<body>
	<%@ include file="adminnavbar.jsp" %>
<div class="container">
    <div class="form-container">
        <div class="form-header">
            <h2><i class="fas fa-briefcase"></i> Add Placement Details</h2>
            <p class="text-muted">Fill in the details below to add a new placement opportunity.</p>
        </div>
        <form action="/savePlacements" method="post">
            <div class="mb-3">
                <label for="companyName" class="form-label"><i class="fas fa-building"></i> Company Name</label>
                <input type="text" class="form-control" id="companyName" name="company_name" placeholder="Enter company name" required>
            </div>
            <div class="mb-3">
                <label for="jobTitle" class="form-label"><i class="fas fa-briefcase"></i> Job Title</label>
                <input type="text" class="form-control" id="jobTitle" name="job_title" placeholder="Enter job title" required>
            </div>
            <div class="mb-3">
                <label for="jobDescription" class="form-label"><i class="fas fa-align-left"></i> Job Description</label>
                <textarea class="form-control" id="jobDescription" name="job_description" rows="4" placeholder="Enter job description" required></textarea>
            </div>
            <div class="mb-3">
                <label for="jobLocation" class="form-label"><i class="fas fa-map-marker-alt"></i> Job Location</label>
                <input type="text" class="form-control" id="jobLocation" name="job_location" placeholder="Enter job location" required>
            </div>
            <div class="mb-3">
                <label for="salaryPackage" class="form-label"><i class="fas fa-money-bill-wave"></i> Salary Package</label>
                <input type="number" class="form-control" id="salaryPackage" name="salary_package" placeholder="Enter salary package" required>
            </div>
            <div class="mb-3">
                <label for="eligibilityDescription" class="form-label"><i class="fas fa-user-check"></i> Eligibility Description</label>
                <textarea class="form-control" id="eligibilityDescription" name="eligibility_description" rows="3" placeholder="Enter eligibility criteria" required></textarea>
            </div>
            <div class="mb-3">
                <label for="interviewLocation" class="form-label"><i class="fas fa-map-pin"></i> Interview Location</label>
                <input type="text" class="form-control" id="interviewLocation" name="interview_location" placeholder="Enter interview location" required>
            </div>
			<div class="mb-3">
			    <label for="interviewDatetime" class="form-label">
			        <i class="fas fa-calendar-alt"></i> Interview Date & Time
			    </label>
			    <input type="datetime-local" class="form-control" id="interviewDatetime" name="interview_datetime" required>
			</div>            
			<button type="submit" class="btn btn-primary w-100"><i class="fas fa-save"></i> Add Placement</button>	
        </form>
    </div>
</div>
<%@ include file="../footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>