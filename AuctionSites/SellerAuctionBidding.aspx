<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Auction.Master" CodeBehind="SellerAuctionBidding.aspx.cs" Inherits="AuctionSites.SellerAuctionBidding" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="content2">
    <div class="panel-body">
        <form id="form2" runat="server">
            <div class="row">
                <div class="col-lg-12">
                    <%--<h4 class="page-header">DashBoard/Vendor </h4>--%>
                    <h1 class="page-header">Buyer Bidding List</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
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

                        <%--<div class="col-lg-12">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Seller</label>
                                    <asp:DropDownList ID="vendorID" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Product</label>
                                    <asp:DropDownList ID="ProductID" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Type</label>
                                    <asp:DropDownList ID="TypeID" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Time Sloat</label>
                                    <asp:DropDownList ID="TimeloatID" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="col-lg-12">
                                    <div class="form-group" style="text-align: right">
                                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" OnClick="Button2_Click" Text="Search"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
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
                                        <asp:BoundField DataField="BuyerName" HeaderText="Buyer Name" />
                                        <asp:BoundField DataField="auc_ad_margin" HeaderText="Margin Price" />
                                        <asp:BoundField DataField="auc_ad_bid" HeaderText="Bidding Amount" />
                                        <asp:BoundField DataField="Bquentity" HeaderText="Bidding Quantity" />
                                        <asp:BoundField DataField="Mesurement" HeaderText="Mesurement" />
                                        <asp:BoundField DataField="auc_ad_dttime" HeaderText="Bidding on" />
                                        <%--<asp:BoundField DataField="auc_am_price" HeaderText="Price" />--%>
                                        <%--<asp:BoundField DataField="auc_am_marginmoney" HeaderText="Margin Price" />--%>
                                        <asp:BoundField DataField="Status" HeaderText="Aproval Status" />
                                        <asp:BoundField DataField="ContractCode" HeaderText="Contract Code" />
                                        <%--<asp:BoundField DataField="ACTIVE" HeaderText="Status" />--%>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:HiddenField runat="server" ID="hdfEMPID" Value='<%#Eval("auc_ad_id")%>' />
                                                <a href="#" data-toggle="modal" data-target="#myModal"><span id="ValName" class="glyphicon glyphicon-edit" /></a>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%--<asp:TemplateField HeaderText="View">
                                            <ItemTemplate>
                                                <a href="SellerAuctionBidding.aspx?ID=<%#Eval("")%>"><span class="glyphicon glyphicon-eye-open" /></a>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                        <%--<asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="del" CommandArgument='<%#Eval("ID")%>'> <span class="glyphicon glyphicon-trash" /></asp:LinkButton>
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <%--<h4 class="modal-title">Assign Role</h4>--%>
                        </div>
                        <div class="modal-body" style="height: 150px;">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label>Approve?</label>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <asp:DropDownList ID="StatusID" runat="server" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button runat="server" ID="btnApprove" class="btn btn-primary" data-dismiss="modal" Text="Save"></asp:Button>
                            <asp:Button runat="server" ID="btnReject" class="btn btn-secondary" data-dismiss="modal" Text="Close"></asp:Button>
                        </div>
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
                        if ($(this).find('a').attr('href') === ('SellerAuctionList.aspx')) {
                            $('nav li a[href="SellerAuctionList.aspx"]').addClass('active');
                            $('[id*=master]').addClass('collapse in');
                        }
                    });
                });
                $(function () {

                    var RowNuber;
                    var ColNumber;
                    var oldname;

                    $('td').click(function () {
                        debugger;
                        var col = $(this).parent().children().index($(this));
                        var row = $(this).parent().parent().children().index($(this).parent());
                        RowNuber = row;
                        ColNumber = col;
                        var index = $("#ContentPlaceHolder1_StatusID").find(":contains(" + document.getElementById("ContentPlaceHolder1_CountryGridView").rows[row].cells[5].innerHTML + ")").val()
                        $('#ContentPlaceHolder1_StatusID :nth-child(' + index + ')').prop('selected', true);
                        //for (var i=0; i < $("#ContentPlaceHolder1_ddlRole option").length; i++)
                        //{
                        //    if ($("#ContentPlaceHolder1_ddlRole option")[i].text == document.getElementById("ContentPlaceHolder1_GridView1").rows[row].cells[5].innerHTML)
                        //    {
                        //        $("#ContentPlaceHolder1_ddlRole option:selected").val($("#ContentPlaceHolder1_ddlRole option")[i].value);
                        //    }
                        //}
                        //$("#ContentPlaceHolder1_ddlRole option:selected").text() = document.getElementById("ContentPlaceHolder1_GridView1").rows[row].cells[5].innerHTML;
                    });

                    $('[id*=btnApprove]').click(function () {   ////[id*=btnApprove] previous code                          
                        debugger;
                        var UserDetail = {};

                        var rn = parseInt(RowNuber) - 1;

                        var table = document.getElementById("ContentPlaceHolder1_CountryGridView");
                        var rows = table.rows;
                        //UserDetail.emailid = rows[RowNuber].cells[3].innerHTML;

                        UserDetail.EmpId = $('#ContentPlaceHolder1_CountryGridView_hdfEMPID_' + rn.toString()).val();//[id*=hdfVendorId]

                        UserDetail.ddlRole = $("#ContentPlaceHolder1_StatusID option:selected").text();     //$("#ddlnewName option:selected").text();   //$("#ddlnewName option:selected").text();           ///$('[id*=hdfNewName]').text();                          

                        //UserDetail.ddlType = $("#ContentPlaceHolder1_ddlType option:selected").text();

                        $.ajax({
                            type: "POST",
                            url: "SellerAuctionBidding.aspx/RequestDetails",
                            data: '{UserDetail :' + JSON.stringify(UserDetail) + '}',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (response) {
                                debugger
                                if (response.d == "1") {
                                    alert("Bid quantity greater than pending quantity");
                                }
                                else {
                                    window.location.reload();
                                }
                                //alert(hidd);
                            },
                            failure: function (response) {
                                //alert('Failed');
                            },
                            error: function (response) {
                                //alert('Error');
                            }
                        });
                        //

                        //
                        //window.location.reload();
                    });
                });
            </script>
        </form>
    </div>
</asp:Content>


