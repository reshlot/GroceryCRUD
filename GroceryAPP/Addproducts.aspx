<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Addproducts.aspx.cs" Inherits="GroceryAPP.Addproducts" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="text-align: center;">

        <h2 style="font-family: 'Times New Roman'; color: blue;">Add Products</h2>


        <div class="form-container" style="border: 1px solid green; padding: 30px; border-radius: 5px; border-width:30px; display: inline-block; text-align: left;">
            <div>
                 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwAOI3Gxgas142uWmFy2tG6vjZgbkfzCZh1A&amp;usqp=CAU" alt="Grocery Store Fixtures Central to Store Marketing | Best Online Grocery  Shopping and Online Grocery Store in Ghaziabad, Noida, and Delhi NCR" alt="Product Image" style="max-width: 200px; margin-bottom: 20px;" />
                <br />
               <%-- <asp:Label ID="categoryIdLabel" runat="server" Text="Category ID: " AssociatedControlID="categoryIdTextBox" />
                <asp:TextBox ID="categoryIdTextBox" runat="server" CssClass="form-control" />--%>
                <div>
    

                    <asp:Label ID="categoryIdLabel" runat="server" Text="Category: " AssociatedControlID="categoryDropDown" />
<asp:DropDownList ID="categoryDropDown" runat="server" CssClass="form-control">
   
    <asp:ListItem Text="1(Fruits)" Value="1" />
    <asp:ListItem Text=" 2(Vegetables)" Value="2" />
    <asp:ListItem Text="3(Dairy)" Value="3" />
</asp:DropDownList>




         
                
                <br />
                <asp:Label ID="productImageLabel" runat="server" Text="Image to upload: " AssociatedControlID="f1" />
                <asp:FileUpload ID="f1" runat="server" CssClass="form-control" />
                <br />
                <asp:Label ID="productNameLabel" runat="server" Text="Product Name: " AssociatedControlID="productNameTextBox" />
                <asp:TextBox ID="productNameTextBox" runat="server" CssClass="form-control" />
                <br />
                <asp:Label ID="productPriceLabel" runat="server" Text="Price: " AssociatedControlID="productPriceTextBox" />
                <asp:TextBox ID="productPriceTextBox" runat="server" CssClass="form-control" />
                <br />
                <asp:Label ID="LblMsg" runat="server" CssClass="mt-2"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" CssClass="btn btn-primary"  />
            </div>
        </div>
      
    </div>
</asp:Content>

