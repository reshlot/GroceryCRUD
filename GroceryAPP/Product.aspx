<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product1.aspx.cs" Inherits="GroceryAPP.Product1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .product-image {
            max-width: 100px; /* Set the maximum width for the images */
            height: auto; /* Allow the height to adjust proportionally */
        }
       
.small-button {
    font-size: 12px; 
    margin-right: 10px; 
    width:100px;
    position:inherit;
}




        .auto-style1 {
            height: 47px;
        }
        .auto-style2 {
            height: 34px;
        }

    </style>

   


    <div>
        <div class="col-md-4">
            <asp:DropDownList ID="CategoryDropDown" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CategoryDropDown_SelectedIndexChanged">
            </asp:DropDownList><br />

                 <%--<asp:Button ID="Button1" runat="server" Text="Add Products" CssClass="btn btn-info mt-1" CommandName="Create" CommandArgument='<%# Eval("ProductId") %>' OnClick="createButton_Click" Width="10px" />--%>

        </div>
    </div>

   <%-- <div class ="row" accesskey="Edit">
        <asp:Button ID="createButton" runat="server" Text="Add Products" CssClass="btn btn-info mt-1" CommandName="Create" CommandArgument='<%# Eval("ProductId") %>' Width="164px" />
    </div>
    --%>

    <div class="container">
    <div class="row">
        <div class="col-md-12 text-right mt-1">
            <asp:Button ID="createButton" runat="server" Text="Add Products" CssClass="btn btn-info" CommandName="Create" CommandArgument='<%# Eval("ProductId") %>' Width="164px" />
        </div>
    </div>
</div>


    <br />




    






    <div class="row">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th class="auto-style2">Image</th>
                    <th class="auto-style2">Name</th>
                    <th class="auto-style2">Price</th>
                    <th class="auto-style2">Action</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="ProductRepeater" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Image ID="ProductImage" runat="server" ImageUrl='<%# Eval("ProductImage") %>' CssClass="product-image" />
                            </td>
                            <td><%# Eval("ProductName") %></td>
                            <td><%# Eval("Price", "{0:C}") %></td>
                            <td>
                                <asp:Button ID="EditButton" runat="server" Text="Edit" CssClass="btn btn-info mt-1" CommandName="Edit" CommandArgument='<%# Eval("ProductId") %>' />


            <asp:Button ID="SaveButton" runat="server" Text="Save" CssClass="btn btn-success" 
                CommandName="Save" CommandArgument='<%# Eval("ProductId") %>' Visible="false" />
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" CssClass="btn btn-secondary" 
                CommandName="Cancel" Visible="false" />
            <asp:Button ID="DeleteButton" runat="server" Text="Delete" CssClass="btn btn-danger" 
                CommandName="Delete" OnClientClick='<%# "return confirm(\u0027Are you sure you want to delete this product?\u0027)" %>' />

  <asp:Button ID="AddToCartButton" runat="server" Text="Add to Cart" CssClass="btn btn-primary" CommandName="AddToCart" CommandArgument='<%# Eval("ProductId") %>' />
                               
                            
                            
    <%--                        
      <ItemTemplate>
    <asp:LinkButton runat="server" CommandName="Delete" CssClass="btn btn-danger"
        OnClientClick='<%# "return confirm(\u0027Are you sure you want to delete this product?\u0027)" %>'>
        Delete
    </asp:LinkButton>
</ItemTemplate>--%>
        
                            
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>
</asp:Content>