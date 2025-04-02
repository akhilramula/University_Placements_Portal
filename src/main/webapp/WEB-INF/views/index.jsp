<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>University Placements Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        .carousel-inner img {
            max-height: 500px; /* Restrict the height of images */
            object-fit: contain; /* Maintain aspect ratio without cropping */
        }
        .carousel-caption {
            background: rgba(0, 0, 0, 0.5);
            padding: 1rem;
            border-radius: 0.5rem;
        }
        .carousel-caption i {
            font-size: 2rem;
            margin-bottom: 10px;
            color: #ffc107;
        }
        .welcome-section {
            text-align: center;
            margin: 30px 0;
        }
        .feature-section {
            margin: 40px 0;
        }
        .feature-card {
            text-align: center;
            padding: 20px;
            border: 1px solid #eaeaea;
            border-radius: 8px;
            transition: 0.3s;
        }
        .feature-card:hover {
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            transform: translateY(-5px);
        }
        .feature-card i {
            font-size: 40px;
            color: #0d6efd;
            margin-bottom: 10px;
        }
        footer {
            background-color: #0d6efd;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 30px;
        }
        footer a {
            color: #ffc107;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <!-- Bootstrap Carousel -->
    <div id="placementCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#placementCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#placementCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#placementCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#placementCarousel" data-bs-slide-to="3" aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#placementCarousel" data-bs-slide-to="4" aria-label="Slide 5"></button>
            <button type="button" data-bs-target="#placementCarousel" data-bs-slide-to="5" aria-label="Slide 6"></button>
        </div>
        <div class="carousel-inner">
            <!-- Slide 1 -->
            <div class="carousel-item active">
                <img src="images/slide1.avif" class="d-block w-100" alt="Campus Recruitment">
                <div class="carousel-caption">
                    <i class="bi bi-mortarboard-fill"></i>
                    <h5>Welcome to University Placements Portal</h5>
                    <p>Your pathway to exciting career opportunities.</p>
                </div>
            </div>
            <!-- Slide 2 -->
            <div class="carousel-item">
                <img src="images/slide5.avif" class="d-block w-100" alt="Job Search">
                <div class="carousel-caption">
                    <i class="bi bi-briefcase-fill"></i>
                    <h5>Explore Job Opportunities</h5>
                    <p>Find the perfect job that matches your skills.</p>
                </div>
            </div>
            <!-- Slide 3 -->
            <div class="carousel-item">
                <img src="images/slide3.avif" class="d-block w-100" alt="Interview Preparation">
                <div class="carousel-caption">
                    <i class="bi bi-chat-dots-fill"></i>
                    <h5>Prepare for Success</h5>
                    <p>Access resources and tips for interview preparation.</p>
                </div>
            </div>
            <!-- Slide 4 -->
            <div class="carousel-item">
                <img src="images/slide7.avif" class="d-block w-100" alt="Academic Achievements">
                <div class="carousel-caption">
                    <i class="bi bi-trophy-fill"></i>
                    <h5>Showcase Your Achievements</h5>
                    <p>Highlight your academic and extracurricular accomplishments.</p>
                </div>
            </div>
            <!-- Slide 5 -->
            <div class="carousel-item">
                <img src="images/slide4.avif" class="d-block w-100" alt="Career Growth">
                <div class="carousel-caption">
                    <i class="bi bi-bar-chart-fill"></i>
                    <h5>Step into Your Dream Career</h5>
                    <p>Connect with top recruiters for a bright future.</p>
                </div>
            </div>
            <!-- Slide 6 -->
            <div class="carousel-item">
                <img src="images/slide6.avif" class="d-block w-100" alt="Collaboration">
                <div class="carousel-caption">
                    <i class="bi bi-people-fill"></i>
                    <h5>Collaborate and Succeed</h5>
                    <p>Work with peers and mentors for career guidance.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#placementCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#placementCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Welcome Section -->
    <div class="container">
        <div class="welcome-section">
            <h1>Welcome to University Placements Portal</h1>
            <p>Connecting students with top recruiters to build their dream careers.</p>
        </div>

        <!-- Feature Section -->
        <div class="feature-section row text-center">
            <div class="col-md-4">
                <div class="feature-card">
                    <i class="bi bi-search"></i>
                    <h5>Find Jobs</h5>
                    <p>Explore various jobs tailored to your skills and qualifications.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-card">
                    <i class="bi bi-bar-chart-line"></i>
                    <h5>Analyze Trends</h5>
                    <p>Track the latest placement statistics and trends in your university.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-card">
                    <i class="bi bi-chat-dots"></i>
                    <h5>Get Guidance</h5>
                    <p>Post your queries and get answers from recruiters or university admins.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 University Placements Portal. All rights reserved. | <a href="#">Privacy Policy</a></p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
