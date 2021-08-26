<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Auction.Master" CodeBehind="AddAutionDetails.aspx.cs" Inherits="AuctionSite.AddAutionDetails" %>


<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="content2">

    <form id="form1" runat="server">

        <div class="row">
            <div class="col-md-12">
                <h1 class="page-header">
                    <asp:Label ID="Label1" runat="server" Text="Add Auction"></asp:Label></h1>
            </div>
        </div>
        <div class="row">

            <div class="col-md-6">
                <div class="form-group">
                    <label>Seller</label>
                    <asp:DropDownList ID="vendorID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control" Enabled="false"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="vendorID"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Product</label>
                    <asp:DropDownList ID="ProductID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control" Enabled="false"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="ProductID"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="col-md-12" hidden="hidden">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Auction Date</label>
                        <asp:TextBox ID="AUDate" runat="server" placeholder="Enter Date" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="AUDate"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Time Slot</label>
                        <asp:DropDownList ID="TimesloatID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="TimesloatID"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <%--<div class="col-md-12">--%>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Auction Type</label>
                    <asp:DropDownList ID="AUTypeID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control" Enabled="false"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="AUTypeID"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Price</label>
                    <asp:TextBox ID="price" runat="server" placeholder="Enter price" CssClass="form-control" Enabled="false"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="price"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%--</div>--%>
            <%--            <div class="col-md-12">--%>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Auction Margin</label>
                    <asp:TextBox ID="AUMargin" runat="server" placeholder="Enter Margin" CssClass="form-control" Enabled="false"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="AUMargin"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Location</label>
                    <asp:DropDownList ID="LocationID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control" Enabled="false">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="LocationID"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Appproval</label>
                    <asp:DropDownList ID="ApprovalID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control" Enabled="false">
                        <asp:ListItem Text="Pending" Value="0" />
                        <asp:ListItem Text="Approve" Value="1" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" InitialValue="10" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="TimesloatID"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Measurement</label>
                    <asp:DropDownList ID="MeasurID" runat="server" ValidationGroup="AddCoutryButton" Enabled="false" CssClass="form-control">
                    </asp:DropDownList>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Measurement"></asp:RequiredFieldValidator>--%>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Quentity</label>
                    <asp:TextBox ID="Quentity" runat="server" placeholder="Enter Quentity" Enabled="false" CssClass="form-control"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Quentity"></asp:RequiredFieldValidator>--%>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Biding Quentity</label>
                    <asp:TextBox ID="BQTY" runat="server" placeholder="Enter Quentity" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="BQTY"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%--</div>--%>
            <%--            <div class="col-md-12">--%>
            <div class="col-md-6" hidden="hidden">
                <div class="form-group">
                    <label>Buyer</label>
                    <asp:DropDownList ID="BuyerID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="BuyerID"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Biding Amount</label>
                    <asp:TextBox ID="bid" runat="server" placeholder="Enter Biding Amount" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="bid"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <%--</div>--%>
        <div class="col-md-12">
            <div style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="AddCoutryButton" OnClick="Button1_Click" CssClass="btn btn-success" />
                <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" CssClass="btn btn-danger" />
            </div>
        </div>
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div id="ModelPopup" class="modal-content">
                    <%--<div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title"></h4>
                        </div>--%>
                    <div class="modal-body">
                        <p>Data saved successfully !!!</p>
                    </div>
                    <div class="modal-footer">
                        <%--<asp:Button id="btnSubmitPopup" runat="server" class="btn btn-default" data-dismiss="modal" Text="Close" />--%>
                        <asp:Button ID="Button4" runat="server" OnClick="btnSubmitPopup_Click" Text="Ok" class="btn btn-default" ata-dismiss="modal" />
                    </div>

                </div>

            </div>
        </div>

        <div id="sm11" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div id="ModelPopup" class="modal-content">
                    <%--<div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title"></h4>
                        </div>--%>
                    <div class="modal-body">
                        <p>Seller can not bid on his auction</p>
                    </div>
                    <div class="modal-footer">
                        <%--<asp:Button id="btnSubmitPopup" runat="server" class="btn btn-default" data-dismiss="modal" Text="Close" />--%>
                        <asp:Button ID="btnSubmitPopup" runat="server" OnClick="btnSubmitPopup_Click" Text="Ok" class="btn btn-default" ata-dismiss="modal" />
                    </div>

                </div>

            </div>
        </div>


        <div id="MyPopup" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">
                            Close</button>
                    </div>
                </div>
            </div>
        </div>
        <div id="myModal1" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div id="ModelPopup" class="modal-content">
                    <%--<div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title"></h4>
                        </div>--%>
                    <div class="modal-body">
                        <p>Email ID already exists</p>
                    </div>
                    <div class="modal-footer">
                        <%--<asp:Button id="btnSubmitPopup" runat="server" class="btn btn-default" data-dismiss="modal" Text="Close" />--%>
                        <asp:Button ID="Button3" runat="server" Text="Ok" class="btn btn-default" ata-dismiss="modal" />
                    </div>

                </div>

            </div>
        </div>
        <!-- jQuery -->
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
        <script src="script/gijgo.min.js" type="text/javascript"></script>
        <link href="script/gijgo.min.css" rel="stylesheet" type="text/css" />
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
            //RR
            //$("form").submit(function () {
            //    var _txt1 = $('#Quentity').val();
            //    var _txt2 = $('#bid').val();

            //    if (_txt1 >= _txt2) {
            //        alert('Matching!');
            //        return true;
            //    }
            //    else {
            //        alert('Not matching!');
            //        return false;
            //    }
            //});



            //$(document).ready(function () {
            //    var selector = '.sidebar-nav ul li ul li';
            //    var url = window.location.href;
            //    var target = url.split('/');
            //    $(selector).each(function () {
            //        if ($(this).find('a').attr('href') === ('StatusMasterList.aspx')) {
            //            $('nav li a[href="StatusMasterList.aspx"]').addClass('active');
            //            $('[id*=master]').addClass('collapse in');
            //        }
            //    });
            //});
            $('#ContentPlaceHolder1_AUDate').datepicker({
                //format: 'YYYY/MM/DD'
                uiLibrary: 'bootstrap',
                format: 'dd-mm-yyyy'
            });
            function showModal() {
                $("#myModal").modal("show");
            }
            function showModal1() {
                $("#myModal1").modal("show");
            }
            function ShowPopup(title, body) {
                debugger
                $("#MyPopup .modal-title").html(title);
                $("#MyPopup .modal-body").html(body);
                $("#MyPopup").modal("show");
            }
            function sm() {
                $("#sm11").modal("show");
            }
            function sm1() {
                $("#sm12").modal("show");
            }
        </script>
    </form>

</asp:Content>
