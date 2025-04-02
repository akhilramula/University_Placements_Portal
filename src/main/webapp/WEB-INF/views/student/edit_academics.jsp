<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Academic Record</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-control:focus {
            box-shadow: none;
            border-color: #007bff;
        }
    </style>
</head>
<body>
	<%@ include file="studentnavbar.jsp" %>
    <div class="container">
        <div class="form-container">
            <h3 class="text-center"><i class="fa fa-edit"></i> Edit Academic Record</h3>
            <form action="updateAcademicRecord" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label class="form-label">Academic ID (Unchangeable)</label>
                    <input type="text" class="form-control" name="academic_id" value="${academics.academic_id}" readonly>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-user"></i> Student ID</label>
                    <input type="text" class="form-control" name="student_id" value="${academics.student_id}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-book"></i> Course Name</label>
                    <input type="text" class="form-control" name="course_name" value="${academics.course_name}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-calendar-alt"></i> Academic Year</label>
                    <input type="number" class="form-control" name="academic_year" value="${academics.academic_year}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-percentage"></i> Percentage / GPA</label>
                    <input type="text" class="form-control" name="percentage_or_gpa" value="${academics.percentage_or_gpa}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-file"></i> Course Certificate File</label>
                    <input type="file" class="form-control" name="certificate_pic">
					<c:if test="${not empty academics.course_certificate_file}">
					    <div class="mt-2">
					        <p>Current File:</p>
					        <img src="uploads/${academics.course_certificate_file}" alt="Course Certificate" class="img-thumbnail" style="max-width: 200px; height: auto;">
					    </div>
					</c:if>

                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save Changes</button>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>