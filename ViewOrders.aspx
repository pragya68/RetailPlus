﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="ViewOrders.aspx.cs" Inherits="ViewOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Your Orders</h1>
    <div style="margin-left:170px;float:left;">
    <asp:GridView ID="GridViewShoppingCart"  runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="ListView_Product_List" Width="900px" >
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True"  ForeColor="White" />
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
                        <asp:LinkButton runat="server" ID="linkdelete" Text="Cancel Order " OnCommand="linkdelete_Command" CommandArgument='<%#Eval("OrderID") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
         </Columns>
      
    </asp:GridView>
        <br /><br /> <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /><br /><br /><br /><br /><br /><br />
     </div>
    <div class="footer">
        
                <div class="left_footer">
                    <a href="#">home</a> <a href="#">about</a> <a href="#">sitemap</a> <a href="#">rss</a> <a href="#">contact us</a>
                </div>
                <div class="center_footer">
                        
                </div>
                <div class="right_footer">
                <img src="css/images/websitebasket.png" alt="" width="100" height="100" />
                 </div>
            </div>

</asp:Content>

