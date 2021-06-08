﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Livescore.aspx.cs" Inherits="Sports_Management_System.Livescore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="col-md-5 mx-auto p-2">
                <div class="card">
                    <div class="card-body p-2">
                        <center>
                             <h5>Upload Schedules</h5>
                        </center>
                       
                        <hr />

                        <div class="row">
                           <div class="col-md">
                                <label>Date</label>
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Title" TextMode="Date"></asp:TextBox>
                            <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
                     </div>
                 </div>
                        <div class="row pt-1">
                           <div class="col-md">
                                <label>Venue</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Venue"></asp:TextBox>
                        </div>
                           </div>
                        </div>

                         <div class="row">
                           <div class="col-md">
                                <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Description" Rows="3" TextMode="MultiLine"></asp:TextBox>
                        </div>
                           </div>
                        </div>

                            <div class="row">
                     <div class="col">
                          <label>Upload Brouchure/ Banner</label>
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                          
                     </div>
                  </div>
                        <div class="row pt-3">
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
                  <a href="homepage.aspx"><< Back to Home</a><br><br>
        </div>

</asp:Content>
