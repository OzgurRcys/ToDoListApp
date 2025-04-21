using System;
using System.Windows;
using System.Windows.Controls;

namespace ToDo
{
    public partial class EditTaskWindow : Window
    {
        public TaskItem Task { get; private set; }

        public EditTaskWindow(TaskItem task)
        {
            InitializeComponent();
            Task = task;

            NameTextBox.Text = Task.Name;
            if (Task.DueDateTime.HasValue)
            {
                DueDatePicker.SelectedDate = Task.DueDateTime.Value.Date;
                DueTimeTextBox.Text = Task.DueDateTime.Value.ToString("HH:mm");
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            Task.Name = NameTextBox.Text;

            if (DateTime.TryParse(DueTimeTextBox.Text, out DateTime time) && DueDatePicker.SelectedDate.HasValue)
            {
                var date = DueDatePicker.SelectedDate.Value;
                Task.DueDateTime = new DateTime(date.Year, date.Month, date.Day, time.Hour, time.Minute, 0);
            }
            else
            {
                Task.DueDateTime = null;
            }

            DialogResult = true;
            Close();
        }
        private void DueTimeTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            DueTimePlaceholder.Visibility = string.IsNullOrWhiteSpace(DueTimeTextBox.Text)
                ? Visibility.Visible
                : Visibility.Collapsed;
        }



    }
}
