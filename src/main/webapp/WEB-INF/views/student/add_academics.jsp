<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Academics</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 800px;
            margin-top: 50px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px 30px;
        }
        .form-header {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }
        .form-group label {
            font-weight: bold;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .icon {
            color: #007bff;
            margin-right: 10px;
        }
    </style>
</head>
<body>
	<%@ include file="studentnavbar.jsp" %>
    <div class="container">
        <div class="form-header">
            <i class="fas fa-user-graduate icon"></i>Add Academic Details
        </div>
        <form action="/saveAcademics" method="post" enctype="multipart/form-data">
            <div class="form-group mb-3">
                <label for="studentId"><i class="fas fa-id-card icon"></i>Student ID</label>
                <input type="text" class="form-control" id="studentId" name="student_id" placeholder="Enter Student ID" required>
            </div>
            <div class="form-group mb-3">
                <label for="courseName"><i class="fas fa-book icon"></i>Course Name</label>
                <input type="text" class="form-control" id="courseName" name="course_name" placeholder="Enter Course Name" required>
            </div>
            <div class="form-group mb-3">
                <label for="academicYear"><i class="fas fa-calendar-alt icon"></i>Academic Year</label>
                <input type="number" class="form-control" id="academicYear" name="academic_year" placeholder="Enter Academic Year (e.g., 2023)" required>
            </div>
            <div class="form-group mb-3">
                <label for="percentageOrGpa"><i class="fas fa-chart-line icon"></i>Percentage or GPA</label>
                <input type="text" class="form-control" id="percentageOrGpa" name="percentage_or_gpa" placeholder="Enter Percentage or GPA" required>
            </div>
            <div class="form-group mb-3">
                <label for="courseCertificate"><i class="fas fa-file-upload icon"></i>Upload Certificate</label>
                <input type="file" class="form-control" id="courseCertificate" name="courseCertificate" required>
            </div>
            <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-primary px-4"><i class="fas fa-save icon"></i>Save</button>
            </div>
        </form>
    </div>
	<%@ include file="../footer.jsp" %>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
