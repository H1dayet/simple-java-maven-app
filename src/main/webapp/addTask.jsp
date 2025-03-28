<!DOCTYPE html>
<html>
<head>
    <title>Add Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light py-5">
    <div class="container">
        <h2 class="text-center mb-4">Create a New Task</h2>
        <form class="card p-4 mx-auto" style="max-width: 600px;">
            <div class="mb-3">
                <label class="form-label">Task Name:</label>
                <input type="text" name="taskName" class="form-control" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Description:</label>
                <textarea name="description" class="form-control" required></textarea>
            </div>
            <div class="mb-3">
                <label class="form-label">Priority:</label>
                <select name="priority" class="form-select">
                    <option value="High">High</option>
                    <option value="Medium">Medium</option>
                    <option value="Low">Low</option>
                </select>
            </div>
            <div class="d-flex justify-content-end">
                <input type="submit" value="Add Task" class="btn btn-primary me-2" />
                <input type="reset" value="Clear" class="btn btn-outline-secondary" />
            </div>
        </form>
    </div>
</body>
</html>
