<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - University Placements Portal</title>
    <!-- Add Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Add Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            font-family: Arial, sans-serif;
        }

        .login-card {
            background-color: #343a40;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
            width: 400px;
        }

        .login-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .login-header h2 {
            color: #ffc107;
            font-weight: bold;
        }

        .form-control {
            background: #495057;
            color: #fff;
            border: 1px solid #6c757d;
        }

        .form-control:focus {
            background: #495057;
            color: #fff;
            border-color: #ffc107;
            box-shadow: none;
        }

        .btn-primary {
            background-color: #ffc107;
            border: none;
            color: #000;
        }

        .btn-primary:hover {
            background-color: #ffdd57;
            color: #000;
        }

        .icon {
            font-size: 2.5rem;
            color: #ffc107;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="login-card">
        <div class="login-header">
            <i class="fas fa-user-shield icon"></i>
            <h2>Admin Login</h2>
        </div>
        <form action="/validateAdmin" method="POST">
            <div class="mb-3">
                <label for="adminUsername" class="form-label">Username</label>
                <input type="text" class="form-control" id="adminUsername" name="username" placeholder="Enter your username" required>
            </div>
            <div class="mb-3">
                <label for="adminPassword" class="form-label">Password</label>
                <input type="password" class="form-control" id="adminPassword" name="password" placeholder="Enter your password" required>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary w-100">Login</button>
            </div>
        </form>
    </div>
</body>
</html>
