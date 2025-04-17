using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Text.Json;
using System.Windows;
using System.Windows.Controls;

namespace ToDo
{
    public partial class MainWindow : Window
    {
        private ObservableCollection<TaskItem> tasks;
        private readonly string saveFile = "tasks.json";

        public MainWindow()
        {
            InitializeComponent();
            LoadTasks();
        }

        private void LoadTasks()
        {
            if (File.Exists(saveFile))
            {
                try
                {
                    string json = File.ReadAllText(saveFile);
                    tasks = JsonSerializer.Deserialize<ObservableCollection<TaskItem>>(json);
                }
                catch
                {
                    tasks = new ObservableCollection<TaskItem>();
                }
            }
            else
            {
                tasks = new ObservableCollection<TaskItem>();
            }

            TaskListBox.ItemsSource = tasks;
        }

        private void SaveTasks()
        {
            try
            {
                string json = JsonSerializer.Serialize(tasks);
                File.WriteAllText(saveFile, json);
            }
            catch
            {
                MessageBox.Show("Görevler kaydedilemedi.");
            }
        }

        private void AddTask_Click(object sender, RoutedEventArgs e)
        {
            string taskDescription = TaskTextBox.Text.Trim();
            if (string.IsNullOrWhiteSpace(taskDescription))
                return;

            DateTime? dueDateTime = null;

            if (DueDatePicker.SelectedDate.HasValue)
            {
                DateTime date = DueDatePicker.SelectedDate.Value;

                if (TimeSpan.TryParse(DueTimeTextBox.Text, out TimeSpan time))
                {
                    dueDateTime = date + time;
                }
                else
                {
                    dueDateTime = date;
                }
            }

            var newTask = new TaskItem
            {
                Name = taskDescription,
                DueDateTime = dueDateTime,
                IsCompleted = false
            };

            tasks.Add(newTask);
            SaveTasks();

            TaskTextBox.Text = "";
            DueDatePicker.SelectedDate = null;
            DueTimeTextBox.Text = "";
        }

        private void DeleteTask_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button button && button.Tag is TaskItem task)
            {
                tasks.Remove(task);
                SaveTasks();
            }
        }

        private void TaskTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            PlaceholderTextBlock.Visibility = string.IsNullOrWhiteSpace(TaskTextBox.Text) ? Visibility.Visible : Visibility.Collapsed;
        }

        private void DueTimeTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            DueTimePlaceholder.Visibility = string.IsNullOrWhiteSpace(DueTimeTextBox.Text) ? Visibility.Visible : Visibility.Collapsed;
        }

        protected override void OnClosed(EventArgs e)
        {
            SaveTasks();
            base.OnClosed(e);
        }
    }
}