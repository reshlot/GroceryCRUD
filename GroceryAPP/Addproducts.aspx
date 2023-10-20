<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Addproducts.aspx.cs" Inherits="GroceryAPP.Addproducts" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="text-align: center;">

        <h2 style="font-family: 'Times New Roman'; color: blue;">Add Products</h2>


        <div class="form-container" style="border: 1px solid green; padding: 30px; border-radius: 5px; border-width:30px; display: inline-block; text-align: left;">
            <div>
                 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwAOI3Gxgas142uWmFy2tG6vjZgbkfzCZh1A&amp;usqp=CAU" alt="Grocery Store Fixtures Central to Store Marketing | Best Online Grocery  Shopping and Online Grocery Store in Ghaziabad, Noida, and Delhi NCR" alt="Product Image" style="max-width: 300px; margin-bottom: 20px;" />
                <br />
          
                <div>
    

                
<asp:Label ID="categoryIdLabel" runat="server" Text="<b>Category:</b>" AssociatedControlID="categoryDropDown" />
                    <asp:RequiredFieldValidator ID="categoryValidator" runat="server" ControlToValidate="categoryDropDown"
    InitialValue="" Display="Dynamic" Text="*" ForeColor="Red" ErrorMessage="Category is required." />



<asp:DropDownList ID="categoryDropDown" runat="server" CssClass="form-control"  >
   
 

     <asp:ListItem Text="Select Category" Value="" />
    <asp:ListItem Text="1 (Fruits)" Value="1" />
    <asp:ListItem Text="2 (Vegetables)" Value="2" />
    <asp:ListItem Text="3 (Dairy)" Value="3" />
    <asp:ListItem Text="4 (Bakery)" Value="4" />
    <asp:ListItem Text="5 (Meat)" Value="5" />
    <asp:ListItem Text="6 (Pantry)" Value="6" />
</asp:DropDownList>


                
                <br />
                    <asp:Label ID="imageLinkLabel" runat="server" Text="<b>Image URL:<b>" />
<asp:TextBox ID="imageLinkTextBox" runat="server" CssClass="form-control" />
               <asp:RequiredFieldValidator
    ID="rfvImageLink"
    runat="server"
    ControlToValidate="imageLinkTextBox"
    Display="Dynamic"
    InitialValue=""
    Text="* Image URL is required."
    ForeColor="Red" />

<asp:RegularExpressionValidator
    ID="revImageLink"
    runat="server"
    ControlToValidate="imageLinkTextBox"
    Display="Dynamic"
    ValidationExpression="^(https?://.+\.(jpg|jpeg|png|gif))$"
    Text="* Invalid URL format. Please provide a valid image URL (e.g., http://example.com/image.jpg)."
    ForeColor="Red" />







<%--                    <asp:Label ID="productImageLabel" runat="server" Text="<b>Image to upload: </b>" AssociatedControlID="f1" />
<asp:FileUpload ID="f1" runat="server" CssClass="form-control" />--%>
<%--<asp:RequiredFieldValidator ID="f1RequiredValidator" runat="server" ControlToValidate="f1" InitialValue="" Display="Dynamic" Text="Image is required." ForeColor="Red" />
<asp:RegularExpressionValidator ID="f1FormatValidator" runat="server" ControlToValidate="f1" Display="Dynamic" ValidationExpression="(.jpg|.jpeg|.png|.gif)$" Text="Only .jpg, .jpeg, .png, and .gif formats are allowed." ForeColor="Red" />--%>



                <br />
                <asp:Label ID="productNameLabel" runat="server" Text="<b>Product Name:</b> " AssociatedControlID="productNameTextBox" />
                <asp:TextBox ID="productNameTextBox" runat="server" CssClass="form-control" />
                  <asp:RequiredFieldValidator ID="productNameValidator" runat="server" ControlToValidate="productNameTextBox" Display="Dynamic" InitialValue="" Text="Product Name is required." ForeColor="Red" />

                <br />
                <asp:Label ID="productPriceLabel" runat="server" Text="<b> Product Price: </b>" AssociatedControlID="productPriceTextBox" />
                <asp:TextBox ID="productPriceTextBox" runat="server" CssClass="form-control" />
                  <asp:RequiredFieldValidator ID="productPriceValidator" runat="server" ControlToValidate="productPriceTextBox" Display="Dynamic" InitialValue="" Text="Price is required." ForeColor="Red" />
<asp:RegularExpressionValidator ID="productPriceFormatValidator" runat="server" ControlToValidate="productPriceTextBox" Display="Dynamic" ValidationExpression="^\d+(\.\d{1,2})?$" Text="Price must be a valid number (e.g., 10.99)" ForeColor="Red" />

                <br />
                <asp:Label ID="LblMsg" runat="server" CssClass="mt-2"></asp:Label>
           
                  
   
        <div style="text-align: center;">
            <asp:Button ID="Button1" runat="server" Text=" Enter Add" OnClick="Button1_Click" CssClass="btn btn-primary" />
        </div>
    </div>
</div>
                
                
                </div>
        </div>
      
   
</asp:Content>

