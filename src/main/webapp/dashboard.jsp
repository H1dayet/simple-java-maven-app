<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-white p-4">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2>Welcome, <span class="text-info">${username}</span></h2>
            <a href="profile" class="btn btn-outline-secondary">Profile</a>
        </div>
        <h4 class="mb-3">My Tasks</h4>
        <a href="addTask.jsp" class="btn btn-success mb-3">+ Add Task</a>
        <table class="table table-bordered table-hover shadow-sm">
            <thead class="table-primary">
                <tr><th>Task</th><th>Priority</th><th>Actions</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td>Finish report</td>
                    <td><span class="badge bg-danger">High</span></td>
                    <td>
                        <a href="taskDetails.jsp" class="btn btn-info btn-sm">View</a>
                        <a href="editTask.jsp" class="btn btn-warning btn-sm">Edit</a>
                        <button class="btn btn-danger btn-sm" onclick="alert('Task deleted (not really).');">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
