<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        /* Navbar Styling */
        .navbar-brand {
            font-weight: bold;
            font-size: 1.5rem;
            color: #ffc107 !important;
        }
        .navbar {
            background-color: #0d6efd;
            width: 100%; /* Ensure navbar doesn't overflow */
            box-sizing: border-box; /* Include padding and borders in the element's total width */
        }
        .navbar .nav-link {
            color: white !important;
            transition: color 0.3s ease;
            display: flex;
            align-items: center;
        }
        .navbar .nav-link i {
            margin-right: 8px;
        }
        .navbar .nav-link:hover {
            text-decoration: underline;
            color: #ffc107 !important;
        }
        .navbar-toggler {
            border-color: #ffc107;
        }
        .navbar-toggler-icon {
            background-color: white;
        }

        /* Prevent horizontal overflow */
        body, html {
            overflow-x: hidden;
            margin: 0;
        }

        /* Adjust dropdown to stay within the viewport */
        .dropdown-menu {
            background-color: #0d6efd;
            max-width: 100%; /* Prevent the dropdown from going out of the viewport */
            position: absolute;
            left: 0; /* Position it to the left */
            right: auto;
        }
        
        /* Smaller tab size for dropdown items */
        .dropdown-item {
            color: black !important;
            display: flex;
            align-items: center;
            padding: 5px 10px; /* Reduced padding to decrease tab size */
            height: 30px; /* Adjust height for smaller tabs */
            font-size: 0.875rem; /* Optional: reduce font size if you want */
        }

        .dropdown-item i {
            margin-right: 8px;
        }

        .dropdown-item:hover {
            background-color: #ffc107;
            color: black !important;
        }

        /* Redesign navbar using flexbox */
        .container-fluid {
            display: flex;
            justify-content: flex-start; /* Align navbar content to the left */
            align-items: center;
            width: 100%;
            padding-left: 10px; /* Padding to adjust the navbar items */
        }

        /* Navbar Items Styling */
        .navbar-nav {
            display: flex;
            align-items: center; /* Vertically align items in the navbar */
            justify-content: flex-start; /* Align items to the left */
            margin: 0; /* Remove extra margins */
        }

        .navbar-nav .nav-item {
            padding: 0 15px; /* Spacing between the navbar items */
        }

        .navbar-nav .nav-item a {
            display: flex;
            align-items: center;
        }

        /* Handle smaller screens */
        @media (max-width: 767.98px) {
            .navbar-nav {
                flex-direction: column; /* Stack items vertically */
                text-align: left; /* Align text to the left */
            }

            .navbar-nav .nav-item {
                padding: 10px 0; /* Add padding for stacked items */
            }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/index">
                <i class="bi bi-mortarboard-fill"></i> University Placements Portal
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/index">
                            <i class="bi bi-house-door-fill"></i> Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">
                            <i class="bi bi-info-circle-fill"></i> About
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contactus">
                            <i class="bi bi-telephone-fill"></i> Contact
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="loginDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi bi-box-arrow-in-right"></i> Login
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="loginDropdown">
                            <li><a class="dropdown-item" href="/studentlogin"><i class="bi bi-person-fill"></i> Student</a></li>
                            <li><a class="dropdown-item" href="/adminlogin"><i class="bi bi-person-lock"></i> Admin</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>
