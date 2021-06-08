<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="Sports_Management_System.Notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 mx-auto p-2">
                <div class="card">
                    <div class="card-body p-2">
                        <center>
                             <h5>Add Notifications</h5>
                        </center>
                       
                        <hr />

                        <div class="row">
                           <div class="col-md">
                                <label>N Id</label>
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="nid" runat="server" placeholder="N id" ></asp:TextBox>
                            <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
                     </div>
                 </div>
                        <div class="row pt-2">
                           <div class="col-md">
                                <label>Title</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="title" runat="server" placeholder="Title"></asp:TextBox>
                        </div>
                           </div>
                        </div>

                         <div class="row">
                           <div class="col-md">
                                <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="Description" runat="server" placeholder="Description" Rows="3" TextMode="MultiLine"></asp:TextBox>
                        </div>
                           </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                 <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1"  runat="server" Text="Add"  />
                        </div>
                            </div>
                            <div class="col-md-6">
                                 <div class="form-group">
                           <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button2"  runat="server" Text="Delete"  />
                        </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
            <div class="col-md-7  p-2">
                <div class="card ">
                    <div class="card-body">
                        <center>
                            <h5>Notification List</h5>
                        </center>                       
                        <hr />

                         <div class="row">
                    
                  </div>

                    </div>
                </div>
            </div>
    </div>
 </div>
</asp:Content>
