<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="SearchResults.aspx.cs" Inherits="SearchResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        <asp:Label ID="LabelSearch" runat="server" Text=""></asp:Label></h1>
    <br />
             
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="background-color:#ffffff">
     <asp:ListView ID="ListViewPopularProducts" runat="server" style="margin-left:20px; margin-right:20px; background-color:#ffffff;"  GroupItemCount="4">
        <LayoutTemplate>
            <table cellpadding="2" runat="server" id="tblProducts" style="height: 320px">
                <tr runat="server" id="groupPlaceholder"> </tr>
            </table>
        </LayoutTemplate>

        <GroupTemplate>
            <tr runat="server" id="productRow" style="height: 100px;">
                <td runat="server" id="itemPlaceholder"></td>
            </tr>
        </GroupTemplate>

        <ItemTemplate>
            <td style="width:30%;" runat="server" class="ListView_Product_List" >

                <asp:Image ID="ImageProductImage" runat="server"  ImageUrl='<%#Eval("Img")%>' Height="140px" Width="150px" /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;

                <asp:LinkButton ID="LinkButtonProductLink" runat="server" OnCommand="LinkButtonProductLink_Command" CommandArgument='<%#Eval("ProductID")%>'  ><%#Eval("ProductName")%></asp:LinkButton></br>
                &nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="LabelPrice" runat="server" Text="Unit Price : Rs."><%#Eval("MSRP")%></asp:Label><br />
                 &nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Command" CommandArgument='<%#Eval("ProductID")%>' >Add to Cart</asp:LinkButton>
                <br />


                
            </td>
        </ItemTemplate>

    </asp:ListView>
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

