using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace GroceryAPP
{
    public partial class Addproducts : System.Web.UI.Page
    {
        //string cs = ConfigurationManager.ConnectionStrings["GroceryDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //final add button for addproductspage
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "server = RESHULIOTUS; database = GroceryDB; trusted_connection = true;") // Replace with your database connection string
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string query = "INSERT INTO Products (ProductName, ProductPrice) VALUES (@ProductName, @ProductPrice)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@ProductName", productNameTextBox.Text);
                    cmd.Parameters.AddWithValue("@ProductPrice", productPriceTextBox.Text);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Product has been submitted successfully');</script>");
                    }
                }
            }







        }

    }
    
}