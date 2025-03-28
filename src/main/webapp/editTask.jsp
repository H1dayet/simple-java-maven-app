<!DOCTYPE html>
<html>
<head>
    <title>Edit Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light py-5">
    <div class="container">
        <h2 class="text-center mb-4">Edit Task</h2>
        <form class="card p-4 mx-auto" style="max-width: 600px;">
            <div class="mb-3">
                <label class="form-label">Task Name:</label>
                <input type="text" name="taskName" class="form-control" value="Finish report" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Description:</label>
                <textarea name="description" class="form-control" required>Complete the weekly financial report</textarea>
            </div>
            <div class="mb-3">
                <label class="form-label">Priority:</label>
                <select name="priority" class="form-select">
                    <option selected>High</option>
                    <option>Medium</option>
                    <option>Low</option>
                </select>
            </div>
            <div class="d-flex justify-content-end">
                <input type="submit" value="Save Changes" class="btn btn-primary me-2" />
                <a href="tasks" class="btn btn-outline-secondary">Cancel</a>
            </div>
        </form>
    </div>
</body>
</html>
