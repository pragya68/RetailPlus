<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Manufacturers.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="&lt;h2&gt;&lt;center&gt;Welcome to Manufacturer Details Table &lt;/center&gt;&lt;/h2&gt;" ></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br /> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="Name"></asp:RequiredFieldValidator>
    <asp:TextBox ID="name" placeholder="Name" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="MobileNo"></asp:RequiredFieldValidator>
    <asp:TextBox ID="MobileNo" placeholder="Mobile Number" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="EmailID"></asp:RequiredFieldValidator>
    <asp:TextBox ID="EmailID" placeholder="Email ID" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="WebsiteURL"></asp:RequiredFieldValidator>
    <asp:TextBox ID="WebsiteURL" placeholder="Website URL" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="Address"></asp:RequiredFieldValidator>
    <asp:TextBox ID="Address" placeholder="Address" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="COD"></asp:RequiredFieldValidator>
    <asp:TextBox ID="COD" placeholder="Cash On Delivery Y/N" runat="server"></asp:TextBox><br />
    &nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />
    &nbsp;&nbsp;
    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    <br /> <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <br /><br />
    <h1> Manufacturers Table </h1>
    <div style="margin-left:190px">
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
                        <asp:LinkButton runat="server" ID="linkdelete" Text="Delete" OnCommand="linkdelete_Command" CommandArgument='<%#Eval("ManufacturerID") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
         </Columns>
        </asp:GridView>
        </div>
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

