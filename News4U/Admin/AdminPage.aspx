<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="News4U.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Admin Panel</h1>
    <hr />
    <h2>Add news article:</h2>
    <table>
        <tr>
            <td>
                <asp:Label ID="LabelAddNewsArticle" runat="server"> Title </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AddNewsArticleTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ErrorMessage="Title required" ControlToValidate="AddNewsArticleTitle" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <p></p>
        <tr>
            <td>
                <asp:Label ID="LabelAddMainBody" runat="server"> Main Body </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AddNewsArticleMainBody" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainBody" runat="server" ErrorMessage="Main body required" ControlToValidate="AddNewsArticleMainBody" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <p></p>
        <tr>
            <td>
                <asp:Label ID="LabelAddNewsArticleDatePublished" runat="server"> Date Published </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AddNewsArticleDatePublished" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDatePublished" runat="server" ErrorMessage="Date published required" ControlToValidate="AddNewsArticleDatePublished" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <p></p>
        <tr>
            <td>
                <asp:Label ID="LabelAddNewsArticleImagePath" runat="server"> Image path </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AddNewsArticleImagePath" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorImagePath" runat="server" ErrorMessage="Image path required" ControlToValidate="AddNewsArticleImagePath" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="AddNewsArticleButton" runat="server" Text="Add news article" OnClick="AddNewsArticleButton_Click" CausesValidation="false" />
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>
    <h2>Remove news article</h2>
    <table>
        <tr>
            <td><asp:Label ID="LabelRemoveNewsArticle" runat="server">Remove news article </asp:Label></td>
            <td><asp:DropDownList ID="DropDownRemoveNewsArticle" runat="server" ItemType="News4U.Models.NewsArticle" SelectMethod="GetNewsArticle" AppendDataBoundItems="true" DataTextField="NewsArticleTitle" DataValueField="NewsArticleID"></asp:DropDownList></td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="RemoveNewsArticleButton" runat="server" Text="Remove news article" OnClick="RemoveNewsArticleButton_Click" CausesValidation="false" />
    <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
    <p></p>
    <h2>Edit news article</h2>
    <table>
        <tr>
            <td><asp:Label ID="LabelEditNewsArticle" runat="server">Edit news article: </asp:Label></td>
            <td><asp:DropDownList ID="DropDownEditNewsArticle" runat="server" ItemType="News4U.Models.NewsArticle" SelectMethod="GetNewsArticle" AppendDataBoundItems="true" DataTextField="NewsArticleTitle" DataValueField="NewsArticleID"></asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelEditNewsArticleTitle" runat="server">Edit news article title</asp:Label></td>
            <td><asp:TextBox ID="EditNewsArticleTitle" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelEditNewsArticleMainBody" runat="server">Edit main body</asp:Label></td>
            <td><asp:TextBox ID="EditNewsArticleMainBody" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelEditNewsArticleDatePublished" runat="server">Edit date published</asp:Label></td>
            <td><asp:TextBox ID="EditNewsArticleDatePublished" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelEditNewsArticleImagePath" runat="server">Edit image path</asp:Label></td>
            <td><asp:TextBox ID="EditNewsArticleImagePath" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="EditNewsArticleButton" runat="server" Text="Edit article" OnClick="EditNewsArticleButton_Click" CausesValidation="false" />
    <asp:Label ID="LabelEditStatus" runat="server" Text=""></asp:Label>
</asp:Content>