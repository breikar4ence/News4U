﻿<%@ Page Title="News Articles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
         CodeBehind="NewsArticleList.aspx.cs" Inherits="News4U.NewsArticleList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="NewsArticleList" runat="server" 
                DataKeyNames="NewsArticleID" GroupItemCount="4"
                ItemType="News4U.Models.NewsArticle" SelectMethod="GetNewsArticles">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="NewsArticleDetails.aspx?NewsArticleID=<%#:Item.NewsArticleID%>">
                                        <img src="<%#:Item.NewsArticleImagePath%>"
                                            width="250" height="225" style="border: solid" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="NewsArticleDetails.aspx?NewsArticleID=<%#:Item.NewsArticleID%>">
                                        <span>
                                            <%#:Item.NewsArticleTitle%>
                                        </span>
                                    </a>                                    
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>