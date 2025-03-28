<!DOCTYPE html>
<html>
<head>
    <title>Add Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light py-5">
    <div class="container">
        <div class="text-center mb-4">
            <h2>Create a New Task</h2>
            <p class="text-muted">Add task details and set its priority</p>
        </div>
        <form class="card p-4 mx-auto shadow-sm" style="max-width: 600px;">
            <div class="mb-3">
                <label class="form-label">Task Name:</label>
                <input type="text" name="taskName" class="form-control" placeholder="Enter task name" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Description:</label>
                <textarea name="description" class="form-control" placeholder="Enter description..." required></textarea>
            </div>
            <div class="mb-3">
                <label class="form-label">Priority:</label>
                <select name="priority" class="form-select">
                    <option value="High">High</option>
                    <option value="Medium">Medium</option>
                    <option value="Low">Low</option>
                </select>
            </div>
            <div class="d-flex justify-content-between">
                <div>
                    <input type="submit" value="Add Task" class="btn btn-primary" />
                    <input type="reset" value="Clear" class="btn btn-outline-secondary ms-2" />
                </div>
                <a href="tasks" class="btn btn-secondary">Back to Dashboard</a>
            </div>
        </form>
    </div>
</body>
</html>
