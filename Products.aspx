<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/menu.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width:100%">
    <div style="float:left; width:15%;height:1400px; background-color:#333">
         
<div id='cssmenu_v'>
<ul>
   <li class='active'></li>
    <li><span>
       <asp:LinkButton ID="Def" runat="server" OnClick="Def_Click">Clear All</asp:LinkButton></span></li>
   <li><span>
       <asp:LinkButton ID="LinkButtonHL" runat="server" OnClick="LinkButtonHL_Click">Price:High to Low</asp:LinkButton></span></li>
   <li><span>
       <asp:LinkButton ID="LinkButtonLH" runat="server" OnClick="LinkButtonLH_Click">Price:Low to High</asp:LinkButton></span></li>
    <li><a href='#'><span>Colour :<asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="true" >
                                    <asp:ListItem Text="White" Value="White"></asp:ListItem>
                                    <asp:ListItem Text="Black" Value="Black"></asp:ListItem>
                                    <asp:ListItem Text="Golden" Value="Golden"></asp:ListItem>
                                    <asp:ListItem Text="Pink" Value="Pink"></asp:ListItem>
                                  </asp:CheckBoxList>                                
                    </span></a></li>
    <asp:HiddenField ID="dVal" runat="server" />
    <li><a href='#'><span>Discount: <br /> 
   <asp:RadioButton ID="RadioButton1" Text="0% - 25%" runat="server" GroupName="Discount" AutoPostBack="true" OnCheckedChanged="RadioButton1_CheckedChanged"/><br />
   <asp:RadioButton ID="RadioButton2" Text="25% - 50%" runat="server" GroupName="Discount" AutoPostBack="true" OnCheckedChanged="RadioButton2_CheckedChanged" /><br />
   <asp:RadioButton ID="RadioButton3" Text="50% - 75%" runat="server" GroupName="Discount" AutoPostBack="true" OnCheckedChanged="RadioButton3_CheckedChanged"/><br />
   <asp:RadioButton ID="RadioButton4" Text="75% & above" runat="server" GroupName="Discount" AutoPostBack="true" OnCheckedChanged="RadioButton4_CheckedChanged" />   
        </span></a></li></ul> </div></div>
     <div style="float:left;width:85%">
    <div style="background-color:#fff; " >
     <asp:ListView ID="ListViewPopularProducts" runat="server" style="margin-left:30px; margin-right:30px; background-color:#ffffff;"  GroupItemCount="4" EnableSortingAndPagingCallbacks="true">
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
                
                <asp:Image ID="ImageProductImage" runat="server"  ImageUrl='<%#Eval("Img")%>' Height="140px" Width="150px" /><br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;

                <asp:LinkButton ID="LinkButtonProductLink" runat="server" OnCommand="LinkButtonProductLink_Command" CommandArgument='<%#Eval("ProductID")%>'  ><%#Eval("ProductName")%></asp:LinkButton></br>
              
                  &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelPrice" runat="server" Text="Unit Price : Rs."><%#Eval("MSRP")%></asp:Label><br />
                  &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Command" CommandArgument='<%#Eval("ProductID")%>' >Add to Cart</asp:LinkButton>
                
                <br /><br />


                
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


