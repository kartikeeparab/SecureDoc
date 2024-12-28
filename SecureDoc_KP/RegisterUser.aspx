<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterUser .aspx.cs" Inherits="SecureDoc_KP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="user_Id" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging1">
        <EditItemTemplate>
            user_Id:
            <asp:Label ID="user_IdLabel1" runat="server" Text='<%# Eval("user_Id") %>' />
            <br />
            username:
            <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
            <br />
            password:
            <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
            <br />
            role:
            <asp:DropDownList ID="roleDropDownList" runat="server" SelectedValue='<%# Bind("role") %>'>
                <asp:ListItem Text="Select Role" Value="" />
                <asp:ListItem Text="Employee" Value="Employee" />
                <asp:ListItem Text="Student" Value="Student" />
                <asp:ListItem Text="Admin" Value="Admin" />
            </asp:DropDownList>
            <br />
            emailID:
            <asp:TextBox ID="emailIDTextBox" runat="server" Text='<%# Bind("emailID") %>' />
            <br />
            contactNumber:
            <asp:TextBox ID="contactNumberTextBox" runat="server" Text='<%# Bind("contactNumber") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>Username:</td>
                    <td>
                        <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Role:</td>
                    <td>
                        <asp:DropDownList ID="roleDropDownList" runat="server" Height="42px" SelectedValue='<%# Bind("role") %>' CssClass="custom-dropdown">
    <asp:ListItem Text="Select Role" Value="" />
    <asp:ListItem Text="Employee" Value="Employee" />
    <asp:ListItem Text="Student" Value="Student" />
</asp:DropDownList>

<style>
    .custom-dropdown {
        font-size: 16px; /* Adjust the font size as needed */
        width: 200px; /* Adjust the width as needed */
        height: 40px; /* You can also set the height if needed */
    }
</style>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="emailIDTextBox" runat="server" Text='<%# Bind("emailID") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Contact Number:</td>
                    <td>
                        <asp:TextBox ID="contactNumberTextBox" runat="server" Text='<%# Bind("contactNumber") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
<td>
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Register" />
                        &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            &nbsp;<br />&nbsp;&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;
        </InsertItemTemplate>
        <ItemTemplate>
            user_Id:
            <asp:Label ID="user_IdLabel" runat="server" Text='<%# Eval("user_Id") %>' />
            <br />
            username:
            <asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("username") %>' />
            <br />
            password:
            <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
            <br />
            role:
            <asp:Label ID="roleLabel" runat="server" Text='<%# Bind("role") %>' />
            <br />
            emailID:
            <asp:Label ID="emailIDLabel" runat="server" Text='<%# Bind("emailID") %>' />
            <br />
            contactNumber:
            <asp:Label ID="contactNumberLabel" runat="server" Text='<%# Bind("contactNumber") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [RegisterUser]" DeleteCommand="DELETE FROM [RegisterUser] WHERE [user_Id] = @user_Id" InsertCommand="INSERT INTO [RegisterUser] ([username], [password], [role], [emailID], [contactNumber]) VALUES (@username, @password, @role, @emailID, @contactNumber)" UpdateCommand="UPDATE [RegisterUser] SET [username] = @username, [password] = @password, [role] = @role, [emailID] = @emailID, [contactNumber] = @contactNumber WHERE [user_Id] = @user_Id">
        <DeleteParameters>
            <asp:Parameter Name="user_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="emailID" Type="String" />
            <asp:Parameter Name="contactNumber" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="emailID" Type="String" />
            <asp:Parameter Name="contactNumber" Type="Decimal" />
            <asp:Parameter Name="user_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>