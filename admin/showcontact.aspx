<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="showcontact.aspx.cs" Inherits="admin_showcontact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="240px" Width="800px" OnRowDeleting="Page_Load">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="Id" />
            <asp:BoundField HeaderText="NAME" DataField="name" />
            <asp:BoundField HeaderText="EMAIL" DataField="email" />
            <asp:BoundField HeaderText="CONTACT" DataField="contact" />
            <asp:BoundField HeaderText="AGE" DataField="age" />
            <asp:BoundField HeaderText="GENDER" DataField="gender" />
            <asp:BoundField HeaderText="ID" DataField="Id" />
            <asp:BoundField HeaderText="CITY" DataField="city" />
            <asp:BoundField HeaderText="ADDRESS" DataField="caddress" />
            <asp:CommandField HeaderText="REMOVE RECORDS" ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>
</asp:Content>

