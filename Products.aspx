<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/menu.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width:100%">
    <div style="float:left; width:15%;height:550px; background-color:#333">
<div id='cssmenu_v'>
<ul>
   <li class='active'></li>
   <li><a href='#'><span>Price:High to Low</span></a></li>
   <li><a href='#'><span>Price:Low to High</span></a></li>
    <li><a href='#'><span>Colour :<asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                    <asp:ListItem Text="White" Value="White"></asp:ListItem>
                                    <asp:ListItem Text="Black" Value="Black"></asp:ListItem>
                                    <asp:ListItem Text="Golden" Value="Golden"></asp:ListItem>
                                    <asp:ListItem Text="Pink" Value="Pink"></asp:ListItem>
                                  </asp:CheckBoxList>                                
                    </span></a></li>
    <li><a href='#'><span>Discount :<asp:CheckBoxList ID="CheckBoxList2" runat="server" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged">
        <asp:ListItem Text="10%-30%" Value="A"></asp:ListItem>
        <asp:ListItem Text="40%-70%" Value="B"></asp:ListItem>
        <asp:ListItem Text="80%-above" Value="B"></asp:ListItem>
        </asp:CheckBoxList>
        </span></a></li></ul> </div></div>
     <div style="float:left;width:85%">
    <div style="background-color:#ffffff; " >
     <asp:ListView ID="ListViewPopularProducts" runat="server" style="margin-left:30px; margin-right:30px; background-color:#ffffff;"  GroupItemCount="4">
        <LayoutTemplate>
            <table cellpadding="2" runat="server" id="tblProducts" style="height: 320px">
                <tr runat="server" id="groupPlaceholder"> </tr>
            </table>
            <div style="text-align:center; font-family:'candara'; font-size:24px;"> 
            <asp:DataPager runat="server" ID="DataPager" PageSize="12" style="text-align: center">
                <Fields>
                    <asp:NumericPagerField ButtonCount="1" PreviousPageText="Prev" NextPageText="Next"  />
                </Fields>
            </asp:DataPager>
                </div>
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

                <asp:HyperLink ID="HyperLinkProductLink" runat="server" Target="_blank" Text='<%#Eval("ProductName")%>' /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="LabelPrice" runat="server" Text="Unit Price : Rs."><%#Eval("MSRP")%></asp:Label>
                
                <br />


                
            </td>
        </ItemTemplate>

    </asp:ListView>
        </div>
    </div>
    </div>
     <div class="footer">
                <div class="left_footer">
                    <a href="#">home</a> <a href="#">about</a>
                </div>
                <div class="center_footer">
                        
                </div>
                <div class="right_footer">
                <img src="css/images/websitebasket.png" alt="" width="100" height="100" />
                 </div>
            </div>
</asp:Content>          


