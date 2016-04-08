<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%;">
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div style="width:30%; float:left;"> 
            <asp:ListView ID="ListViewImg" runat="server">
                <ItemTemplate>
            <asp:Image ID="ImageProductImage" runat="server" style="padding-left:50px;margin-top:80px;" ImgUrl='<%#Eval("Img")%>' />
                   
                </ItemTemplate>
            </asp:ListView>
        </div>
        <div style="width:70%;float:left;">     
        <asp:ListView  runat="server" ID="ListViewProductList" GroupItemCount="1" DataSourceID="" DataKeyNames="ProductID">
        <ItemTemplate>
            <td runat="server"  class="ListView_Product_List">
                <h1 style="float:left;"><%#Eval("ProductName")%></h1>
                <p style="margin-top:100px;text-align:left;font-family:Candara;font-size:18px"> 
                    <%#Eval("Description")%> <br />
                    <%#Eval("Colour")%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%#Eval("Weight")%> <br />
                <asp:Label ID="LabelPrice" runat="server" Text="Unit Price : Rs."><%#Eval("MSRP")%></asp:Label> <br />
                </p>
            </td>
        </ItemTemplate>


    </asp:ListView>
            
            <br /> <br />
            <div class="forgot">
            <asp:Button ID="Button1" runat="server" Text="Add To Cart" />
        </div>
    </div>
            
    </div>
</asp:Content>

