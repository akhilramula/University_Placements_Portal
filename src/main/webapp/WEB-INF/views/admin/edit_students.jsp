<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Student Details</title>
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
	<%@ include file="adminnavbar.jsp" %>
    <div class="container">
        <div class="form-container">
            <h3 class="text-center"><i class="fa fa-user-edit"></i> Edit Student Details</h3>
            <form action="updateStudentDetails" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label class="form-label">Student ID (Unchangeable)</label>
                    <input type="text" class="form-control" name="student_id" value="${student.student_id}" readonly>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-user"></i> Full Name</label>
                    <input type="text" class="form-control" name="fullname" value="${student.fullname}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-map-marker-alt"></i> Address</label>
                    <input type="text" class="form-control" name="address" value="${student.address}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-building"></i> Branch</label>
                    <input type="text" class="form-control" name="branch" value="${student.branch}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-layer-group"></i> Semester</label>
                    <input type="text" class="form-control" name="sem" value="${student.sem}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-phone"></i> Mobile</label>
                    <input type="text" class="form-control" name="mobile" value="${student.mobile}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-envelope"></i> Email</label>
                    <input type="email" class="form-control" name="email" value="${student.email}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label"><i class="fa fa-image"></i> Student Picture</label>
                    <input type="file" class="form-control" name="profile_pic">
                    <c:if test="${not empty student.student_pic}">
                        <div class="mt-2">
                            <p>Current Picture:</p>
                            <img src="uploads/${student.student_pic}" alt="Student Picture" class="img-thumbnail" style="max-width: 200px; height: auto;">
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
