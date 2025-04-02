<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home - University Placements Portal</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
			overflow:auto;
        }

        .admin-header {
            text-align: center;
            margin: 20px 0;
        }

        .admin-header h1 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #343a40;
        }

        .admin-header p {
            font-size: 1.2rem;
            color: #555;
        }

        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #343a40;
        }

        .card i {
            font-size: 40px;
            color: #007bff;
            margin-bottom: 15px;
        }

        .btn-custom {
            background-color: #007bff;
            color: white;
            font-size: 1rem;
            border-radius: 5px;
            padding: 10px 20px;
        }

        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
	<%@ include file="adminnavbar.jsp" %>
    <div class="container">
        <!-- Admin Header -->
        <div class="admin-header">
            <h1>Welcome, Admin</h1>
            <p>Manage students, placements, applications, and more!</p>
        </div>

        <!-- Admin Menu -->
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <i class="fas fa-user-graduate"></i>
                        <h5 class="card-title">Manage Students</h5>
                        <p class="card-text">Add, view, or update student information with ease.</p>
                        <a href="/viewStudents" class="btn btn-custom">Manage Students</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <i class="fas fa-briefcase"></i>
                        <h5 class="card-title">Post Placements</h5>
                        <p class="card-text">Post job openings and manage placement details.</p>
                        <a href="/postPlacement" class="btn btn-custom">Post Placements</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <i class="fas fa-file-alt"></i>
                        <h5 class="card-title">View Applications</h5>
                        <p class="card-text">View and track student job applications.</p>
                        <a href="/showApplications" class="btn btn-custom">View Applications</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <i class="fas fa-chart-bar"></i>
                        <h5 class="card-title">View Reports</h5>
                        <p class="card-text">Analyze placement statistics and generate reports.</p>
                        <a href="/view-reports" class="btn btn-custom">View Reports</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <i class="fas fa-users"></i>
                        <h5 class="card-title">Manage Queries</h5>
                        <p class="card-text">Respond to student queries about placements.</p>
                        <a href="/manage-queries" class="btn btn-custom">Manage Queries</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <i class="fas fa-sign-out-alt"></i>
                        <h5 class="card-title">Logout</h5>
                        <p class="card-text">End your session and logout securely.</p>
                        <a href="/index" class="btn btn-custom">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="../footer.jsp" %>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
	
</body>
</html>
