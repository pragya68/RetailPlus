<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="Admin_ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1> Customers Table </h1>
    <div style="margin-left:240px">
     <asp:GridView ID="GridViewUserInfo" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
                        <asp:LinkButton runat="server" ID="linkdelete" Text="Delete" OnCommand="linkdelete_Command" CommandArgument='<%#Eval("Username") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
         </Columns>
        </asp:GridView>
        </div>
    <br /> <br /> <br /><br /><br /><br /><br /><br /> <br /> <br /> <br /><br /><br /><br /><br /><br /><br /><br /><br />
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

