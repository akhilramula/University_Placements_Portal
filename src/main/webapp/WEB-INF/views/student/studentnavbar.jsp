<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
	<style>
	    /* Navbar Styles */
	    .navbar {
	        background-color: #007bff; /* Primary color matching the theme */
	        padding: 15px 0;
	        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	    }

	    .navbar-container {
	        display: flex;
	        justify-content: space-between;
	        align-items: center;
	        max-width: 1200px;
	        margin: 0 auto;
	        padding: 0 20px;
	    }

	    .navbar-logo {
	        color: white;
	        font-size: 24px;
	        font-weight: bold;
	        text-decoration: none;
	        display: flex;
	        align-items: center;
	    }

	    .navbar-logo i {
	        margin-right: 10px;
	    }

	    .navbar-menu {
	        list-style-type: none;
	        display: flex;
	        margin: 0;
	        padding: 0;
	    }

	    .navbar-menu li {
	        margin-left: 20px;
	        position: relative; /* Added for dropdown support */
	    }

	    .navbar-menu a {
	        color: white;
	        text-decoration: none;
	        font-size: 16px;
	        font-weight: 500;
	        display: flex;
	        align-items: center;
	    }

	    .navbar-menu a:hover {
	        color: #0056b3;
	    }

	    .navbar-menu i {
	        margin-right: 8px;
	    }

	    /* Dropdown Styles */
	    .dropdown {
	        position: absolute;
	        top: 100%;
	        left: 0;
	        background-color: white;
	        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	        border-radius: 4px;
	        overflow: hidden;
	        display: none; /* Initially hidden */
	        z-index: 1000;
	    }

	    .dropdown a {
	        color: #007bff;
	        padding: 10px 15px;
	        white-space: nowrap;
	        display: flex;
	        align-items: center;
	    }

	    .dropdown a:hover {
	        background-color: #f1f1f1;
	        color: #0056b3;
	    }

	    .navbar-menu li:hover .dropdown {
	        display: block; /* Show dropdown on hover */
	    }

	    /* Responsive Styling */
	    @media (max-width: 768px) {
	        .navbar-container {
	            flex-direction: column;
	            align-items: flex-start;
	        }

	        .navbar-menu {
	            flex-direction: column;
	            width: 100%;
	            margin-top: 10px;
	        }

	        .navbar-menu li {
	            margin-left: 0;
	            margin-top: 10px;
	        }

	        .navbar-logo {
	            margin-bottom: 10px;
	        }
	    }
	</style>
</head>

<nav class="navbar">
    <div class="navbar-container">
        <a href="/studenthome" class="navbar-logo">
            <i class="fas fa-graduation-cap"></i> University Placements
        </a>
        <ul class="navbar-menu">
            <li><a href="/studenthome"><i class="fas fa-home"></i> Home</a></li>
            <li><a href="/profile"><i class="fas fa-user-circle"></i> Profile</a></li>
            <li>
                <a href="academics.jsp"><i class="fas fa-book"></i> Academics</a>
                <div class="dropdown">
                    <a href="/addAcademics"><i class="fas fa-plus-circle"></i> Add</a>
                    <a href="/viewAcademics"><i class="fas fa-eye"></i> View</a>
                </div>
            </li>
            <li><a href="/viewJobs"><i class="fas fa-briefcase"></i> Placements</a></li>
			<li><a href="/showApplicationPage"><i class="fas fa-file-alt"></i> Applications</a></li>
            <li><a href="/index"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
        </ul>
    </div>
</nav>
