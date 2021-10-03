<%@ Page Title="" Language="C#" MasterPageFile="~/user/PatientMasterPage.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="user_appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:;">User Profile</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="javascript:;">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">5</span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                   <a class="dropdown-item" href="appointment.aspx">You have a new appointment</a>
                  <a class="dropdown-item" href="status.aspx">You have 5 new status</a>
                  <a class="dropdown-item" href="userprofile.aspx">Your userprofile</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="javascript:;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="userprofile.aspx">Profile</a>
                  <a class="dropdown-item" href="appointment.aspx">Appointment</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="logout.aspx">Log out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Appointment</h4>
                  <p class="card-category">Complete your Appointment</p>
                </div>
                <div class="card-body">
                  
                   
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                         <label class="bmd-label-floating">Name</label>
                        <%--  <input type="text" class="form-control">--%>
<asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Contact Number</label>
                          <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Age</label>
                          <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Gender</label>
                          <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>

                        </div>
                      </div>
                        
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Diseases</label>
                          
                            <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                        </div>
                      </div>
                            
                      <div class="col-md-6">
                        <div class="form-group">
                          
                          <input type="date" name="date" id="Appdate" runat="server" class="form-control" />

                        </div>
                      </div>
                    </div>
                    
                    <%--<button type="submit" class="btn btn-primary pull-right">Update Profile</button>--%>
                    <asp:Button ID="Button1" runat="server" Text="Confirm Appointment" class="btn btn-primary pull-right" OnClick="Button1_Click" />
                    <div class="clearfix"></div>
                  
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="/news.aspx">
                  News
                </a>
              </li>
              <li>
                <a href="/about.aspx">
                  About Us
                </a>
              </li>
              <li>
                <a href="/doctor.aspx">
                  Doctor
                </a>
              </li>
              <li>
                <a href="/register.aspx">
                  Register
                </a>
              </li>
            </ul>
          </nav>
</asp:Content>

