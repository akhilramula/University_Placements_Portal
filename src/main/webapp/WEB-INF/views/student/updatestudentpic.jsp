<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Student Image</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
            color: #495057;
        }
        .upload-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        .upload-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .upload-header h2 {
            font-weight: 700;
            color: #343a40;
        }
        .upload-header p {
            color: #6c757d;
        }
        .file-input-label {
            display: block;
            border: 2px dashed #17a2b8;
            border-radius: 5px;
            padding: 30px;
            text-align: center;
            cursor: pointer;
            transition: border-color 0.3s;
        }
        .file-input-label:hover {
            border-color: #138496;
        }
        .file-input-label i {
            font-size: 2rem;
            color: #17a2b8;
            margin-bottom: 10px;
        }
        .file-input {
            display: none;
        }
        .btn-upload {
            background-color: #17a2b8;
            border-color: #17a2b8;
            color: #fff;
            width: 100%;
            margin-top: 20px;
            padding: 10px;
            font-size: 1rem;
            font-weight: 500;
        }
        .btn-upload:hover {
            background-color: #138496;
            border-color: #138496;
        }
    </style>
</head>
<body>
    <div class="upload-container">
        <div class="upload-header">
            <h2>Upload Student Image</h2>
            <p><i class="fas fa-info-circle"></i> Please select an image file to upload (JPEG, PNG, or GIF)</p>
        </div>
        <form method="post" action="/updateStudentPic?student_id=${student.student_id}" enctype="multipart/form-data">
            <label for="student-pic" class="file-input-label">
                <i class="fas fa-cloud-upload-alt"></i>
                <div>Click to choose a file</div>
            </label>
            <input type="file" id="student-pic" name="student_pic" class="file-input" accept="image/*" required>
            <button type="submit" class="btn btn-upload"><i class="fas fa-upload"></i> Upload Image</button>
        </form>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
