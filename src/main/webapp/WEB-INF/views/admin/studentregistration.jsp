<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration - University Placements Portal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }

        .card {
            border-radius: 10px;
        }

        .card-header {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .card-body {
            padding: 1.5rem;
        }

        .card-footer {
            background-color: #ffffff;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            border-top: 1px solid #e9ecef;
        }

        .form-label i {
            margin-right: 0.5rem;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        /* Profile Picture Upload Styling */
        .profile-pic-wrapper {
            display: flex;
            justify-content: center;
            margin-top: 1rem;
        }

        .profile-pic-wrapper input {
            font-size: 1rem;
        }
    </style>
<body>

    <%@ include file="adminnavbar.jsp" %> 

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h3><i class="fas fa-user-plus"></i> Student Registration</h3>
                    </div>
                    <div class="card-body">
                        <form action="/saveStudent" method="post" enctype="multipart/form-data">
                        
                            <div class="mb-3">
                                <label for="studentId" class="form-label"><i class="fas fa-id-card"></i> Student ID</label>
                                <input type="text" class="form-control" id="studentId" name="student_id" placeholder="Enter your student ID" required>
                            </div>

                            <div class="mb-3">
                                <label for="fullName" class="form-label"><i class="fas fa-user"></i> Full Name</label>
                                <input type="text" class="form-control" id="fullName" name="fullname" placeholder="Enter your full name" required>
                            </div>

                            <div class="mb-3">
                                <label for="email" class="form-label"><i class="fas fa-envelope"></i> Email</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                            </div>
                            
                            <div class="mb-3">
                                <label for="mobile" class="form-label"><i class="fas fa-phone"></i> Mobile Number</label>
                                <input type="tel" class="form-control" id="mobile" name="mobile" placeholder="Enter your mobile number" required>
                            </div>
                            <div class="mb-3">
                                <label for="branch" class="form-label"><i class="fas fa-building"></i> Branch</label>
                                <select class="form-select" id="branch" name="branch" required>
                                    <option value="" disabled selected>Select your branch</option>
                                    <option value="CSE">Computer Science</option>
                                    <option value="ECE">Electronics and Communication</option>
                                    <option value="EEE">Electrical and Electronics</option>
                                    <option value="MECH">Mechanical</option>
                                    <option value="CIVIL">Civil</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="semester" class="form-label"><i class="fas fa-graduation-cap"></i> Semester</label>
                                <select class="form-select" id="semester" name="sem" required>
                                    <option value="" disabled selected>Select your semester</option>
                                    <option value="1">1st Semester</option>
                                    <option value="2">2nd Semester</option>
                                    <option value="3">3rd Semester</option>
                                    <option value="4">4th Semester</option>
                                    <option value="5">5th Semester</option>
                                    <option value="6">6th Semester</option>
                                    <option value="7">7th Semester</option>
                                    <option value="8">8th Semester</option>
                                </select>
                            </div>

                            <!-- Address Field with Icon -->
                            <div class="mb-3">
                                <label for="address" class="form-label"><i class="fas fa-map-marker-alt"></i> Address</label>
                                <textarea class="form-control" id="address" name="address" rows="3" placeholder="Enter your address" required></textarea>
                            </div>

                            <!-- Profile Picture Upload Field -->
                            <div class="mb-3">
                                <label for="profilePic" class="form-label"><i class="fas fa-camera"></i> Profile Picture</label>
                                <input type="file" class="form-control" id="profilePic" name="profilePic" accept="image/*">
                            </div>

                            <div class="d-grid">
                                <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i> Register</button>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        <small>Already registered? <a href="/studentlogin">Login here</a></small>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@ include file="../footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
