<!DOCTYPE html>
<html>
<head>
    <title>Add Task</title>
</head>
<body>
    <h2>Create a New Task</h2>
    <form>
        Task Name: <input type="text" name="taskName" required /><br>
        Description: <textarea name="description" required></textarea><br>
        Priority:
        <select name="priority">
            <option value="High">High</option>
            <option value="Medium">Medium</option>
            <option value="Low">Low</option>
        </select><br>
        <input type="submit" value="Add Task" />
        <input type="reset" value="Clear" />
    </form>
</body>
</html>
