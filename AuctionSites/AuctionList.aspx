<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Auction.Master" CodeBehind="AuctionList.aspx.cs" Inherits="AuctionSite.AuctionList" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="content2">

    <form id="form2" runat="server">
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-header">Auction List</h1>
            </div>
        </div>
        <div class="row">
            
            <div class="">
                <%--                    <div class="panel-heading">
                        List
                    </div>--%>

                <%-- <div class="panel-body">--%>

                <div class="col-md-12">
                    <%--<div class="col-lg-6">
                                <div class="form-group">
                                    <label>Vendor</label>
                                    <asp:TextBox ID="Name" runat="server" placeholder="Enter Vendor" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="col-lg-2" style="margin-top: 25px;">
                                    <div class="form-group">
                                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" OnClick="Button2_Click" Text="Search"></asp:Button>
                                    </div>
                                </div>
                            </div>--%>
                </div>
                <%--<asp:GridView ID="CountryGridView" runat="server" class="table table-striped table-bordered table-hover">

                        </asp:GridView>--%>

                <div class="table-responsive col-md-12">
                    <asp:Label ID="Label1" runat="server" Text="No data found"></asp:Label>
                    <asp:GridView ID="CountryGridView" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="CountryGridView_PageIndexChanging" AllowPaging="True" OnRowCommand="CountryGridView_RowCommand" OnRowEditing="CountryGridView_RowEditing" CssClass="table table-striped table-bordered table-hover" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="SN">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:BoundField DataField="CSM_ID" HeaderText="ID" />--%>
                            <asp:BoundField DataField="Seller" HeaderText="Seller Name" />
                            <asp:BoundField DataField="auc_prod_name" HeaderText="Product Name" />
                            <asp:BoundField DataField="Date" HeaderText="Auction Date" />
                            <asp:BoundField DataField="Type" HeaderText="Auction Type" />
                            <asp:BoundField DataField="auc_am_price" HeaderText="Price" />
                            <asp:BoundField DataField="auc_am_marginmoney" HeaderText="Margin Price" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                            <asp:BoundField DataField="auc_am_Specification" HeaderText="Specification" />
                            <asp:TemplateField HeaderText="View Document">
                                <ItemTemplate>
                                    <a href="UploadImages/<%# Eval("FILENAME") %>" target="_blank" style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("FILENAME"))) ? "display:none" : "display:block" %>'> <span class="fa fa-file-pdf-o " style="font-size:large"/></a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Bid">
                                <ItemTemplate>
                                    <a href="AddAutionDetails.aspx?ID=<%#Eval("auc_am_id")%>"><span class="fa fa-gavel" /></a>
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
                    if ($(this).find('a').attr('href') === ('AuctionList.aspx')) {
                        $('nav li a[href="AuctionList.aspx"]').addClass('active');
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


