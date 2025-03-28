<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <h2>Welcome, ${username}</h2>
    <h3>My Tasks</h3>
    <button onclick="location.href='addTask.jsp'">Add Task</button>
    <table border="1">
        <tr><th>Task</th><th>Priority</th><th>Actions</th></tr>
        <tr>
            <td>Finish report</td>
            <td>High</td>
            <td>
                <button>View</button>
                <button>Edit</button>
                <button>Delete</button>
            </td>
        </tr>
    </table>
    <br>
    <button onclick="location.href='profile'">Profile</button>
</body>
</html>
