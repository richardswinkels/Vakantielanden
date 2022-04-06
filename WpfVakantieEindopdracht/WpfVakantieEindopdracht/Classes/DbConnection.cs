using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfVakantieEindopdracht.Classes
{
    public class DbConnection
    {
        string _connString = ConfigurationManager.ConnectionStrings["ConnVakantieDb"].ConnectionString;

        public ObservableCollection<Customer> GetAllCustomers()
        {
            ObservableCollection<Customer> customers = new ObservableCollection<Customer>();
            using (SqlConnection con = new SqlConnection(_connString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT * FROM Klanten";
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Customer c = new Customer()
                        {
                            Id = Convert.ToInt32(reader["ID"]),
                            FirstName = reader["Voornaam"].ToString(),
                            LastName = reader["Achternaam"].ToString(),
                        };
                        customers.Add(c);
                    }
                }
                catch (Exception)
                {

                }
                finally
                {
                    con.Close();
                }
            }
            return customers;
        }

        public ObservableCollection<Country> GetAllCountries()
        {
            ObservableCollection<Country> countries = new ObservableCollection<Country>();
            using (SqlConnection con = new SqlConnection(_connString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT * FROM Landen";
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Country c = new Country()
                        {
                            Id = Convert.ToInt32(reader["ID"]),
                            Name = reader["Naam"].ToString(),
                        };
                        countries.Add(c);
                    }
                }
                catch (Exception)
                {

                }
                finally
                {
                    con.Close();
                }
            }
            return countries;
        }

        public ObservableCollection<CustomerCountry> GetAllCountriesByCustomer(Customer customer)
        {
            ObservableCollection<CustomerCountry> customerCountries = new ObservableCollection<CustomerCountry>();
            using (SqlConnection con = new SqlConnection(_connString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "SELECT * FROM KlantenLanden WHERE KlantId = @CustomerId;";
                    cmd.Parameters.AddWithValue("@CustomerId", customer.Id);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        CustomerCountry cc = new CustomerCountry()
                        {
                            Id = Convert.ToInt32(reader["ID"]),
                            CustomerId = Convert.ToInt32(reader["KlantId"]),
                            CountryId = Convert.ToInt32(reader["LandId"]),
                        };
                        customerCountries.Add(cc);
                    }
                }
                catch (Exception)
                {

                }
                finally
                {
                    con.Close();
                }
            }
            return customerCountries;
        }

        public void AddCustomer(Customer customer)
        {
            using (SqlConnection con = new SqlConnection(_connString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "INSERT INTO Klanten (Voornaam, Achternaam) VALUES(@FirstName, @LastName); ";
                    cmd.Parameters.AddWithValue("@FirstName", customer.FirstName);
                    cmd.Parameters.AddWithValue("@LastName", customer.LastName);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public void AddFavourite(Customer customer, Country country)
        {
            using (SqlConnection con = new SqlConnection(_connString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "INSERT INTO KlantenLanden (KlantId, LandId) VALUES(@CustomerId, @CountryId); ";
                    cmd.Parameters.AddWithValue("@CustomerId", customer.Id);
                    cmd.Parameters.AddWithValue("@CountryId", country.Id);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public void DeleteCustomer(Customer customer)
        {
            using (SqlConnection con = new SqlConnection(_connString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "DELETE FROM KlantenLanden WHERE KlantId = @id; DELETE FROM Klanten WHERE ID = @id;";
                    cmd.Parameters.AddWithValue("@id", customer.Id);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public void DeleteFavouriteCountry(Country country)
        {
            using (SqlConnection con = new SqlConnection(_connString))
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandText = "DELETE FROM KlantenLanden WHERE LandId = @LandId";
                    cmd.Parameters.AddWithValue("@LandId", country.Id);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {

                }
                finally
                {
                    con.Close();
                }
            }
        }
    }
}
