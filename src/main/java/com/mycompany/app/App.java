package com.qahub.ui;

import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.dependency.CssImport;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.html.H1;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.PWA;
import com.vaadin.flow.component.dialog.Dialog;
import com.vaadin.flow.component.textfield.TextArea;
import com.vaadin.flow.component.combobox.ComboBox;

import java.util.ArrayList;
import java.util.List;

@Route("")
@PWA(name = "QAHub", shortName = "QAHub")
@CssImport("styles/shared-styles.css")
public class MainView extends VerticalLayout {

    private List<TestCase> testCases = new ArrayList<>();
    private Grid<TestCase> grid = new Grid<>(TestCase.class);

    public MainView() {
        add(new H1("QAHub - Test Case Management"));

        Button addButton = new Button("Add Test Case", event -> openAddDialog());
        add(addButton);

        grid.setColumns("title", "priority", "tags");
        grid.setItems(testCases);

        add(grid);
    }

    private void openAddDialog() {
        Dialog dialog = new Dialog();
        dialog.setWidth("400px");

        TextField titleField = new TextField("Title");
        TextArea descriptionField = new TextArea("Description");

        ComboBox<String> priorityBox = new ComboBox<>("Priority");
        priorityBox.setItems("Low", "Medium", "High");

        TextField tagsField = new TextField("Tags (comma-separated)");

        Button saveButton = new Button("Save", e -> {
            String title = titleField.getValue();
            String desc = descriptionField.getValue();
            String priority = priorityBox.getValue();
            String tags = tagsField.getValue();

            if (title.isEmpty() || priority == null) {
                Notification.show("Title and Priority are required");
                return;
            }

            TestCase testCase = new TestCase(title, desc, priority, tags);
            testCases.add(testCase);
            grid.setItems(testCases);
            dialog.close();
        });

        VerticalLayout formLayout = new VerticalLayout(titleField, descriptionField, priorityBox, tagsField, saveButton);
        dialog.add(formLayout);
        dialog.open();
    }

    public static class TestCase {
        private String title;
        private String description;
        private String priority;
        private String tags;

        public TestCase(String title, String description, String priority, String tags) {
            this.title = title;
            this.description = description;
            this.priority = priority;
            this.tags = tags;
        }

        public String getTitle() {
            return title;
        }

        public String getDescription() {
            return description;
        }

        public String getPriority() {
            return priority;
        }

        public String getTags() {
            return tags;
        }
    }
} 
