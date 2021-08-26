<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AuctionSites.Home" %>

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
    <!-- MDBootstrap Datatables  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="online/font-awesome.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
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
                height:34px !important;
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

</head>
<body>
    <form id="form1" runat="server">


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

                <div class="login_formdiv">
                    <h4 class="text-light">Sign In to My Account</h4>
                    <label class="text-light">Email</label><br />
                    <%--<input class="login_input" type="text" name="email">--%>
                    <asp:TextBox ID="txtemail" AutoCompleteType="Disabled" class="login_input" name="email" placeholder="email" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                    <br/>
		  	<label class="text-light">Password</label><br />
                    <%--<input class="login_input" type="password" name="">--%>
                    <asp:TextBox ID="txtpassword" AutoCompleteType="Disabled" runat="server" TextMode="Password" class="login_input" placeholder="Password" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ValidationGroup="AddCoutryButton" ErrorMessage="*This Field Required." ForeColor="Red" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                    <br />
                    <input type="checkbox" name="remember">
                    <label class="text-light">Remember my login Details</label><br />
                    <a class="text-light" href="">Forgot Password?</a><br />
                    <div id="dvMessage" runat="server" visible="false" class="alert alert-danger">
                        <asp:Label ID="lblMessage" runat="server" />
                    </div>
                    <%--<button type="button" class="btn btn-warning mt-4">Sign In</button>--%>
                    <asp:Button ID="btnlogin" runat="server" Text="Sign In" class="btn btn-warning mt-4" ValidationGroup="AddCoutryButton" OnClick="btnlogin_Click" />
                    <button type="button" onclick="window.location.href='VendorRegistration.aspx'" class="btn btn-light float-right mt-4">Register Now</button>
                </div>
            </div>
            </div>
            <!-- </section> -->
            <section class="section-content py-3">


                <div class="row">
                    <div class="col-md-3">
                        <button type="button" class="btn btn-primary mt-4 p-3 col-12">Supplier's Manual</button></br>
					<button type="button" class="btn btn-primary mt-4 p-3 col-12">Completed/Past Auction</button></br>
					<button type="button" class="btn btn-primary mt-4 p-3 col-12">Bidders Manual</button></br>
					<button type="button" class="btn btn-primary mt-4 p-3 col-12">Forthcoming Auction</button>
                        <button type="button" onclick="window.location.href='AddAuction'" runat="server" class="btn btn-primary mt-4 p-3 col-12">Add Auction</button>
                        <button type="button" class="btn btn-primary mt-4 p-3 col-12">My Auction</button>
                        <button type="button" onclick="window.location.href='BuyerAuctionList'" class="btn btn-primary mt-4 p-3 col-12">My Bid</button>

                    </div>

                    <div class="col-md-9">

                        <div class="row">
                            <div class="col-md-12">
                                <%--<h4 class="page-header">DashBoard/Vendor </h4>--%>
                                <h1 class="page-header">Auction List</h1>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <div class="row">
                            <div class="table-responsive col-md-12">


                                <asp:Label ID="Label1" runat="server" Text="No data found"></asp:Label>
                                <asp:GridView ID="CountryGridView" runat="server" AutoGenerateColumns="False" OnRowCommand="CountryGridView_RowCommand" OnRowEditing="CountryGridView_RowEditing" CssClass="table table-striped table-bordered table-hover" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <%--<AlternatingRowStyle BackColor="White" ForeColor="#284775" />--%>
                                    <Columns>
                                        <asp:TemplateField HeaderText="SN">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%--<asp:BoundField DataField="CSM_ID" HeaderText="ID" />--%>
                                        <asp:BoundField DataField="Seller" SortExpression="Seller" HeaderText="Seller Name" />
                                        <asp:BoundField DataField="auc_prod_name" SortExpression="auc_prod_name" HeaderText="Product Name" />
                                        <asp:BoundField DataField="Date" SortExpression="Date" HeaderText="Auction Date" />
                                        <asp:BoundField DataField="Type" SortExpression="Type" HeaderText="Auction Type" />
                                        <%-- <asp:BoundField DataField="auc_am_price" HeaderText="Price" />
                                                <asp:BoundField DataField="auc_am_marginmoney" HeaderText="Margin Price" />--%>
                                        <asp:BoundField DataField="Status" SortExpression="Status" HeaderText="Status" />
                                        <asp:BoundField DataField="auc_am_Specification" HeaderText="Specification" />
                                        <asp:TemplateField HeaderText="Downloads" >
                                            <ItemTemplate>
                                                <a href="UploadImages/<%# Eval("FILENAME") %>" target="_blank" style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("FILENAME"))) ? "display:none" : "display:block" %>'><span class="fa fa-file-pdf-o" style="font-size:large"/></a>
                                            </ItemTemplate> 
                                        </asp:TemplateField>

                                        <%--<asp:BoundField DataField="ACTIVE" HeaderText="Status" />--%>
                                        <%-- <asp:TemplateField HeaderText="Bid">
                                                    <ItemTemplate>
                                                        <a href="AddAutionDetails.aspx?ID=<%#Eval("auc_am_id")%>"><span class="fa fa-gavel" /></a>
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





                        <%-- <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th class="th-sm">Name

                                </th>
                                <th class="th-sm">Position

                                </th>
                                <th class="th-sm">Office

                                </th>
                                <th class="th-sm">Age

                                </th>
                                <th class="th-sm">Start date

                                </th>
                                <th class="th-sm">Salary

                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Tiger Nixon</td>
                                <td>System Architect</td>
                                <td>Edinburgh</td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>$320,800</td>
                            </tr>
                            <tr>
                                <td>Garrett Winters</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>63</td>
                                <td>2011/07/25</td>
                                <td>$170,750</td>
                            </tr>
                            <tr>
                                <td>Ashton Cox</td>
                                <td>Junior Technical Author</td>
                                <td>San Francisco</td>
                                <td>66</td>
                                <td>2009/01/12</td>
                                <td>$86,000</td>
                            </tr>
                            <tr>
                                <td>Cedric Kelly</td>
                                <td>Senior Javascript Developer</td>
                                <td>Edinburgh</td>
                                <td>22</td>
                                <td>2012/03/29</td>
                                <td>$433,060</td>
                            </tr>
                            <tr>
                                <td>Airi Satou</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>33</td>
                                <td>2008/11/28</td>
                                <td>$162,700</td>
                            </tr>
                            <tr>
                                <td>Brielle Williamson</td>
                                <td>Integration Specialist</td>
                                <td>New York</td>
                                <td>61</td>
                                <td>2012/12/02</td>
                                <td>$372,000</td>
                            </tr>
                            <tr>
                                <td>Herrod Chandler</td>
                                <td>Sales Assistant</td>
                                <td>San Francisco</td>
                                <td>59</td>
                                <td>2012/08/06</td>
                                <td>$137,500</td>
                            </tr>
                            <tr>
                                <td>Rhona Davidson</td>
                                <td>Integration Specialist</td>
                                <td>Tokyo</td>
                                <td>55</td>
                                <td>2010/10/14</td>
                                <td>$327,900</td>
                            </tr>
                            <tr>
                                <td>Colleen Hurst</td>
                                <td>Javascript Developer</td>
                                <td>San Francisco</td>
                                <td>39</td>
                                <td>2009/09/15</td>
                                <td>$205,500</td>
                            </tr>
                            <tr>
                                <td>Sonya Frost</td>
                                <td>Software Engineer</td>
                                <td>Edinburgh</td>
                                <td>23</td>
                                <td>2008/12/13</td>
                                <td>$103,600</td>
                            </tr>
                            <tr>
                                <td>Jena Gaines</td>
                                <td>Office Manager</td>
                                <td>London</td>
                                <td>30</td>
                                <td>2008/12/19</td>
                                <td>$90,560</td>
                            </tr>
                            <tr>
                                <td>Quinn Flynn</td>
                                <td>Support Lead</td>
                                <td>Edinburgh</td>
                                <td>22</td>
                                <td>2013/03/03</td>
                                <td>$342,000</td>
                            </tr>
                            <tr>
                                <td>Charde Marshall</td>
                                <td>Regional Director</td>
                                <td>San Francisco</td>
                                <td>36</td>
                                <td>2008/10/16</td>
                                <td>$470,600</td>
                            </tr>
                            <tr>
                                <td>Haley Kennedy</td>
                                <td>Senior Marketing Designer</td>
                                <td>London</td>
                                <td>43</td>
                                <td>2012/12/18</td>
                                <td>$313,500</td>
                            </tr>
                            <tr>
                                <td>Tatyana Fitzpatrick</td>
                                <td>Regional Director</td>
                                <td>London</td>
                                <td>19</td>
                                <td>2010/03/17</td>
                                <td>$385,750</td>
                            </tr>
                            <tr>
                                <td>Michael Silva</td>
                                <td>Marketing Designer</td>
                                <td>London</td>
                                <td>66</td>
                                <td>2012/11/27</td>
                                <td>$198,500</td>
                            </tr>
                            <tr>
                                <td>Paul Byrd</td>
                                <td>Chief Financial Officer (CFO)</td>
                                <td>New York</td>
                                <td>64</td>
                                <td>2010/06/09</td>
                                <td>$725,000</td>
                            </tr>
                            <tr>
                                <td>Gloria Little</td>
                                <td>Systems Administrator</td>
                                <td>New York</td>
                                <td>59</td>
                                <td>2009/04/10</td>
                                <td>$237,500</td>
                            </tr>
                            <tr>
                                <td>Bradley Greer</td>
                                <td>Software Engineer</td>
                                <td>London</td>
                                <td>41</td>
                                <td>2012/10/13</td>
                                <td>$132,000</td>
                            </tr>
                            <tr>
                                <td>Dai Rios</td>
                                <td>Personnel Lead</td>
                                <td>Edinburgh</td>
                                <td>35</td>
                                <td>2012/09/26</td>
                                <td>$217,500</td>
                            </tr>
                            <tr>
                                <td>Jenette Caldwell</td>
                                <td>Development Lead</td>
                                <td>New York</td>
                                <td>30</td>
                                <td>2011/09/03</td>
                                <td>$345,000</td>
                            </tr>
                            <tr>
                                <td>Yuri Berry</td>
                                <td>Chief Marketing Officer (CMO)</td>
                                <td>New York</td>
                                <td>40</td>
                                <td>2009/06/25</td>
                                <td>$675,000</td>
                            </tr>
                            <tr>
                                <td>Caesar Vance</td>
                                <td>Pre-Sales Support</td>
                                <td>New York</td>
                                <td>21</td>
                                <td>2011/12/12</td>
                                <td>$106,450</td>
                            </tr>
                            <tr>
                                <td>Doris Wilder</td>
                                <td>Sales Assistant</td>
                                <td>Sidney</td>
                                <td>23</td>
                                <td>2010/09/20</td>
                                <td>$85,600</td>
                            </tr>
                            <tr>
                                <td>Angelica Ramos</td>
                                <td>Chief Executive Officer (CEO)</td>
                                <td>London</td>
                                <td>47</td>
                                <td>2009/10/09</td>
                                <td>$1,200,000</td>
                            </tr>
                            <tr>
                                <td>Gavin Joyce</td>
                                <td>Developer</td>
                                <td>Edinburgh</td>
                                <td>42</td>
                                <td>2010/12/22</td>
                                <td>$92,575</td>
                            </tr>
                            <tr>
                                <td>Jennifer Chang</td>
                                <td>Regional Director</td>
                                <td>Singapore</td>
                                <td>28</td>
                                <td>2010/11/14</td>
                                <td>$357,650</td>
                            </tr>
                            <tr>
                                <td>Brenden Wagner</td>
                                <td>Software Engineer</td>
                                <td>San Francisco</td>
                                <td>28</td>
                                <td>2011/06/07</td>
                                <td>$206,850</td>
                            </tr>
                            <tr>
                                <td>Fiona Green</td>
                                <td>Chief Operating Officer (COO)</td>
                                <td>San Francisco</td>
                                <td>48</td>
                                <td>2010/03/11</td>
                                <td>$850,000</td>
                            </tr>
                            <tr>
                                <td>Shou Itou</td>
                                <td>Regional Marketing</td>
                                <td>Tokyo</td>
                                <td>20</td>
                                <td>2011/08/14</td>
                                <td>$163,000</td>
                            </tr>
                            <tr>
                                <td>Michelle House</td>
                                <td>Integration Specialist</td>
                                <td>Sidney</td>
                                <td>37</td>
                                <td>2011/06/02</td>
                                <td>$95,400</td>
                            </tr>
                            <tr>
                                <td>Suki Burks</td>
                                <td>Developer</td>
                                <td>London</td>
                                <td>53</td>
                                <td>2009/10/22</td>
                                <td>$114,500</td>
                            </tr>
                            <tr>
                                <td>Prescott Bartlett</td>
                                <td>Technical Author</td>
                                <td>London</td>
                                <td>27</td>
                                <td>2011/05/07</td>
                                <td>$145,000</td>
                            </tr>
                            <tr>
                                <td>Gavin Cortez</td>
                                <td>Team Leader</td>
                                <td>San Francisco</td>
                                <td>22</td>
                                <td>2008/10/26</td>
                                <td>$235,500</td>
                            </tr>
                            <tr>
                                <td>Martena Mccray</td>
                                <td>Post-Sales support</td>
                                <td>Edinburgh</td>
                                <td>46</td>
                                <td>2011/03/09</td>
                                <td>$324,050</td>
                            </tr>
                            <tr>
                                <td>Unity Butler</td>
                                <td>Marketing Designer</td>
                                <td>San Francisco</td>
                                <td>47</td>
                                <td>2009/12/09</td>
                                <td>$85,675</td>
                            </tr>
                            <tr>
                                <td>Howard Hatfield</td>
                                <td>Office Manager</td>
                                <td>San Francisco</td>
                                <td>51</td>
                                <td>2008/12/16</td>
                                <td>$164,500</td>
                            </tr>
                            <tr>
                                <td>Hope Fuentes</td>
                                <td>Secretary</td>
                                <td>San Francisco</td>
                                <td>41</td>
                                <td>2010/02/12</td>
                                <td>$109,850</td>
                            </tr>
                            <tr>
                                <td>Vivian Harrell</td>
                                <td>Financial Controller</td>
                                <td>San Francisco</td>
                                <td>62</td>
                                <td>2009/02/14</td>
                                <td>$452,500</td>
                            </tr>
                            <tr>
                                <td>Timothy Mooney</td>
                                <td>Office Manager</td>
                                <td>London</td>
                                <td>37</td>
                                <td>2008/12/11</td>
                                <td>$136,200</td>
                            </tr>
                            <tr>
                                <td>Jackson Bradshaw</td>
                                <td>Director</td>
                                <td>New York</td>
                                <td>65</td>
                                <td>2008/09/26</td>
                                <td>$645,750</td>
                            </tr>
                            <tr>
                                <td>Olivia Liang</td>
                                <td>Support Engineer</td>
                                <td>Singapore</td>
                                <td>64</td>
                                <td>2011/02/03</td>
                                <td>$234,500</td>
                            </tr>
                            <tr>
                                <td>Bruno Nash</td>
                                <td>Software Engineer</td>
                                <td>London</td>
                                <td>38</td>
                                <td>2011/05/03</td>
                                <td>$163,500</td>
                            </tr>
                            <tr>
                                <td>Sakura Yamamoto</td>
                                <td>Support Engineer</td>
                                <td>Tokyo</td>
                                <td>37</td>
                                <td>2009/08/19</td>
                                <td>$139,575</td>
                            </tr>
                            <tr>
                                <td>Thor Walton</td>
                                <td>Developer</td>
                                <td>New York</td>
                                <td>61</td>
                                <td>2013/08/11</td>
                                <td>$98,540</td>
                            </tr>
                            <tr>
                                <td>Finn Camacho</td>
                                <td>Support Engineer</td>
                                <td>San Francisco</td>
                                <td>47</td>
                                <td>2009/07/07</td>
                                <td>$87,500</td>
                            </tr>
                            <tr>
                                <td>Serge Baldwin</td>
                                <td>Data Coordinator</td>
                                <td>Singapore</td>
                                <td>64</td>
                                <td>2012/04/09</td>
                                <td>$138,575</td>
                            </tr>
                            <tr>
                                <td>Zenaida Frank</td>
                                <td>Software Engineer</td>
                                <td>New York</td>
                                <td>63</td>
                                <td>2010/01/04</td>
                                <td>$125,250</td>
                            </tr>
                            <tr>
                                <td>Zorita Serrano</td>
                                <td>Software Engineer</td>
                                <td>San Francisco</td>
                                <td>56</td>
                                <td>2012/06/01</td>
                                <td>$115,000</td>
                            </tr>
                            <tr>
                                <td>Jennifer Acosta</td>
                                <td>Junior Javascript Developer</td>
                                <td>Edinburgh</td>
                                <td>43</td>
                                <td>2013/02/01</td>
                                <td>$75,650</td>
                            </tr>
                            <tr>
                                <td>Cara Stevens</td>
                                <td>Sales Assistant</td>
                                <td>New York</td>
                                <td>46</td>
                                <td>2011/12/06</td>
                                <td>$145,600</td>
                            </tr>
                            <tr>
                                <td>Hermione Butler</td>
                                <td>Regional Director</td>
                                <td>London</td>
                                <td>47</td>
                                <td>2011/03/21</td>
                                <td>$356,250</td>
                            </tr>
                            <tr>
                                <td>Lael Greer</td>
                                <td>Systems Administrator</td>
                                <td>London</td>
                                <td>21</td>
                                <td>2009/02/27</td>
                                <td>$103,500</td>
                            </tr>
                            <tr>
                                <td>Jonas Alexander</td>
                                <td>Developer</td>
                                <td>San Francisco</td>
                                <td>30</td>
                                <td>2010/07/14</td>
                                <td>$86,500</td>
                            </tr>
                            <tr>
                                <td>Shad Decker</td>
                                <td>Regional Director</td>
                                <td>Edinburgh</td>
                                <td>51</td>
                                <td>2008/11/13</td>
                                <td>$183,000</td>
                            </tr>
                            <tr>
                                <td>Michael Bruce</td>
                                <td>Javascript Developer</td>
                                <td>Singapore</td>
                                <td>29</td>
                                <td>2011/06/27</td>
                                <td>$183,000</td>
                            </tr>
                            <tr>
                                <td>Donna Snider</td>
                                <td>Customer Support</td>
                                <td>New York</td>
                                <td>27</td>
                                <td>2011/01/25</td>
                                <td>$112,000</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Name
                                </th>
                                <th>Position
                                </th>
                                <th>Office
                                </th>
                                <th>Age
                                </th>
                                <th>Start date
                                </th>
                                <th>Salary
                                </th>
                            </tr>
                        </tfoot>
                    </table>--%>
                    </div>
                </div>
            </section>

        </div>
        <!-- container //  -->
        <div class="container-fluid bg-secondary">
            <div class="row pt-4">
                <div class="col-md-3">
                    <h4 class="text-light mb-3 pl-3 border">About PetroleumBazaar</h4>
                    <p class="pl-4"><a class="text-light" href="#">Our Commitment</a></p>
                    <p class="pl-4"><a class="text-light" href="#">Our Team</a></p>
                    <p class="pl-4"><a class="text-light" href="#">Offices</a></p>
                    <p class="pl-4"><a class="text-light" href="#">Regulatory Information</a></p>
                </div>

                <div class="col-md-3">
                    <h4 class="text-light mb-3 pl-3 border">Online Auction</h4>
                    <p class="pl-4"><a class="text-light" href="#">Normal Auction</a></p>
                    <p class="pl-4"><a class="text-light" href="#">Penny Auction</a></p>
                </div>

                <div class="col-md-3">
                    <h4 class="text-light mb-3 pl-3 border">Contact with us</h4>
                    <p class="pl-4"><a href="#" class="fa fa-facebook"></a><a class="text-light" href="#">Facebook</a></p>
                    <p class="pl-4"><a href="#" class="fa fa-instagram"></a><a class="text-light" href="#">Instagram</a></p>
                    <p class="pl-4"><a href="#" class="fa fa-linkedin"></a><a class="text-light" href="#">LinkedIn</a></p>
                    <p class="pl-4"><a href="#" class="fa fa-twitter"></a><a class="text-light" href="#">Twitter</a></p>
                    <p class="pl-4"><a href="#" class="fa fa-youtube"></a><a class="text-light" href="#">YouTube</a></p>
                </div>

                <div class="col-md-3">
                    <h4 class="text-light mb-3 pl-3 border">Question?</h4>
                    <p class="pl-4"><a class="text-light" href="#">Contact Us</a></p>
                    <p class="pl-4"><a class="text-light" href="#">FAQ</a></p>
                    <p class="pl-4"><a class="text-light" href="#">Start co-browsing</a></p>
                </div>
            </div>
        </div>


        <script type="text/javascript" src="js/addons/datatables.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


        <script src="online/jquery-3.6.0.min.js"></script>
        <script src="online/popper.min.js"></script>
        <script src="online/jquery.min.js"></script>
        <script src="online/bootstrap.min.js"></script>

        <!-- MDBootstrap Datatables  -->
        <script type="text/javascript" src="js/addons/datatables.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#dtBasicExample').DataTable();
                $('.dataTables_length').addClass('bs-select');
            });
            //function Loginfunction() {
            //    alert("Please enter valid EmailID and Password")
            //}
        </script>

        <%--</asp:Content>--%>


        <script src="Scripts/Jquery.min.js" type="text/javascript"></script>
        <script src="Script/jquery.tablesorter.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.3/js/jquery.tablesorter.min.js" integrity="sha512-qzgd5cYSZcosqpzpn7zF2ZId8f/8CHmFKZ8j7mU4OUXTNRd5g+ZHBPsgKEwoqxCtdQvExE5LprwwPAgoicguNg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#CountryGridView").tablesorter();
            });
        </script>
        <style type="text/css">
            th {
                cursor: pointer;
                font-weight: bold;
                text-align: left;
            }
        </style>
    </form>
</body>
</html>
