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
using System.Windows.Shapes;
using WpfVakantieEindopdracht.Classes;

namespace WpfVakantieEindopdracht
{
    /// <summary>
    /// Interaction logic for NewCustomer.xaml
    /// </summary>
    public partial class NewCustomer : Window
    {
        DbConnection _dbConnection = new DbConnection();

        public NewCustomer()
        {
            InitializeComponent();
        }

        private void BtnSaveCustomer_Click(object sender, RoutedEventArgs e)
        {
            if (tbFirstName.Text != "" || tbLastName.Text != "")
            {
                Customer customer = new Customer { FirstName = tbFirstName.Text, LastName = tbLastName.Text };
                _dbConnection.AddCustomer(customer);
                tbFirstName.Text = "";
                tbLastName.Text = "";
            }
        }
    }
}
