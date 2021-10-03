<%@ Page Title="" Language="C#" MasterPageFile="~/user/PatientMasterPage.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="user_userprofile" %>

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
                  <h4 class="card-title">Update Profile</h4>
                  <p class="card-category">Update your profile</p>
                </div>
                <div class="card-body">
                  
                   <div class="col-12 py-2 wow fadeInUp">
                <label for="subject">Name</label>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                        
            </div>
  <div class="col-12 py-2 wow fadeInUp">
                <label for="subject">Contact</label>
        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Contact Number"></asp:TextBox>
                        
            </div>
                    
                   <div class="col-12 py-2 wow fadeInUp">
                <label for="subject">Age</label>
        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Age"></asp:TextBox>
                        
            </div>
                    <div class="col-12 py-2 wow fadeInUp">
                <label for="subject">Password</label>
        <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Enter your New Password" TextMode="Password"></asp:TextBox>
                        
            </div>
                     <div class="col-12 py-2 wow fadeInUp">
                <label for="subject">Registration Number</label>
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter Your Registration Number"></asp:TextBox>
                        
            </div>
                    
<%--                    <button type="submit" class="btn btn-primary pull-right">Update Profile</button>
<asp:Button ID="Button1" runat="server" Text="Button" />--%>
                     <asp:Button ID="send" runat="server" Text="Update" Class="btn btn-primary pull-right" OnClick="send_Click" />
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
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>, made with <i class="material-icons">favorite</i> by
            <a href="/homepage.aspx" target="_blank">Supriya</a>Jaiswal.
          </div>
        </div>
      </footer>
    </div>
  </div>
  
        

  
            
</asp:Content>

