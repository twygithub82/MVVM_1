using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfApp1_MVVM.Model;

namespace WpfApp1_MVVM.View
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            Customer edmund = new Customer { age = 30, name = "Edmund", married = true, amount = 3000 };

            lblName.Content = edmund.name;
            lblAge.Content = edmund.age.ToString();

            if (edmund.married)
                chkMarried.IsChecked = true;
            else
                chkMarried.IsChecked = false;

            if (edmund.amount > 1500)
                txtColor.Background = new SolidColorBrush(Colors.Blue);
            else
                txtColor.Background = new SolidColorBrush(Colors.Red);

        
        }
    }
}
