<%@ Page Title="" Language="C#" MasterPageFile="~/Auction.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="AuctionSites.details" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="panel-body">
            <div class="row">
                <div class="col-md-12">

                    <h1 class="page-header">
                        <asp:Label ID="Label1" runat="server" Text="Add Auction"></asp:Label></h1>
                </div>
            </div>
            <div class="row" >
                <div class="col-6 col-md-3">
                    <div class="form-group ">
                        <label>Vendor</label>
                        <asp:DropDownList Enabled="false" ID="vendorID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="vendorID"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="form-group">
                        <label>Product</label>
                        <asp:DropDownList Enabled="false" ID="ProductID" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="ProductID"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-6 col-md-3">
                    <div class="form-group">
                        <label>Auction Date</label>
                        <asp:TextBox ID="AUDate" Enabled="false" runat="server" placeholder="Enter Date" AutoCompleteType="Disabled" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" Display="Dynamic" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="AUDate"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="form-group">
                        <label>Time Slot</label>
                        <asp:DropDownList ID="TimesloatID" Enabled="false" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" Display="Dynamic" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="TimesloatID"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="form-group">
                        <label>Auction Type</label>
                        <asp:DropDownList ID="AUTypeID" Enabled="false" runat="server" ValidationGroup="AddCoutryButton" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" Display="Dynamic" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="AUTypeID"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="form-group">
                        <label>Price</label>
                        <asp:TextBox ID="price" runat="server" Enabled="false" placeholder="Enter price" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" Display="Dynamic" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="price"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="form-group">
                        <label>Auction Margin</label>
                        <asp:TextBox ID="AUMargin" Enabled="false" runat="server" placeholder="Enter Margin" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" Display="Dynamic" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="AUMargin"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-6 col-md-3">
                    <div class="form-group">
                        <label>Appproval</label>
                        <asp:DropDownList ID="ApprovalID" runat="server" Enabled="false" ValidationGroup="AddCoutryButton" CssClass="form-control">
                            <asp:ListItem Text="Pending" Value="0" />
                            <asp:ListItem Text="Approve" Value="1" />
                        </asp:DropDownList>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="TimesloatID"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>

                <div class="col-6 col-md-3">
                    <div class="form-group">
                        <label>Location</label>
                        <asp:DropDownList ID="LocationID" runat="server" Enabled="false" ValidationGroup="AddCoutryButton" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" Display="Dynamic" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="LocationID"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-6 col-md-3">
                    <div class="form-group">
                        <label>Quentity</label>
                        <asp:TextBox ID="Quentity" runat="server" Enabled="false" placeholder="Enter Quentity" CssClass="form-control"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator16" Display="Dynamic" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Quentity"></asp:RequiredFieldValidator>--%>
                    </div>
                </div>

                <div class="col-6 col-md-3">
                    <div class="form-group">
                        <label>Measurement</label>
                        <asp:DropDownList ID="MeasurID" runat="server" Enabled="false" ValidationGroup="AddCoutryButton" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="MeasurID"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <label>Specification</label>
                        <asp:TextBox ID="Specification" runat="server" Enabled="false" placeholder="Enter Specification" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Specification"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <%--<div class="col-lg-3">
                    <div class="form-group">
                        <label>Upload Document <span style="color: red">(pdf file only)</span></label>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:RequiredFieldValidator ID="RFFile" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-lg-2">
                    <div class="col-lg-12" style="margin-top: 25px;">
                        <div class="form-group">
                            <asp:Button ID="btnUpload" runat="server" Text="Upload" ValidationGroup="AddCoutryButton" CssClass="btn btn-success" autopostback="true" OnClick="btnUpload_Click" />
                        </div>
                    </div>
                </div>--%>

            </div>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" PageSize="5" AllowPaging="True" CssClass="table table-striped table-bordered table-hover" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                <%--                <Columns>
                    <asp:BoundField DataField="FILENAME" HeaderText="Image" ControlStyle-Width="100" ControlStyle-Height="100" />
 

                </Columns>--%>

                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <%--<asp:BoundField DataField="auction_mast_ID" HeaderText="auction_mast_ID" SortExpression="auction_mast_ID" />--%>
                    <asp:BoundField DataField="FILENAME" HeaderText="FILENAME" SortExpression="FILENAME" />
                     <asp:TemplateField HeaderText="view" SortExpression="PATH">
                        <ItemTemplate>
                            <%--<asp:LinkButton ID="LinkButton1" runat="server"   CommandArgument='<%# Eval("PATH") %>' Text="View"  ></asp:LinkButton>--%>
                            <a href="UploadImages/<%# Eval("FILENAME") %>" target="_blank" ><span class="glyphicon  glyphicon-file" /></a>
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

            <div class="col-lg-12">
                <div style="text-align: center">
                    <%--<asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="AddCoutryButton" OnClick="Button1_Click" CssClass="btn btn-success" />--%>
                    <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" CssClass="btn btn-danger" />
                </div>
            </div>
        </div>

        




        <script type="text/javascript" src="js/addons/datatables.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- MDBootstrap Datatables  -->
        <script type="text/javascript" src="js/addons/datatables.min.js"></script>

        <link href="script/jquery1.10.3-ui.css" rel="stylesheet" />
        <script src="script/select2.min.js"></script>
        <link href="script/select2.min.css" rel="stylesheet" />
        <script src="script/jquery1.10.3-ui.js"></script>
        <script src="script/jquery-1.9.1.js"></script>
        <script src="script/gijgo.min.js"></script>
        <link href="script/gijgo.min.css" rel="stylesheet" />
        <script src="script/bootstrap3.4.0.min.js"></script>

        <%--    <link rel="stylesheet" href="script/jquery1.10.3-ui.css" />
    <script src="script/jquery-1.9.1.js"></script>
    <script src="script/jquery1.10.3-ui.js"></script>
    <script src="script/bootstrap3.4.0.min.js"></script>
    <script src="script/gijgo.min.js" type="text/javascript"></script>
    <link href="script/gijgo.min.css" rel="stylesheet" type="text/css" />--%>

        <script type="text/javascript">
            //$(document).ready(function () {
            //    $('#dtBasicExample').DataTable();
            //    $('.dataTables_length').addClass('bs-select');
            //});

            //$(document).ready(function () {
            //    var selector = '.sidebar-nav ul li ul li';
            //    var url = window.location.href;
            //    var target = url.split('/');
            //    $(selector).each(function () {
            //        if ($(this).find('a').attr('href') === ('Auction.aspx')) {
            //            $('nav li a[href="Auction.aspx"]').addClass('active');
            //            $('[id*=master]').addClass('collapse in');
            //        }
            //    });
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
                $("#MyPopup .modal-title").html(title);
                $("#MyPopup .modal-body").html(body);
                $("#MyPopup").modal("show");
            }

        </script>
        </div>
    </form>

</asp:Content>
