using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
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
using WpfVakantieEindopdracht.Classes;

namespace WpfVakantieEindopdracht
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        DbConnection _dbConnection = new DbConnection();

        private ObservableCollection<Customer> customers;

        private Customer customer;

        public ObservableCollection<Customer> Customers
        {
            get { return customers; }
            set { customers = value;
                NotifyPropertyChanged();
            }
        }

        public Customer Customer
        {
            get { return customer; }
            set
            {
                customer = value;
                NotifyPropertyChanged();
            }
        }

        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
            LoadCustomers();
        }

        private void LoadCustomers()
        {
            customers = _dbConnection.GetAllCustomers();
        }

        public event PropertyChangedEventHandler PropertyChanged;

        public void NotifyPropertyChanged(string Property = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(Property));
        }
    }
}
