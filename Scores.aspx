<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Scores.aspx.cs" Inherits="Sports_Management_System.Scores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container-fluid p-2">
    <div class="row">
       
            <div class="col-md-6 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                            <div class="col">
                                <center>
                                     <h5 style="background-color:darkblue; color:white;" class="p-2">Scoring Panel</h5>
                                </center>
                            </div>
                          
                         </div>
                         <div class="row">
                           <div class="col-md-6">
                                <label>Team A</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Team A"></asp:TextBox>
                        </div>
                           </div>
                                      
                           <div class="col-md-6">
                                <label>Team B</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Team B"></asp:TextBox>
                        </div>
                           </div>
                        
                 </div>

                         <div class="row">
                           <div class="col-md-4">
                                <label>Toss</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox25" runat="server" placeholder="Toss"></asp:TextBox>
                        </div>
                           </div>
                                      
                           <div class="col-md-4">
                                <label>Descision</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="Descision"></asp:TextBox>
                        </div>
                           </div>
                        <div class="col-md-4">
                                <label>Score</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Team B"></asp:TextBox>
                        </div>
                           </div>
                 </div>

                         <hr />
                         <div class="row">
                           <div class="col-md-4">
                                <label>Team</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Toss"></asp:TextBox>
                        </div>
                           </div>
                                      
                           <div class="col-md-4">
                                <label>Score</label>
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="totscore" runat="server" placeholder="Total"></asp:TextBox>
                            
                        </div>
                           </div>
                        <div class="col-md-4">
                                <label>Overs</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="overs" runat="server" placeholder="Team B">0</asp:TextBox>
                        </div>
                           </div>
                 </div>

                         <div class="row">
                           <div class="col-md-4">
                                <label>Top Bowler</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Top Bowler"></asp:TextBox>
                        </div>
                           </div>
                                      
                           <div class="col-md-4">
                                <label>Top Batsman</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Top Batsman"></asp:TextBox>
                        </div>
                           </div>
                        <div class="col-md-4">
                                <label>Target</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Target"></asp:TextBox>
                        </div>
                           </div>
                 </div>
                         <div class="row">
                             <div class="col-md-12">
                                 <div class="row">
                                     <div class="col-md">
                                         <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button3"  runat="server" Text="Refresh" OnClick="Button3_Click" />
                        </div>
                                     </div>
                                     
                                 </div>
                             </div>
                         </div>
                          <hr />
                         <div class="row">
                           <div class="col-md-4">
                                <label>Team B</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Toss"></asp:TextBox>
                        </div>
                           </div>
                                      
                           <div class="col-md-4">
                                <label>Score</label>
                          <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="totscore1" runat="server" placeholder="Total"></asp:TextBox>
           
                        </div>
                           </div>
                        <div class="col-md-4">
                                <label>Overs</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="overs1" runat="server" placeholder="Team B">0</asp:TextBox>
                        </div>
                           </div>
                 </div>

                         <div class="row">
                           <div class="col-md-4">
                                <label>Top Bowler</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Top Bowler"></asp:TextBox>
                        </div>
                           </div>
                                      
                           <div class="col-md-4">
                                <label>Top Batsman</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Top Batsman"></asp:TextBox>
                        </div>
                           </div>
                        <div class="col-md-4">
                                <label>Result</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox16" runat="server" placeholder="Target"></asp:TextBox>
                        </div>
                           </div>
                 </div>
                         <hr />

                         <div class="row">
                             <div class="col-md-12">
                                 <div class="row">
                                     <div class="col-md-6">
                                         <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1"  runat="server" Text="Refresh" OnClick="Button1_Click"/>
                        </div>
                                     </div>
                                     <div class="col-md-6">
                                         <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2"  runat="server" Text="Update" OnClick="Button2_Click"  />
                        </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
            </div>
        </div>
    </div>
</div>
</div>

</asp:Content>
