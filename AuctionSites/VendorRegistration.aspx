<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="VendorRegistration.aspx.cs" Inherits="AUCTIONSITE.VendorRegistration" %>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">--%>

<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="htmlcss bootstrap, multi level menu, submenu, treeview nav menu examples" />
    <meta name="description" content="Bootstrap 5 navbar multilevel treeview examples for any type of project, Bootstrap 5" />

    <title>Petrolium Bazaar</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <!-- MDBootstrap Datatables  -->
    <link href="css/addons/datatables.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" />
    <!-- MDBootstrap Datatables  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        @media (min-width: 576px) {
            .navbar-expand-lg .navbar-nav .nav-link {
                padding-right: 6.5rem;
                padding-left: .5rem;
            }
        }

        .login_formdiv {
            position: absolute;
            top: 5%;
            height: auto;
            background-color: #5d5c5c;
            z-index: 9;
            right: 10px;
            opacity: 1;
            width: 20%;
            padding: 20px 20px;
        }

        select.form-control:not([size]):not([multiple]) {
            height: 34px !important;
        }

        .login_input {
            width: 100%;
            padding: 5px 5px;
        }

        a {
            text-decoration: underline;
        }

        .border {
            border-left: 4px solid #fdec4c;
        }

        .fa {
            /*padding: 20px;*/
            font-size: 20px;
            width: 20px;
            text-align: center;
            text-decoration: none;
            margin: 5px 2px;
            border-radius: 50%;
        }

            .fa:hover {
                opacity: 0.7;
            }

        .fa-facebook {
            background: #3B5998;
            color: white;
        }

        .fa-twitter {
            background: #55ACEE;
            color: white;
        }

        .fa-linkedin {
            background: #007bb5;
            color: white;
        }

        .fa-youtube {
            background: #bb0000;
            color: white;
        }

        .fa-instagram {
            background: #125688;
            color: white;
        }

        @media (max-width: 768px) {
            .login_formdiv {
                position: absolute;
                top: 5%;
                height: auto;
                background-color: #5d5c5c;
                z-index: 9;
                right: 0px;
                opacity: 1;
                width: 70%;
                padding: 20px 20px;
            }
        }
    </style>
    <script src="https://kit.fontawesome.com/b4c396ddea.js" crossorigin="anonymous"></script>
    <link href="online/font-awesome.min.css" rel="stylesheet" />


    <%--<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">--%>
    <%--   <link href="css/addons/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="script/gijgo.min.css" rel="stylesheet" />
    <script src="script/gijgo.min.js"></script>
    <script src="script/bootstrap3.4.0.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="css/style.css" rel="stylesheet" />

    <script type="text/javascript"></script>
    <%--<link href="Content/bootstrap.css" rel="stylesheet" />--%>
