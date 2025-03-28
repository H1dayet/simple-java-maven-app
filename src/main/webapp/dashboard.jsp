<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-white p-4">
    <div class="container">
        <h2 class="mb-4">Welcome, <span class="text-info">${username}</span></h2>
        <h4 class="mb-3">My Tasks</h4>
        <a href="addTask.jsp" class="btn btn-success mb-3">+ Add Task</a>
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr><th>Task</th><th>Priority</th><th>Actions</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td>Finish report</td>
                    <td><span class="badge bg-danger">High</span></td>
                    <td>
                        <button class="btn btn-info btn-sm">View</button>
                        <button class="btn btn-warning btn-sm">Edit</button>
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
        <a href="profile" class="btn btn-secondary">Profile</a>
    </div>
</body>
</html>