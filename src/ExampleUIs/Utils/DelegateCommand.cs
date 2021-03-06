﻿#region

using System;
using System.Windows.Input;

#endregion

namespace ExampleUIs.Utils
{
    public class DelegateCommand : ICommand
    {
        private readonly Action<object> _executioner;

        public DelegateCommand(Action<object> executioner)
        {
            _executioner = executioner;
        }

        public void Execute(object parameter)
        {
            _executioner(parameter);
        }

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value;  }
        }
    }
}
