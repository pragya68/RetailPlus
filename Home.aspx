<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <link href="css/generic.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="sliderFrame">
        <div id="slider">
            <img src="images/slider1.jpg" alt="" />
            <img src="images/slider2.jpg" alt="" />
           
           	<img src="images/slider3.jpg" alt="" />
            
            <img src="images/slider4.jpg" alt="" />
            <img src="images/slider5.jpg" alt="" />
        </div>     
    </div>
    <asp:Label ID="LabelLatestProducts" runat="server" Text="Trending Products..." style="font-family: 'Open Sans', sans-serif;font-size:x-large; margin-left:10px; "></asp:Label>
     <asp:ListView ID="ListViewPopularProducts" runat="server" style="margin-left:20px; margin-right:20px"  GroupItemCount="3">

        <LayoutTemplate>

            <table cellpadding="2" runat="server"
                id="tblProducts" style="height: 320px">
                <tr runat="server" id="groupPlaceholder">
                </tr>
            </table>

            <asp:DataPager runat="server" ID="DataPager"
                PageSize="9">
                <Fields>
                    <asp:NumericPagerField ButtonCount="2"
                        PreviousPageText="Prev"
                        NextPageText="Next" />
                </Fields>
            </asp:DataPager>

        </LayoutTemplate>


        <GroupTemplate>
            <tr runat="server" id="productRow"
                style="height: 100px;">
                <td runat="server" id="itemPlaceholder"></td>
            </tr>
        </GroupTemplate>


        <ItemTemplate>
            <td style="width:30%;" runat="server" class="ListView_Product_List" >

                <asp:Image ID="ImageProductImage" runat="server" Style="border: solid" ImageUrl='<%#Eval("ImagePath") %>' Height="140" Width="160" /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;

                <asp:HyperLink ID="HyperLinkProductLink" runat="server" Target="_blank" Text='<%#Eval("ProductName")%>' NavigateUrl='<%#"ProductDetails.aspx?ProductId="+Eval("ProductId")%>' /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="LabelPrice" runat="server" Text="Unit Price : Rs."><%#Eval("UnitPrice")%></asp:Label>
                <br />

                <asp:LinkButton ID="LinkButtonAddToCart" runat="server" OnCommand="LinkButtonAddToCart_Click" CommandArgument='<%#Eval("ProductId")%>'>Add To Cart</asp:LinkButton>
            </td>
            
        </ItemTemplate>

    </asp:ListView>

</asp:Content>

