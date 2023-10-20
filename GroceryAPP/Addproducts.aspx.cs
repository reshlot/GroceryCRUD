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
using System.IO;

namespace GroceryAPP
{
    public partial class Addproducts : System.Web.UI.Page
    {
        
            string connectionString = "Server=RESHULOTUS;Database=GroceryDB;Trusted_Connection=True;Integrated Security=SSPI;Connection Timeout=30;";
          
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //final add button for addproductspage
        protected void Button1_Click(object sender, EventArgs e)
        {

            // Retrieve user input from TextBox controls
            int categoryID = Convert.ToInt32(txtCategoryID.Text); // Assuming you have a TextBox for CategoryID
            string productImage = txtProductImage.Text; // TextBox for ProductImage
            string productName = txtProductName.Text; // TextBox for ProductName
            decimal productPrice = Convert.ToDecimal(txtProductPrice.Text); // TextBox for ProductPrice

            // Create a SQL connection and command
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Construct the SQL query (use parameterized queries for security)
                string query = "INSERT INTO Products (CategoryID, ProductImage, ProductName, ProductPrice) " +
                               "VALUES (@CategoryID, @ProductImage, @ProductName, @ProductPrice)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the query
                    command.Parameters.AddWithValue("@CategoryID", categoryID);
                    command.Parameters.AddWithValue("@ProductImage", productImage);
                    command.Parameters.AddWithValue("@ProductName", productName);
                    command.Parameters.AddWithValue("@ProductPrice", productPrice);


                    // Execute the query
                    command.ExecuteNonQuery();
                }
            }


        }


        
    }

    
}









