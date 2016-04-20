<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Admin_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="LabelWelcome" runat="server" Text="&lt;h2&gt;&lt;center&gt;Welcome to ProductInfo table&lt;/center&gt;&lt;/h2&gt;"></asp:Label>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ManufacturerID" runat="server" placeholder="ManufacturerID"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="*" ControlToValidate="ManufacturerID" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ProductName" runat="server" placeholder="ProductName"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="*" ControlToValidate="ProductName" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Description" TextMode="multiline" Width="400px" Rows="5" runat="server" placeholder="Description"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="*" ControlToValidate="Description" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Weight" runat="server" placeholder="Weight"></asp:TextBox>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Colour" runat="server" placeholder="Colour"></asp:TextBox>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="AvailableUnits" runat="server" placeholder="AvailableUnits"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ErrorMessage="*" ControlToValidate="AvailableUnits" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="MSRP" runat="server" placeholder="MSRP"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ErrorMessage="*" ControlToValidate="MSRP" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Discount" runat="server" placeholder="Discount"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ErrorMessage="*" ControlToValidate="Discount" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ProductType" runat="server" placeholder="ProductType"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ErrorMessage="*" ControlToValidate="ProductType" ForeColor="red" ValidationGroup="Products"></asp:RequiredFieldValidator>
    <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Image" runat="server" Text="Product-Image:"></asp:Label>
    <asp:FileUpload ID="ImageUpload" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="save" runat="server" Text="Save"  ValidationGroup="Products" OnClick="save_Click" />
    <asp:Button runat="server" ID="btnclear" Text="Clear"   />&nbsp;&nbsp;
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    <br /> <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <br /><br />
    <h1> Products Table </h1>
     <asp:GridView ID="GridViewProductInfo" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
         <Columns>
             <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="linkdelete" Text="Delete" OnCommand="linkdelete_Command" CommandArgument='<%#Eval("ProductID")%>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
         </Columns>
        </asp:GridView>
    <br /> <br /> <br />
    <div class="footer">
                <div class="left_footer">
                    <a href="AdminHome.aspx">home</a> <a href="Products.aspx">Products</a> <a href="Manufacturers.aspx">Manufacturers</a> <a href="UserInfo.aspx">Users</a>
                </div>
                <div class="center_footer">
                        
                </div>
                <div class="right_footer">
                <img src="../css/images/websitebasket.png" alt="" width="100" height="100" />
                 </div>
            </div>

</asp:Content>

