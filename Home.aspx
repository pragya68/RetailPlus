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
       <h1>Trending Products</h1>
    <br />
             
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="background-color:#ffffff">
     <asp:ListView ID="ListViewPopularProducts" runat="server" style="margin-left:20px; margin-right:20px; background-color:#ffffff;"  GroupItemCount="4">
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

