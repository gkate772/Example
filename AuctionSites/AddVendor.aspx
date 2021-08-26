<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Auction.Master" CodeBehind="AddVendor.aspx.cs" Inherits="AuctionSite.AddVendor" %>


<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="content2">
    <div class="panel-body">
        <form id="form1" runat="server">
            
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><asp:Label ID="Label1" runat="server" Text="Add Vendor"></asp:Label></h1>
                </div>
            </div>
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-body">

                        <div class="col-lg-12">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>First Name</label>
                                    <asp:TextBox ID="Name1" runat="server" placeholder="Enter First Name" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Name1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <asp:TextBox ID="Name2" runat="server" placeholder="Enter Last Name" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Name2"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label>Address</label>
                                    <asp:TextBox ID="Address" runat="server" placeholder="Enter Address" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Address"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:DropDownList ID="CityID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="CityID"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Country</label>
                                    <asp:DropDownList ID="CountryID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="CountryID"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Phone 1</label>
                                    <asp:TextBox ID="Phone1" MaxLength="15" TextMode="Number" runat="server" placeholder="Enter Number" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Phone1"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Phone 2</label>
                                    <asp:TextBox ID="Phone2" TextMode="Number" MaxLength="15" runat="server" placeholder="Enter Number" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Phone2"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Phone 3</label>
                                    <asp:TextBox ID="Phone3" TextMode="Number" MaxLength="15" runat="server" placeholder="Enter Number" CssClass="form-control"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Phone3"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Wallet Amount</label>
                                    <asp:TextBox ID="Amount" TextMode="Number" runat="server" placeholder="Enter Number" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Amount"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Email ID</label>
                                    <asp:TextBox ID="EmailID" runat="server" placeholder="Enter Email ID" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="EmailID"></asp:RequiredFieldValidator>
                                    <div class="clearfix"></div>
                                    <asp:RegularExpressionValidator ControlToValidate="emailID" ValidationGroup="AddCoutryButton" ID="RegularExpressionValidator5" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ForeColor="red" ErrorMessage="*Please Enter Valid Email ID."></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>PassWord</label>
                                    <asp:TextBox ID="Password"   runat="server" placeholder="Enter PassWord" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Password"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                       <%-- <div class="col-lg-12" hidden="hidden">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <asp:CheckBox ID="status" runat="server" Checked="true" />
                                    <label>Active?</label>
                                </div>
                            </div>
                        </div>--%>
                        <div class="col-lg-12">
                            <div style="text-align: center">
                                <%-- <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-success" />
                                <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" CssClass="btn btn-danger" />--%>
                                <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="AddCoutryButton" OnClick="Button1_Click" CssClass="btn btn-success" />
                                <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" CssClass="btn btn-danger" />
                            </div>
                        </div>
                    </div>
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
                            <asp:Button ID="btnSubmitPopup" runat="server" OnClick="btnSubmitPopup_Click" Text="Ok" class="btn btn-default" ata-dismiss="modal" />
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
            <script>
                $(document).ready(function () {
                    var selector = '.sidebar-nav ul li ul li';
                    var url = window.location.href;
                    var target = url.split('/');
                    $(selector).each(function () {
                        if ($(this).find('a').attr('href') === ('VendorDetails.aspx')) {
                            $('nav li a[href="VendorDetails.aspx"]').addClass('active');
                            $('[id*=master]').addClass('collapse in');
                        }
                    });
                });
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
                
                function showModal() {
                    $("#myModal").modal("show");
                }
                function showModal1() {
                    $("#myModal1").modal("show");
                }
            </script>
        </form>
    </div>
</asp:Content>
