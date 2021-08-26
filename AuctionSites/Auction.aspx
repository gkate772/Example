<%@ Page Title="" Language="C#" MasterPageFile="~/Auction.Master" AutoEventWireup="true" CodeBehind="Auction.aspx.cs" Inherits="AuctionSites.Auction1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <div class="row">
            <div class="col-6 col-md-3">
                <label>Vendor</label>
                <asp:DropDownList ID="vendorID" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-6 col-md-3">
                <label>Product</label>
                <asp:DropDownList ID="ProductID" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-6 col-md-3">
                <label>Type</label>
                <asp:DropDownList ID="TypeID" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-6 col-md-3">
                <label>Time Sloat</label>
                <asp:DropDownList ID="TimeloatID" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-6 col-md-3">
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" OnClick="Button2_Click" Text="Search"></asp:Button>
            </div>
            </div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="No data found"></asp:Label>
            <asp:GridView ID="CountryGridView" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="CountryGridView_PageIndexChanging" AllowPaging="true" PageSize="10" OnRowCommand="CountryGridView_RowCommand" OnRowEditing="CountryGridView_RowEditing" class="table table-striped table-bordered table-sm" CellSpacing="0" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnDataBound="CountryGridView_DataBound" OnRowDataBound="CountryGridView_RowDataBound">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="SN">
                        <ItemTemplate>
                            <%#Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="CSM_ID" HeaderText="ID" />--%>
                    <asp:BoundField DataField="VendorName" HeaderText="Vendor Name" />
                    <asp:BoundField DataField="auc_prod_name" HeaderText="Product Name" />
                    <asp:BoundField DataField="Date" HeaderText="Auction Date" />
                    <asp:BoundField DataField="Type" HeaderText="Auction Type" />
                    <asp:BoundField DataField="auc_am_price" HeaderText="Price" />
                    <asp:BoundField DataField="auc_am_marginmoney" HeaderText="Margin Price" />
                    <asp:BoundField DataField="AprovalStatus" HeaderText="Aproval Status" />
<%--                    <asp:TemplateField HeaderText="Bid">
                        <ItemTemplate>
                            <a href="AddAutionDetails?id=<%#Eval("auc_am_id")%>" class="btn btn-primary">Bid</a>
                        </ItemTemplate>
                    </asp:TemplateField>--%>

                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
    </form>

</asp:Content>
