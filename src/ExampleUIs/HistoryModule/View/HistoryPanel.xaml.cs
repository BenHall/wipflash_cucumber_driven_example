#region

using ExampleUIs.HistoryModule.View.Model;

#endregion

namespace ExampleUIs.HistoryModule.View
{
    public partial class HistoryPanel
    {
        public HistoryPanel(HistoryViewModel viewModel)
        {
            InitializeComponent();
            DataContext = viewModel;
        }
    }
}