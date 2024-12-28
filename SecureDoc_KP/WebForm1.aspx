<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SecureDoc_KP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 136%;
        }
        .auto-style2 {
            width: 155px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="user_Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
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
                    <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
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
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">Username:</td>
                            <td>
                                <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Password:</td>
                            <td>
                                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Role:</td>
                            <td>
                                <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Email:</td>
                            <td>
                                <asp:TextBox ID="emailIDTextBox" runat="server" Text='<%# Bind("emailID") %>' />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Contact Number:</td>
                            <td>
                                <asp:TextBox ID="contactNumberTextBox" runat="server" Text='<%# Bind("contactNumber") %>' />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [RegisterUser] WHERE [user_Id] = @user_Id" InsertCommand="INSERT INTO [RegisterUser] ([username], [password], [role], [emailID], [contactNumber]) VALUES (@username, @password, @role, @emailID, @contactNumber)" SelectCommand="SELECT * FROM [RegisterUser]" UpdateCommand="UPDATE [RegisterUser] SET [username] = @username, [password] = @password, [role] = @role, [emailID] = @emailID, [contactNumber] = @contactNumber WHERE [user_Id] = @user_Id">
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
        </div>
    </form>
</body>
</html>
