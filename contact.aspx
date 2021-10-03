<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Contact</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
 <div class="row" style="background-image: url(../assets/img/contact.jpg); background-image:rgba(0,0,0,0.5)">
        <div class="col-sm-3">
            </div>
        <div class="col-sm-6">
    <div class="page-section">
    <div class="container">
      <h1 class="text-center wow fadeInUp"><i class='far fa-address-book' style='font-size:24px'></i>Contact</h1>

      <%--<form class="contact-form mt-5">--%>
        <div class="row mb-3">
          <div class="col-sm-6 py-2 wow fadeInLeft">
            <label for="fullName"><b>Name</b></label>
              <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Your Name" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" ForeColor="Red" SetFocusOnError="true">Enter Your Name</asp:RequiredFieldValidator>
          </div>
          <div class="col-sm-6 py-2 wow fadeInRight">
            <label for="emailAddress"><b>Email</b></label>
           <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Your Email" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" ForeColor="Red" SetFocusOnError="true">Enter Your Email</asp:RequiredFieldValidator>
          </div>
          <div class="col-12 py-2 wow fadeInUp">
            <label for="subject"><b>Subject</b></label>
              <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                 
                  <asp:ListItem>FeedBack</asp:ListItem>
                  <asp:ListItem>Appointment</asp:ListItem>
                 
              </asp:DropDownList>
          </div>
            <div class="col-12 py-2 wow fadeInUp">
                <label for="subject"><b>Mobile</b></label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter Your Mobile Number"></asp:TextBox>
                 <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox4" ForeColor="Red" SetFocusOnError="true"></asp:RegularExpressionValidator>--%>
            </div>
           
          <div class="col-12 py-2 wow fadeInUp">
            <label for="message"><b>Message</b></label>

 <asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="MultiLine" placeholder="Enter Your Message.."></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4" ForeColor="Red" SetFocusOnError="true">Enter Your Message</asp:RequiredFieldValidator>

          </div>
        </div>
        <asp:Button ID="send" runat="server" Text="Send Message" Class="btn btn-secondary wow zoomIn" OnClick="send_Click" />
       
    </div>
  </div>
    </div>
   <div class="col-sm-3">
            </div>
        </div>




     
    

    
    

</asp:Content>

