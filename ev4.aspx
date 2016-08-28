<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ev4.aspx.cs" Inherits="ev4" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.ico">
    <title>The Choice Protocol</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/jumbotron-narrow.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="formpage">
    <div class="container">
        <div class="header mid">
            <div class="lmarg">
                <div class="fright"><img src="images/CP-logo.png" class="img-responsive" alt="The Choice Protocol" /></div>
                <div class="fleft"><h1>EV4 Survey</h1>
            <p class="lead">
                Kia ora, Hello<br>
                Welcome to the EV4 Tutor and Course Survey</p></div>
            
            </div>
        </div>
    
    <div class="row rbody">
        <div class="col-xs-2">
        </div>
        <div class="col-lg-8 mid">
            <p>
                Your institution, as a partner in the Choice Protocol strategic partnership, uses
                the EV4 to hear what you think about the course, its organisation, assessment and
                relevance, and your impressions of how well your tutor engaged with you during it.</p>
            <p>
                We evaluate your feedback to see the areas you think are important to improve, or
                you recognise as being excellent. This feedback, and the improvements we make based
                on it are reported back to the class next time we offer it.</p>
            <p>
                Please take a little time (up to about 10 minutes) to complete this survey.</p>
            <p>
                All responses remain confidential allowing you to provide as much honest and constructive
                feedback as you wish. If you wish to know the
                reasons for collecting and use of student survey data by Choice Protocol partners please see the policy: <a href="http://www.weltec.ac.nz/sh/policy/a1_academic_quality_management.pdf" target="_blank">Taikura QMS – A1 Academic Quality Management</a>.</p>
            <p>
                You may leave your contact details for follow up in the final Comments box if there
                is specific item you want a response to.</p>
            <p>
                In the box below please enter the survey event code.</p>
            <p>
                When you click [Enter Survey] your code will be checked. If it is ok, the survey
                will open. If it is incorrect, you will be asked to try again. If you continue to have problems, please contact the survey
                administrator who gave you the code. For help or enquiries please email: <a href="mailto:surveys@weltec.ac.nz">surveys@weltec.ac.nz</a></p>
            <form id="form1" runat="server" role="form">
            <div class="form-group">
                <div class="col-lg-12">
                    <label for="tbSurveyCode" class="sr-only">
                        survey code</label>
                    <asp:TextBox ID="tbSurveyCode" class="form-control" runat="server" MaxLength="10"
                        Width="330px" placeholder="Enter survey code here e.g.BA15-D6009"></asp:TextBox>
                </div>
            </div>
            <div class="form-group validationerror">
                <div class="col-lg-12">
                    <asp:Button ID="btn" CssClass="btn" runat="server" Text="Enter Survey" 
                        onclick="btn_Click" />    
<asp:RegularExpressionValidator CssClass="warning" ControlToValidate="tbSurveyCode" ValidationExpression="^(BA|CO|CT|ED|ET|FS|HB|HS|HT|IT|TA|AE|AM|AP|AT|AW|BE|BI|BU|HF|HN|HS|TS|TT|WM|TB|TC|TF|TI|TR)(15|16)\-[BCDGMOPS][1-9]\d{3}$" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please check your survey code." Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator CssClass="warning" ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Please enter a valid survey code before continuing." ControlToValidate="tbSurveyCode"
                        Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>
            </form>
        </div>
        <div class="col-xs-2">
        </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
      <script type="text/javascript" language="javascript">
          jQuery(document).ready(function ($) {
              
              $('#tbSurveyCode').keyup(function () {
                  this.value = this.value.toUpperCase();
              });

              $('[placeholder]').focus(function () {
                  var input = $(this);
                  if (input.val() == input.attr('placeholder')) {
                      input.val('');
                      input.removeClass('placeholder');
                  }
              }).blur(function () {
                  var input = $(this);
                  if (input.val() == '' || input.val() == input.attr('placeholder')) {
                      input.addClass('placeholder');
                      input.val(input.attr('placeholder'));
                  }
              }).blur().parents('form').submit(function () {
                  $(this).find('[placeholder]').each(function () {
                      var input = $(this);
                      if (input.val() == input.attr('placeholder')) {
                          input.val('');
                      }
                  })
              });

          });
    </script>
    </div>
</body>
</html>
