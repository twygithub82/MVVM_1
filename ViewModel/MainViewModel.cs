using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace WpfApp1_MVVM.ViewModel
{
    /// <summary>
    /// This class contains properties that the main View can data bind to.
    /// <para>
    /// Use the <strong>mvvminpc</strong> snippet to add bindable properties to this ViewModel.
    /// </para>
    /// <para>
    /// You can also use Blend to data bind with the tool's support.
    /// </para>
    /// <para>
    /// See http://www.galasoft.ch/mvvm
    /// </para>
    /// </summary>
    public class MainViewModel : ViewModelBase
    {
        /// <summary>
        /// Initializes a new instance of the MainViewModel class.
        /// </summary>
        public MainViewModel()
        {
            if (IsInDesignMode)
            {
                // Code runs in Blend --> create design time data.
                WindowTitle = "MVVM (Design)";
            }
            else
            {
                // Code runs "for real"
                WindowTitle = "Mvvm Run";
            }
        }

        /// <summary>
        /// This is one way to declare and use ICommand
        /// </summary>
        public ICommand btnCommand => new RelayCommand(
            () =>
                {
                    MessageBox.Show("Button Clicked");
                }
            );
     
        /// <summary>
        /// This is another way to declare and ICommand
        /// </summary>
        public ICommand FormLoad
        {
            get
            {
                return new RelayCommand(() =>
                {
                    MessageBox.Show("Form Loaded");
                });
            }
        }

        public ICommand KeyPressed
        {
            get
            {
                return new RelayCommand(() =>
                {
                    _ = Task.Run(() => MessageBox.Show("Key Pressed"));
                });


                //return new RelayCommand(() =>
                //{
                //    var r = Task.Run(async () =>
                //    {
                //        bool good = await hello();
                //    });

                //    MessageBox.Show(r.ToString());
                //});
            }
        }

        private async Task<bool> hello()
        {
            await Task.Delay(500);
            return true;
        }

        public string WindowTitle { get; set; }

        private RelayCommand isMarriedCheck1;

        public ICommand isMarriedCheck
        {
            get
            {
                if (isMarriedCheck1 == null)
                {
                    isMarriedCheck1 = new RelayCommand(PerformisMarriedCheck);
                }

                return isMarriedCheck1;
            }
        }

        private void PerformisMarriedCheck()
        {
            throw new NotImplementedException();
        }
    }
}