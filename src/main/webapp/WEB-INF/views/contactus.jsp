<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - University Placements Portal</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Internal CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        h1, h5 {
            color: #0d6efd;
        }

        .lead {
            font-size: 1.1rem;
        }

        .list-unstyled {
            list-style: none;
            padding: 0;
        }

        .list-unstyled li {
            margin-bottom: 10px;
        }

        .list-unstyled i {
            margin-right: 10px;
            color: #0d6efd;
        }

        form {
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .form-label {
            color: #0d6efd;
        }

        .form-control {
            border-radius: 5px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }

        .btn-primary {
            background-color: #0d6efd;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 5px;
            font-size: 1.1rem;
        }

        .btn-primary:hover {
            background-color: #0b5ed7;
        }

        footer {
            background-color: #0d6efd;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 30px;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        footer a {
            color: #ffc107;
            text-decoration: none;
        }
    </style>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <h1 class="text-primary"><i class="fas fa-envelope"></i> Contact Us</h1>
                <p class="lead">We would love to hear from you! Whether you have a question, feedback, or require support, feel free to reach out.</p>
                <ul class="list-unstyled">
                    <li><i class="fas fa-map-marker-alt"></i> Address: 123 University Lane, Knowledge City, Education State, 56789</li>
                    <li><i class="fas fa-phone-alt"></i> Phone: +1 234 567 890</li>
                    <li><i class="fas fa-envelope"></i> Email: support@universityplacements.com</li>
                </ul>
            </div>
            <div class="col-md-6">
                <h5 class="text-primary"><i class="fas fa-comment-dots"></i> Send us a message</h5>
                <form action="contactFormHandler" method="post">
                    <div class="mb-3">
                        <label for="name" class="form-label"><i class="fas fa-user"></i> Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Your name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label"><i class="fas fa-envelope"></i> Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Your email address" required>
                    </div>
                    <div class="mb-3">
                        <label for="message" class="form-label"><i class="fas fa-pencil-alt"></i> Message</label>
                        <textarea class="form-control" id="message" name="message" rows="4" placeholder="Write your message here..." required></textarea>
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i> Send Message</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
	<!--manually added footer here since there is a gap B/W footer and end of the page-->
    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 University Placements Portal. All rights reserved. | <a href="#">Privacy Policy</a></p>
    </footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
