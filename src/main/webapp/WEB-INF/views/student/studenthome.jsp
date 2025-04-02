<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home - University Placements Portal</title>
    <!-- Add Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Add Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* Adjust navbar height */
        .navbar {
            height: 60px; /* Set explicit height */
            padding: 0; /* Remove default padding */
            line-height: 35px; /* Align text vertically */
        }

        .navbar-brand {
            font-size: 1.2rem; /* Adjust font size */
            line-height: 60px; /* Ensure it aligns vertically */
        }

        .nav-link {
            font-size: 1.0rem; /* Adjust link font size */
            padding: 0 1rem; /* Reduce horizontal padding */
            line-height: 60px; /* Align text vertically */
        }

        .navbar-toggler {
            margin-top: 10px; /* Center align the toggler button */
        }

        /* Body and layout */
        body {
            background: #f8f9fa;
            color: #212529;
            font-family: Arial, sans-serif;
            min-height: 100vh;
            margin: 0;
            display: flex;
            flex-direction: column;
        }

        .container {
            margin: 30px auto;
            flex: 1;
        }

        /* Card styles */
        .card {
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease-in-out;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-body {
            text-align: center;
        }

        .card-title {
            font-weight: bold;
            font-size: 1.2rem;
        }

        .card-icon {
            font-size: 3rem;
            color: #0d6efd;
            margin-bottom: 15px;
        }

        .btn-custom {
            background-color: #0d6efd;
            color: #fff;
            border: none;
        }

        .btn-custom:hover {
            background-color: #0056b3;
            color: #fff;
        }

        .heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .heading h1 {
            color: #0d6efd;
            font-weight: bold;
        }

        .heading p {
            color: #6c757d;
        }

        /* Footer styles */
        .footer {
            background-color: #e9ecef;
            color: #212529;
            text-align: center;
            padding: 10px 0;
            font-size: 0.9rem;
        }

        .footer a {
            color: #0d6efd;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>
    <div class="container">
        <div class="heading">
            <h1>Welcome, ${student.email}</h1>
            <p>Your gateway to explore and secure placements with ease.</p>
        </div>
        <div class="row g-4">
            <!-- Cards -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-user-circle card-icon"></i>
                        <h5 class="card-title">View Profile</h5>
                        <p class="card-text">Manage and update your personal details.</p>
                        <a href="/profile" class="btn btn-custom">Go to Profile</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-file-alt card-icon"></i>
                        <h5 class="card-title">View Academics</h5>
                        <p class="card-text">Upload and manage your academic records.</p>
                        <a href="/viewAcademics" class="btn btn-custom">Go to Academics</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-briefcase card-icon"></i>
                        <h5 class="card-title">Search Placements</h5>
                        <p class="card-text">Explore job opportunities and apply online.</p>
                        <a href="/viewJobs" class="btn btn-custom">Search Jobs</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-bell card-icon"></i>
                        <h5 class="card-title">Notifications</h5>
                        <p class="card-text">Stay updated with the latest job alerts.</p>
                        <a href="/student/notifications" class="btn btn-custom">View Notifications</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-question-circle card-icon"></i>
                        <h5 class="card-title">FAQs</h5>
                        <p class="card-text">Get answers to frequently asked questions.</p>
                        <a href="/student/faqs" class="btn btn-custom">View FAQs</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-sign-out-alt card-icon"></i>
                        <h5 class="card-title">Logout</h5>
                        <p class="card-text">Sign out of your account securely.</p>
                        <a href="/index" class="btn btn-custom">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2025 University Placements Portal | <a href="/contactus">Contact Us</a> | <a href="/privacy-policy">Privacy Policy</a></p>
    </footer>

    <!-- Bootstrap JS & dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
