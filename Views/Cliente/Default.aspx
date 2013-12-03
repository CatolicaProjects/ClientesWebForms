<%@ Page Title="ClienteList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="TrabalhoBernardi.ClienteActions.Default" ViewStateMode="Disabled" %>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content runat="server" ID="Content2" ContentPlaceHolderID="MainContent">
    <h2>Lista de Clientes</h2>
    <div>
        <asp:ListView runat="server"
            DataKeyNames="Codigo" ItemType="TrabalhoBernardi.Models.Cliente"
            AutoGenerateColumns="false"
            AllowPaging="true" AllowSorting="true"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                Não há Clientes cadastrados no momento.
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table>
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Sexo</th>
                            <th>Saldo de Creditos</th>
                            <th>Descricao do Logradouro</th>
                            <th>Numero do Logradouro</th>
                            <th>Complemento</th>
                            <th>Bairro</th>
                            <th>Cidade</th>
                            <th>CEP</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Nome" ID="Nome" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Sexo" ID="Sexo" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Saldo_Creditos" ID="Saldo_Creditos" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Descricao_Logradouro" ID="Descricao_Logradouro" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Numero_Logradouro" ID="Numero_Logradouro" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Complemento" ID="Complemento" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Bairro" ID="Bairro" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Cidade" ID="Cidade" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="CEP" ID="CEP" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Cliente/Edit", Item.Codigo) %>' Text="Alterar" />
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Cliente/Delete", Item.Codigo) %>' Text="Excluir" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
