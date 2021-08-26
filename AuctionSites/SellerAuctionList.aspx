<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Auction.Master" CodeBehind="SellerAuctionList.aspx.cs" Inherits="AuctionSites.SellerAuctionList" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="content2">
    <div class="panel-body">
        <form id="form2" runat="server">
            <div class="row">
                <div class="col-lg-12">

                    <h1 class="page-header">Seller Auction List</h1>
                </div>

            </div>
            <%--<div class="row">--%>
            <div style="text-align: right">
                <%--<asp:Button ID="Button1" runat="server" Text="Add Auction" OnClick="Button1_Click" CssClass="btn btn-success" />--%>
                <%--<asp:Button ID="Button1" runat="server" Text="Add State" OnClick="Button1_Click" CssClass="btn btn-success" />--%>
            </div>
            <br />
            <div class="panel panel-default">
                <div class="panel-heading">
                    List
                </div>

                <div class="panel-body">

                    <div class="row">
                        <div class="col-lg-12">
<%--                            <div class="col-6 col-md-3">
                                <div class="form-group">
                                    <label>Seller</label>
                                    <asp:DropDownList ID="vendorID" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>--%>
                            <div class="col-6 col-md-3">
                                <div class="form-group">
                                    <label>Product</label>
                                    <asp:DropDownList ID="ProductID" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="form-group">
                                    <label>Type</label>
                                    <asp:DropDownList ID="TypeID" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="form-group">
                                    <label>Time Sloat</label>
                                    <asp:DropDownList ID="TimeloatID" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="form-group" style="text-align: right">
                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" OnClick="Button2_Click" Text="Search"></asp:Button>
                                </div>
                            </div>
                        </div>
                </div>
                <%--<asp:GridView ID="CountryGridView" runat="server" class="table table-striped table-bordered table-hover">

                        </asp:GridView>--%>
                <div class="col-lg-12">
                    <div class="table-responsive col-lg-12">
                        <asp:Label ID="Label1" runat="server" Text="No data found"></asp:Label>
                        <asp:GridView ID="CountryGridView" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="CountryGridView_PageIndexChanging" AllowPaging="true" PageSize="10" OnRowCommand="CountryGridView_RowCommand" OnRowEditing="CountryGridView_RowEditing" CssClass="table table-striped table-bordered table-hover" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField HeaderText="SN">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <%--<asp:BoundField DataField="CSM_ID" HeaderText="ID" />--%>
                                <asp:BoundField DataField="VendorName" HeaderText="Seller Name" />
                                <asp:BoundField DataField="auc_prod_name" HeaderText="Product Name" />
                                <asp:BoundField DataField="Date" HeaderText="Auction Date" />
                                <asp:BoundField DataField="Type" HeaderText="Auction Type" />
                                <asp:BoundField DataField="auc_am_price" HeaderText="Price" />
                                <%--<asp:BoundField DataField="quantity" HeaderText=" Toatal Quantity" />--%>
                                <asp:BoundField DataField="Mesurement" HeaderText="Mesurement" />
                                <asp:BoundField DataField="Quantity sell" HeaderText="Quantity sell" />
                                <asp:BoundField DataField="Quantity pending" HeaderText=" Quantity pending" />
                                <asp:BoundField DataField="Total Bid" HeaderText="Total Bid" />
                                <asp:BoundField DataField="Approved Bid" HeaderText="Approved Bid" />
                                <asp:BoundField DataField="auc_am_marginmoney" HeaderText="Margin Price" />
                                <asp:BoundField DataField="AprovalStatus" HeaderText="Aproval Status" />
                                <%--<asp:BoundField DataField="ACTIVE" HeaderText="Status" />--%>
                                <asp:TemplateField HeaderText="View">
                                    <ItemTemplate>
                                        <a href="SellerAuctionBidding.aspx?ID=<%#Eval("auc_am_id")%>"><span class="glyphicon glyphicon-eye-open" /></a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <a href="AddAuction.aspx?ID=<%#Eval("auc_am_id")%>"><span class="glyphicon glyphicon-edit" /></a>
                                    </ItemTemplate>
                                </asp:TemplateField>
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
                    </div>
                </div>
            </div>
    </div>
    <%--</div>--%>
    <script src="js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/startmin.js"></script>

    <link rel="stylesheet" href="script/jquery1.10.3-ui.css">
    <script src="script/jquery-1.9.1.js"></script>
    <script src="script/jquery1.10.3-ui.js"></script>
    <script src="script/bootstrap3.4.0.min.js"></script>
    <script>
        $(document).ready(function () {
            var selector = '.sidebar-nav ul li ul li';
            var url = window.location.href;
            var target = url.split('/');
            $(selector).each(function () {
                if ($(this).find('a').attr('href') === ('SellerAuctionList.aspx')) {
                    $('nav li a[href="SellerAuctionList.aspx"]').addClass('active');
                    $('[id*=master]').addClass('collapse in');
                }
            });
        });
        //$('ul li a').click(function () {
        //    debugger;
        //    $('li a').removeClass("active");
        //    $(this).addClass("active");
        //});
    </script>
    </form>
    </div>
</asp:Content>


