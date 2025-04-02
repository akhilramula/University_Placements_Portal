<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - University Placements Portal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            margin-top: 40px;
        }
        h1, h5 {
            color: #0d6efd;
        }
        .lead {
            font-size: 1.2em;
        }
        .img-fluid {
            max-height: 400px;
        }
        .shadow {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .text-primary {
            color: #0d6efd !important;
        }
        footer {
            background-color: #0d6efd;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 40px;
        }
        footer a {
            color: #ffc107;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <img src="images/aboutpage.avif" alt="About Us" class="img-fluid rounded shadow">
            </div>
            <div class="col-md-6">
                <h1 class="text-primary"><i class="fas fa-info-circle"></i> About Us</h1>
                <p class="lead">
                    Welcome to the University Placements Portal! Our platform connects students with top recruiters to help them achieve their career aspirations. 
                    We aim to simplify the recruitment process by offering a seamless and transparent platform for students and companies alike.
                </p>
                <p>
                    The portal is designed to empower students by enabling them to access placement opportunities, update their profiles, and track their progress effortlessly. 
                    We are committed to fostering professional growth and ensuring every student finds their dream job.
                </p>
                <h5><i class="fas fa-check-circle"></i> Our Mission</h5>
                <p>To bridge the gap between students and companies, providing a platform that nurtures talent and drives success.</p>
                <h5><i class="fas fa-lightbulb"></i> Our Vision</h5>
                <p>To be the most trusted placement platform for students, universities, and companies globally.</p>
            </div>
        </div>
    </div>
    <footer>
        <p>&copy; 2025 University Placements Portal. All rights reserved. | <a href="#">Privacy Policy</a></p>
    </footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
