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

    .available-products-label {
        color:mediumvioletred;
        font-size: 40px;
        font-weight: bold;
        font-family:'Times New Roman', Times, serif;
        text-align:center;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 10vh;
    }
</style>


  

   <asp:Label ID="AvailableProductsLabel" runat="server" Text="Available products" CssClass="available-products-label" />


    <br />
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
                         

<ItemTemplate>
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' CssClass="product-image" />
        </td>
        <td><%# Eval("ProductName") %></td>
        <td><%# Eval("Price", "{0:C}") %></td>
        <td>
            <asp:LinkButton runat="server" CommandName="Edit" CssClass="btn btn-info" OnClientClick='<%# "toggleEdit(this.parentNode.parentNode); return false;" %>'>
                Edit
            </asp:LinkButton>

            <asp:Button ID="SaveButton" runat="server" Text="Save" Visible="true" CssClass="btn btn-success" CommandName="Save" Style="display: none;" CommandArgument='<%# Eval("ProductId") %>' />
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" CssClass="btn btn-secondary" CommandName="Cancel" Style="display: none;" />      
            <asp:Button ID="DeleteButton" runat="server" Text="Delete" CssClass="btn btn-danger" CommandName="Delete" OnClientClick='<%# "return confirm(\u0027Are you sure you want to delete this product?\u0027)" %>' />
        
        </td>
    </tr>
</ItemTemplate>

<script type="text/javascript">
    function toggleEdit(row) {
        var editButton = row.querySelector('.btn-info');
        var saveButton = row.querySelector('.btn-success');
        var cancelButton = row.querySelector('.btn-secondary');
        var deleteButton = row.querySelector('.btn-danger');
        var productName = row.querySelector('.product-name');
        var price = row.querySelector('.price');

        if (editButton.style.display !== "none") {
            editButton.style.display = "none";
            saveButton.style.display = "inline";
            cancelButton.style.display = "inline";
            deleteButton.style.display = "none";
            productName.contentEditable = true;
            price.contentEditable = true;
            productName.focus();
        } else {
            editButton.style.display = "inline";
            saveButton.style.display = "true";
            cancelButton.style.display = "true";
            deleteButton.style.display = "inline";
            productName.contentEditable = true;
            price.contentEditable = true;
        }
    }
</script>





       
                     </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

    


    </div>
</asp:Content>












