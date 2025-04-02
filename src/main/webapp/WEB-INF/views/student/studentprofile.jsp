<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Profile</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #e9ecef;
            color: #495057;
        }
        .profile-container {
            max-width: 900px;
            margin: 30px auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }
        .profile-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .profile-header img {
            border-radius: 50%;
            width: 140px;
            height: 140px;
            object-fit: cover;
            border: 5px solid #17a2b8;
        }
        .profile-header h3 {
            margin: 15px 0;
            font-weight: 700;
            color: #343a40;
        }
        .profile-header p {
            color: #6c757d;
        }
        .profile-section {
            margin-top: 20px;
        }
        .profile-section h5 {
            color: #17a2b8;
            font-weight: 600;
            margin-bottom: 20px;
        }
        .form-control {
            border-radius: 5px;
        }
        .btn-primary {
            background-color: #17a2b8;
            border-color: #17a2b8;
        }
        .btn-primary:hover {
            background-color: #138496;
            border-color: #138496;
        }
        .form-label {
            font-weight: 500;
            color: #495057;
        }
        textarea {
            resize: none;
        }
    </style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>
    <div class="profile-container">
        <!-- Profile Header -->
        <div class="profile-header">
			<!-- Wrap the image with a link -->
			    <a href="/uploadStudentPic">
			        <img src="/uploads/${student.student_pic}" alt="Student Picture">
			    </a>
            <h3>${student.fullname}</h3>
            <p>${student.branch} | Semester: ${student.sem}</p>
        </div>

        <!-- Profile Form -->
        <div class="profile-section">
            <h5>Profile Details</h5>
            <form method="post" action="/updateProfile?student_id=${student.student_id}" enctype="multipart/formdata">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="student-id" class="form-label">Student ID</label>
                        <input type="text" class="form-control" id="student_id" name="student_id" value="${student.student_id}" readonly>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="fullname" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="fullname" name="fullname" value="${student.fullname}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" value="${student.email}">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="branch" class="form-label">Branch</label>
                        <select class="form-control" id="branch" name="branch">
                            <option value="" disabled selected>Select your branch</option>
                            <option value="CSE" ${student.branch == 'CSE' ? 'selected' : ''}>Computer Science</option>
                            <option value="ECE" ${student.branch == 'ECE' ? 'selected' : ''}>Electronics and Communication</option>
                            <option value="EEE" ${student.branch == 'EEE' ? 'selected' : ''}>Electrical and Electronics</option>
                            <option value="MECH" ${student.branch == 'MECH' ? 'selected' : ''}>Mechanical</option>
                            <option value="CIVIL" ${student.branch == 'CIVIL' ? 'selected' : ''}>Civil</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="semester" class="form-label">Semester</label>
                        <select class="form-control" id="sem" name="sem">
                            <option value="" disabled selected>Select your semester</option>
                            <option value="1" ${student.sem == '1' ? 'selected' : ''}>1st Semester</option>
                            <option value="2" ${student.sem == '2' ? 'selected' : ''}>2nd Semester</option>
                            <option value="3" ${student.sem == '3' ? 'selected' : ''}>3rd Semester</option>
                            <option value="4" ${student.sem == '4' ? 'selected' : ''}>4th Semester</option>
                            <option value="5" ${student.sem == '5' ? 'selected' : ''}>5th Semester</option>
                            <option value="6" ${student.sem == '6' ? 'selected' : ''}>6th Semester</option>
                            <option value="7" ${student.sem == '7' ? 'selected' : ''}>7th Semester</option>
                            <option value="8" ${student.sem == '8' ? 'selected' : ''}>8th Semester</option>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="mobile" class="form-label">Mobile</label>
                        <input type="text" class="form-control" id="mobile" name="mobile" value="${student.mobile}">
                    </div>
                </div>
				<!-- Password Field -->
				 <div class="row">
                   <div class="col-md-6 mb-3">
                       <label for="password" class="form-label">Password</label>
	                       <input type="text" class="form-control" id="password" name="password" value="${student.password}">
                   	</div>
               </div>
                <div class="mb-3">
                    <label for="address" class="form-label">Address</label>
                    <textarea class="form-control" id="address" name="address" rows="3">${student.address}</textarea>
                </div>
               
                <button type="submit" class="btn btn-primary mt-3 w-100">Update Profile</button>
            </form>
        </div>
    </div>
    <%@ include file="../footer.jsp" %>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
