<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/adminhome">
            <i class="fas fa-graduation-cap"></i> University Placements Portal
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="adminhome">
                        <i class="fas fa-home"></i> Home
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="studentsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-user-graduate"></i> Students
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="studentsDropdown">
                        <li><a class="dropdown-item" href="addStudent"><i class="fas fa-user-plus"></i> Add</a></li>
                        <li><a class="dropdown-item" href="viewStudents"><i class="fas fa-users"></i> View</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="placementsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-briefcase"></i> Placements
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="placementsDropdown">
                        <li><a class="dropdown-item" href="postPlacement"><i class="fas fa-plus-circle"></i> Post</a></li>
                        <li><a class="dropdown-item" href="viewPlacements"><i class="fas fa-eye"></i> View</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/showApplications">
                        <i class="fas fa-file-alt"></i> Applications
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-danger" href="/index">
                        <i class="fas fa-sign-out-alt"></i> Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