</head>
<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="scriptManager1" runat="server"></asp:ScriptManager>
        <%--        <asp:UpdatePanel ID="updatePannel" runat="server">
            <ContentTemplate>--%>

        <div class="container-fluid	">

            <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                <!-- Brand/logo -->
                <a class="navbar-brand" href="#">
                    <img src="bird.jpg" alt="logo" style="width: 40px;">
                    <span>Petroleum Bazaar</span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Links -->
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link" href="Home.aspx">Home </a></li>
                        <li class="nav-item"><a class="nav-link" href="#">About Us </a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Auction </a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Support </a></li>
                    </ul>
                </div>
            </nav>

            <!-- <section> -->
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/download.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Petroleum Bazaar Online Auction</h5>
                            <p>An easy way to manage and participate abd get the best experience.</p>
                            <button type="button" class="btn btn-secondary mt-4">Learn More</button>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/download.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Petroleum Bazaar Online Auction</h5>
                            <p>An easy way to manage and.</p>
                            <button type="button" class="btn btn-secondary mt-4">Learn More</button>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/download.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Petroleum Bazaar Online Auction</h5>
                            <p>An easy way to manage and participate abd get the best experience.</p>
                            <button type="button" class="btn btn-secondary mt-4">Learn More</button>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>


            </div>
            <!-- </section> -->
            <section class="section-content py-3">
                <div class="row">
                    <div class="col-md-3">
                        <button type="button" class="btn btn-primary mt-4 p-3 col-12">Supplier's Manual</button></br>
				
                        <button type="button" class="btn btn-primary mt-4 p-3 col-12">Completed / Past Auction</button></br>
				
                        <button type="button" class="btn btn-primary mt-4 p-3 col-12">Bidders Manual</button></br>
				
                        <button type="button" class="btn btn-primary mt-4 p-3 col-12">Forthcoming Auction</button>
                        <button type="button" onclick="window.location.href='AddAuction'" runat="server" class="btn btn-primary mt-4 p-3 col-12">Add Auction</button>
                        <button type="button" class="btn btn-primary mt-4 p-3 col-12">My Auction</button>
                        <button type="button" onclick="window.location.href='BuyerAuctionList'" class="btn btn-primary mt-4 p-3 col-12">My Bid</button>
                    </div>

                    <div class="col-md-9">

                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    <asp:Label ID="Label1" runat="server" Text="Vendor Registration"></asp:Label></h1>
                            </div>
                        </div>
                        <div class="panel panel-default">

                            <div class="panel-body">

                                <div class="row">

                                    <div class="col-6 col-md-3">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <asp:TextBox ID="Name" runat="server" placeholder="Enter First Name" CssClass="form-control"></asp:TextBox>
                                            <%--<asp:Label runat="server" ID="lblcountry" Visible="false"></asp:Label>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Name"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-6 col-md-3">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <asp:TextBox ID="LastName" runat="server" placeholder="Enter Last Name" CssClass="form-control"></asp:TextBox>
                                            <%--<asp:Label runat="server" ID="lblcountry" Visible="false"></asp:Label>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="LastName"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-6 col-md-3">
                                        <div class="form-group">
                                            <label>Address</label>
                                            <asp:TextBox ID="Address" runat="server" placeholder="Enter Address" CssClass="form-control"></asp:TextBox>
                                            <%--<asp:Label runat="server" ID="lblcountry" Visible="false"></asp:Label>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Address"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-6 col-md-3">
                                        <div class="form-group">
                                            <label>Country</label>
                                            <%--<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Country" CssClass="form-control"></asp:TextBox>--%>
                                            <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="ddlCountry"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-6 col-md-3">
                                        <div class="form-group">
                                            <label>City</label>
                                            <%--<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Country" CssClass="form-control"></asp:TextBox>--%>
                                            <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="0" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="ddlCity">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                    </div>


                                    <div class="col-6 col-md-3">
                                        <div class="form-group">
                                            <label>Phone 1</label>
                                            <asp:TextBox ID="Phone1" TextMode="Number" runat="server" placeholder="Enter Phone1" CssClass="form-control"></asp:TextBox>
                                            <%--<asp:Label runat="server" ID="lblcountry" Visible="false"></asp:Label>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Phone1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-6 col-md-3">
                                        <div class="form-group">
                                            <label>Phone 2</label>
                                            <asp:TextBox ID="Phone2" TextMode="Number" runat="server" placeholder="Enter Phone2" CssClass="form-control"></asp:TextBox>
                                            <%--<asp:Label runat="server" ID="lblcountry" Visible="false"></asp:Label>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Phone2"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="col-6 col-md-3">
                                        <div class="form-group">
                                            <label>Email ID</label>
                                            <asp:TextBox ID="Email" runat="server" TextMode="Email" placeholder="Enter Email" CssClass="form-control"></asp:TextBox>
                                            <%--<asp:Label runat="server" ID="lblcountry" Visible="false"></asp:Label>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Email"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-6 col-md-3">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <asp:TextBox ID="Password" runat="server" placeholder="Enter Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                            <%--<asp:Label runat="server" ID="lblcountry" Visible="false"></asp:Label>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="Password"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>


                                </div>

                                <asp:HiddenField ID="hidTAB" runat="server" Value="#nav-license" ClientIDMode="Static" />

                                <nav>
                                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                        <a class="col-lg-4 nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-license" role="tab" aria-controls="nav-home" aria-selected="true">
                                            <h4>Licence</h4>
                                        </a>
                                        <a class="col-lg-4 nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-GST" role="tab" aria-controls="nav-profile" aria-selected="false">
                                            <h4>GST</h4>
                                        </a>
                                        <a class="col-lg-4 nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-BankDetails" role="tab" aria-controls="nav-contact" aria-selected="false">
                                            <h4>Bank details</h4>
                                        </a>
                                    </div>
                                </nav>

                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="nav-license" role="tabpanel" aria-labelledby="nav-license-tab">
                                        <div class="col-lg-12 ">
                                            <div class="form-group">

                                                <asp:GridView ID="gvLicense" runat="server" ShowFooter="true" AutoGenerateColumns="false" AllowPaging="true"
                                                    PageSize="10" CssClass="table table-striped table-bordered table-hover" CellPadding="4"
                                                    ForeColor="#333333" GridLines="none"
                                                    OnRowCommand="gvLicense_RowCommand">
                                                    <AlternatingRowStyle BackColor="white" ForeColor="#284775" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Licence No.">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtLicenseNo" runat="server" placeholder="Enter Licence Number "></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="File Name">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtFileName" runat="server" placeholder="File Name" ReadOnly="true"></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="View File">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="ViewLink" Text="View" CommandName="View" CommandArgument="<%# Container.DataItemIndex %>" runat="server" placeholder="Download" ReadOnly="true"></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Upload">
                                                            <ItemTemplate>
                                                                <asp:FileUpload ID="fuUpload" runat="server" Style="padding-bottom: 10px;" />
                                                                <asp:HiddenField ID="hfFileByte" runat="server" />
                                                                <asp:Button Text="Upload" runat="server" CommandName="Upload" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                <asp:RegularExpressionValidator
                                                                    ID="FileUpLoadValidator" runat="server"
                                                                    ErrorMessage="Upload image and pdf only."
                                                                    ValidationExpression="^.*\.(jpg|jpeg|JPG|JPEG|png|PNG|pdf|PDF)$"
                                                                    ControlToValidate="fuUpload">  
                                                                </asp:RegularExpressionValidator>
                                                            </ItemTemplate>

                                                            <FooterStyle HorizontalAlign="Right" />
                                                            <FooterTemplate>
                                                                <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" AutoPostBack="false" OnClick="AddNewRowToLicenseGrid" CssClass="text-dark" />
                                                            </FooterTemplate>
                                                        </asp:TemplateField>

                                                    </Columns>
                                                    <EditRowStyle BackColor="#999999" />
                                                    <FooterStyle BackColor="#5d7b9d" Font-Bold="true" ForeColor="white" />
                                                    <HeaderStyle BackColor="#5d7b9d" Font-Bold="true" ForeColor="white" />
                                                    <PagerStyle BackColor="#284775" ForeColor="white" HorizontalAlign="center" />
                                                    <RowStyle BackColor="#f7f6f3" ForeColor="#333333" />
                                                    <SelectedRowStyle BackColor="#e2ded6" Font-Bold="true" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#e9e7e2" />
                                                    <SortedAscendingHeaderStyle BackColor="#506c8c" />
                                                    <SortedDescendingCellStyle BackColor="#fffdf8" />
                                                    <SortedDescendingHeaderStyle BackColor="#6f8dae" />
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="nav-GST" role="tabpanel" aria-labelledby="nav-GST-tab">
                                        <div class="col-lg-12 ">
                                            <div class="form-group">
                                                <asp:GridView ID="gvGST" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                                                    PageSize="10" CssClass="table table-striped table-bordered table-hover" CellPadding="4"
                                                    ForeColor="#333333" GridLines="none"
                                                    OnRowCommand="gvGST_RowCommand">
                                                    <AlternatingRowStyle BackColor="white" ForeColor="#284775" />
                                                    <Columns>
                                                        <%--<asp:boundfield datafield="auc_GST_no" headertext="GST no" />--%>
                                                        <asp:TemplateField HeaderText="GST NO">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtGSTNo" runat="server" placeholder="Enter GST Number "></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="File Name">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtFileName" runat="server" placeholder="File Name" ReadOnly="true"></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>


                                                        <asp:TemplateField HeaderText="View File">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="ViewLink" Text="View" CommandName="View" CommandArgument="<%# Container.DataItemIndex %>" runat="server" placeholder="Download" ReadOnly="true"></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>


                                                        <asp:TemplateField HeaderText="Upload">
                                                            <ItemTemplate>
                                                                <asp:FileUpload ID="fuUpload" runat="server" Style="padding-bottom: 10px;" />
                                                                <asp:HiddenField ID="hfFileByte" runat="server" />
                                                                <asp:Button Text="Upload" runat="server" CommandName="Upload" CommandArgument="<%# Container.DataItemIndex %>" />
                                                                <asp:RegularExpressionValidator
                                                                    ID="FileUpLoadValidator" runat="server"
                                                                    ErrorMessage="Upload image and pdf only."
                                                                    ValidationExpression="^.*\.(jpg|jpeg|JPG|JPEG|png|PNG|pdf|PDF)$"
                                                                    ControlToValidate="fuUpload">  
                                                                </asp:RegularExpressionValidator>
                                                            </ItemTemplate>

                                                            <FooterStyle HorizontalAlign="Right" />
                                                            <FooterTemplate>
                                                                <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" AutoPostBack="false" OnClick="AddNewRowToLicenseGrid" CssClass="text-dark" />
                                                            </FooterTemplate>
                                                        </asp:TemplateField>

                                                    </Columns>
                                                    <EditRowStyle BackColor="#999999" />
                                                    <FooterStyle BackColor="#5d7b9d" Font-Bold="true" ForeColor="white" />
                                                    <HeaderStyle BackColor="#5d7b9d" Font-Bold="true" ForeColor="white" />
                                                    <PagerStyle BackColor="#284775" ForeColor="white" HorizontalAlign="center" />
                                                    <RowStyle BackColor="#f7f6f3" ForeColor="#333333" />
                                                    <SelectedRowStyle BackColor="#e2ded6" Font-Bold="true" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#e9e7e2" />
                                                    <SortedAscendingHeaderStyle BackColor="#506c8c" />
                                                    <SortedDescendingCellStyle BackColor="#fffdf8" />
                                                    <SortedDescendingHeaderStyle BackColor="#6f8dae" />
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="nav-BankDetails" role="tabpanel" aria-labelledby="nav-BankDetails-tab">
                                        <div class="col-lg-12 ">
                                            <div class="form-group">
                                                <asp:GridView ID="gvBankDetails" runat="server" ShowFooter="true" AutoGenerateColumns="false" AllowPaging="true"
                                                    PageSize="10" CssClass="table table-striped table-bordered table-hover" CellPadding="4"
                                                    ForeColor="#333333" GridLines="none">
                                                    <AlternatingRowStyle BackColor="white" ForeColor="#284775" />
                                                    <Columns>
                                                        <%--<asp:boundfield datafield="auc_GST_no" headertext="GST no" />--%>
                                                        <asp:TemplateField HeaderText="Bank Name">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtBankName" runat="server" placeholder="Enter Bank Name "></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Bank Location">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtBankLocation" runat="server" placeholder="Enter Bank Location "></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="IFSC Code">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtIFCSCode" runat="server" placeholder="Enter IFSC Code "></asp:TextBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Account Type">
                                                            <ItemTemplate>
                                                                <asp:DropDownList ID="ddlAccountType" runat="server" placeholder="Enter Account Type" AutoPostBack="false">
                                                                    <asp:ListItem Value="0" Text="Select Account"></asp:ListItem>
                                                                    <asp:ListItem Value="1" Text="Saving Account"></asp:ListItem>
                                                                    <asp:ListItem Value="2" Text="Current Account"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                            <FooterStyle HorizontalAlign="Right" />
                                                            <FooterTemplate>
                                                                <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" OnClick="AddNewRowToBankGrid" CssClass="text-dark" />
                                                            </FooterTemplate>
                                                        </asp:TemplateField>

                                                    </Columns>
                                                    <EditRowStyle BackColor="#999999" />
                                                    <FooterStyle BackColor="#5d7b9d" Font-Bold="true" ForeColor="white" />
                                                    <HeaderStyle BackColor="#5d7b9d" Font-Bold="true" ForeColor="white" />
                                                    <PagerStyle BackColor="#284775" ForeColor="white" HorizontalAlign="center" />
                                                    <RowStyle BackColor="#f7f6f3" ForeColor="#333333" />
                                                    <SelectedRowStyle BackColor="#e2ded6" Font-Bold="true" ForeColor="#333333" />
                                                    <SortedAscendingCellStyle BackColor="#e9e7e2" />
                                                    <SortedAscendingHeaderStyle BackColor="#506c8c" />
                                                    <SortedDescendingCellStyle BackColor="#fffdf8" />
                                                    <SortedDescendingHeaderStyle BackColor="#6f8dae" />
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12" style="margin-bottom: 5px">
                                    <div style="text-align: center">
                                        <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="AddCoutryButton" OnClick="Button1_Click" CssClass="btn btn-success" />
                                        <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" CssClass="btn btn-danger" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
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
                        <p>Email Id already exists</p>
                    </div>
                    <div class="modal-footer">
                        <%--<asp:Button id="btnSubmitPopup" runat="server" class="btn btn-default" data-dismiss="modal" Text="Close" />--%>
                        <asp:Button ID="Button3" runat="server" Text="Ok" class="btn btn-default" ata-dismiss="modal" />
                    </div>

                </div>

            </div>
        </div>

        <div class="container-fluid bg-secondary">
            <div class="row pt-4">
                <div class="col-md-3">
                    <h4 class="text-light mb-3 pl-3 border-left">About PetroleumBazaar</h4>
                    <p class="pl-4"><a class="text-light" href="#">Our Commitment</a></p>
                    <p class="pl-4"><a class="text-light" href="#">Our Team</a></p>
                    <p class="pl-4"><a class="text-light" href="#">Offices</a></p>
                    <p class="pl-4"><a class="text-light" href="#">Regulatory Information</a></p>
                </div>

                <div class="col-md-3">
                    <h4 class="text-light mb-3 pl-3 border-left">Online Auction</h4>
                    <p class="pl-4"><a class="text-light" href="#">Normal Auction</a></p>
                    <p class="pl-4"><a class="text-light" href="#">Penny Auction</a></p>
                </div>

                <div class="col-md-3">
                    <h4 class="text-light mb-3 pl-3 border-left">Contact with us</h4>
                    <p class="pl-4"><a href="#" class="fa fa-facebook"></a><a class="text-light" href="#">Facebook</a></p>
                    <p class="pl-4"><a href="#" class="fa fa-instagram"></a><a class="text-light" href="#">Instagram</a></p>
                    <p class="pl-4"><a href="#" class="fa fa-linkedin"></a><a class="text-light" href="#">LinkedIn</a></p>
                    <p class="pl-4"><a href="#" class="fa fa-twitter"></a><a class="text-light" href="#">Twitter</a></p>
                    <p class="pl-4"><a href="#" class="fa fa-youtube"></a><a class="text-light" href="#">YouTube</a></p>
                </div>

                <div class="col-md-3">
                    <h4 class="text-light mb-3 pl-3 border-left">Question?</h4>
                    <p class="pl-4"><a class="text-light" href="#">Contact Us</a></p>
                    <p class="pl-4"><a class="text-light" href="#">FAQ</a></p>
                    <p class="pl-4"><a class="text-light" href="#">Start co-browsing</a></p>
                </div>
            </div>
        </div>

        <%--            </ContentTemplate>
        </asp:UpdatePanel>--%>

        <script src="online/jquery-3.6.0.min.js"></script>
        <script type="text/javascript" src="js/addons/datatables.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="online/bootstrap.min.js"></script>
        <script src="online/bootstrap.min.js"></script>
        <link rel="stylesheet" href="script/jquery1.10.3-ui.css" />
        <script src="script/jquery-1.9.1.js"></script>
        <script src="script/jquery1.10.3-ui.js"></script>
        <script src="script/bootstrap3.4.0.min.js"></script>


        <!-- MDBootstrap Datatables  -->
        <script type="text/javascript" src="js/addons/datatables.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#dtBasicExample').DataTable();
                $('.dataTables_length').addClass('bs-select');
                debugger;
                var tab = document.getElementById('<%= hidTAB.ClientID%>').value;
                //$('#nav-tab a[href="' + tab + '"]').tab('show');

                //$(document).ready(function () {
                //    var selector = '.sidebar-nav ul li ul li';
                //    var url = window.location.href;
                //    var target = url.split('/');
                //    $(selector).each(function () {
                //        if ($(this).find('a').attr('href') === ('Login.aspx')) {
                //            $('nav li a[href="Login.aspx"]').addClass('active');
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
            });
            function showModal() {
                $("#myModal").modal("show");
            }
            function showModal1() {
                $("#myModal1").modal("show");
            }

            <%-- $('#gvBankDetails_ButtonAdd').on('click', function () {
                debugger;
                var tab = document.getElementById('<%= hidTAB.ClientID%>').value;
                $('#nav-tab a[href="' + tab + '"]').tab('show');

            });--%>

</script>
    </form>

</body>
</html>


<%--</asp:Content>--%>
