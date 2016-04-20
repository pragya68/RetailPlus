<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%;">
         
        <div style="width:29%; float:left;"> 
            <asp:ListView ID="ListViewImg" runat="server">
                <ItemTemplate>
            <asp:Image ID="ImageProductImage" runat="server" ImageUrl='<%#Eval("Img")%>'  style="padding-left:50px;margin-top:80px;" />
                   
                </ItemTemplate>
            </asp:ListView>
        </div>
        <div style="width:71%;float:left;">     
        <asp:ListView  runat="server" ID="ListViewProductList" GroupItemCount="1" DataSourceID="" DataKeyNames="ProductID">
        <ItemTemplate>
            <td runat="server"  class="ListView_Product_List">
                <h1 style="float:left;"><%#Eval("ProductName")%></h1>
                <p style="margin-top:100px;text-align:left;font-family:Candara;font-size:18px"> 
                    <span style="font-weight:bold;">Description</span><br />
                    <%#Eval("Description")%> <br />
                    <span style="font-weight:bold;">Color :</span>
                    <%#Eval("Colour")%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <span style="font-weight:bold;">Weight(in grams) :</span>
                    <%#Eval("Weight")%> <br />
                <asp:Label ID="LabelPrice" runat="server" Text="Unit Price : Rs."><%#Eval("MSRP")%></asp:Label>
                </p>
            </td>
        </ItemTemplate>
        </asp:ListView>
            
            <div class="forgot">
            <asp:Button ID="Button1" runat="server" Text="Add To Cart" />
                <br /><br /><br />
            </div>
    </div>
            
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

