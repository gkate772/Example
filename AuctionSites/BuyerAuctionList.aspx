<%@ Page Title="" Language="C#" MasterPageFile="~/Auction.Master" AutoEventWireup="true" CodeBehind="BuyerAuctionList.aspx.cs" Inherits="AuctionSites.BuyerAuctionList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div class="row">
            <div class="col-lg-12">

                <h1 class="page-header">MY BID</h1>
            </div>

        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                List
           
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
<%--                        <div class="col-6 col-md-3">
                            <div class="form-group">
                                <label>Buyer</label>
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
                    </div>
                    <div class="col-12" style="text-align: right">
                        <div class="form-group">
                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" OnClick="Button2_Click" Text="Search"></asp:Button>
                        </div>
                    </div>

                </div>
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
                            <asp:BoundField DataField="BuyerName" HeaderText="Buyer Name" />
                            <asp:BoundField DataField="auc_prod_name" HeaderText="Product Name" />
                            <asp:BoundField DataField="auc_typ_name" HeaderText="Auction Type" />
                            <asp:BoundField DataField="auc_ad_dttime" HeaderText="Auction Date" />
                            <%--<asp:BoundField DataField="timeslot" HeaderText="Time slot" />--%>
                            <asp:BoundField DataField="auc_ad_margin" HeaderText="Margin Price" />
                            <asp:BoundField DataField="Bquentity" HeaderText="Biding Quantity" />
                            <asp:BoundField DataField="auc_ad_bid" HeaderText="Bid Amount" />
                            <asp:BoundField DataField="auc_mes_name" HeaderText="Measurement" />
                            <asp:BoundField DataField="contractcode" HeaderText="contract Code" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                            <asp:TemplateField HeaderText="View Document">
                                <ItemTemplate>
                                    <a href="UploadImages/<%# Eval("FILENAME") %>" target="_blank" style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("FILENAME"))) ? "display:none": "display:block" %>'><span class="fa fa-file-pdf-o" style="font-size: large" /></a>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <%--<asp:TemplateField HeaderText="contract pdf">
                        <ItemTemplate>
                            <a href="#"><span class="glyphicon glyphicon-file" /></a>
                        </ItemTemplate>
                    </asp:TemplateField>--%>

                            <asp:TemplateField HeaderText="Details">
                                <ItemTemplate>
                                    <a href="Details.aspx?ID=<%#Eval("auc_am_id")%>"><span class="fa fa-folder-open" style="font-size: large" /></a>
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


        <script type="text/javascript" src="js/addons/datatables.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- MDBootstrap Datatables  -->
        <script type="text/javascript" src="js/addons/datatables.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#dtBasicExample').DataTable();
                $('.dataTables_length').addClass('bs-select');
            });

        </script>
        <%--<style>
        select.form-control:not([size]):not([multiple]) {
                height: calc(2.25rem + 2px) !important;
            }
        </style>--%>
    </form>
</asp:Content>
