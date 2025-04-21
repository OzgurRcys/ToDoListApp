using System;
using System.ComponentModel;

namespace ToDo
{
    public class TaskItem : INotifyPropertyChanged
    {
        private string name;
        private DateTime? dueDateTime;
        private bool isCompleted;

        public string Name
        {
            get => name;
            set
            {
                name = value;
                OnPropertyChanged(nameof(Name));
            }
        }

        public DateTime? DueDateTime
        {
            get => dueDateTime;
            set
            {
                dueDateTime = value;
                OnPropertyChanged(nameof(DueDateTime));
            }
        }

        public bool IsCompleted
        {
            get => isCompleted;
            set
            {
                isCompleted = value;
                OnPropertyChanged(nameof(IsCompleted));
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string propertyName) =>
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}

