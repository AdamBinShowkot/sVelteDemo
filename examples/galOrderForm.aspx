<%@ Page Language="VB" AutoEventWireup="false" CodeFile="galOrderForm.aspx.vb" Inherits="galOrderForm"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Trams Scripts for Apollo Users Order Form</title>
</head>
<body > 
<img src="../images/sc%20logo.gif" width="331" height="113" alt="Shelley Logo"/>
<table width="85%" style="font-size: smaller; font-family: Arial; background-color:#CCFFFF">
  <tr>
    <td align="center">
      END-USER LICENSE AGREEMENT FOR Trams Scripts for Apollo Users
    </td>
  </tr>
  <tr>
    <td> 
      IMPORTANT-READ CAREFULLY: This Software License Agreement is a legal agreement between you (either an individual or a single entity) and Bill Shelley, developer of TRAMS  Scripts for Apollo® Users &nbsp;software product identified above, which includes computer software and associated media and printed materials.  By installing, copying, or otherwise using the SOFTWARE PRODUCT, you agree to be bound by the terms of this Software License Agreement.<br />
      SOFTWARE PRODUCT LICENSE<br />
      Copyright laws and international copyright treaties, as well as other intellectual property laws and treaties protect the SOFTWARE PRODUCT.  The SOFTWARE PRODUCT is licensed, not sold.&nbsp;<br />
      1.       GRANT OF LICENSE -- This Software License Agreement grants you the following rights: You may store or install a copy of the SOFTWARE PRODUCT on to your Apollo® System.  If you have Branch offices, you may also install the SOFTWARE PRODUCT on their respective systems.<br />
      2.       DESCRIPTION OF OTHER RIGHTS AND LIMITATIONS.<br />
      Rental or Sale- You may not rent, lease, or sell the SOFTWARE PRODUCT.<br />
      Software Transfer -  upon sale of your agency, you may permanently transfer all of your rights under this agreement, provided you retain no copies, you transfer all of the SOFTWARE PRODUCT (including all component parts, the media and printed materials, and any upgrades), and the recipient agrees to the terms of this agreement.  If the SOFTWARE PRODUCT is an upgrade, any transfer must include all prior versions of the SOFTWARE PRODUCT.<br />
      Termination - Without prejudice to any other rights, Bill Shelley may terminate this Software License Agreement if you fail to comply with its terms and conditions.  In such event, you must destroy all copies of the SOFTWARE PRODUCT and all of its component parts.<br />
      3.       COPYRIGHT -- All title and copyrights in and to the SOFTWARE PRODUCT (including but not limited to any images, photographs, animations, video, audio, music, text, and &quot;applets,&quot; incorporated into the SOFTWARE PRODUCT), the accompanying printed materials, and any copies of the SOFTWARE PRODUCT, are owned by Bill Shelley.  The SOFTWARE PRODUCT is protected by copyright laws and international treaty provisions.  Therefore, you must treat the SOFTWARE PRODUCT like any other copyrighted material.<br />
      4.       LIMITED WARRANTY  Bill Shelley warrants that the SOFTWARE PRODUCT will perform substantially in accordance with the accompanying written materials for a period of ninety (90) days from the date of receipt.  To the extent allowed by applicable law, implied warranties on the SOFTWARE PRODUCT and hardware, if any, are limited to ninety (90) days.&nbsp;<br />
      5.       NO OTHER WARRANTIES - To the maximum extent permitted by applicable law, Bill Shelley disclaims all other warrantees, either express or implied, including, but not limited to, implied warrantees of merchantability and fitness for a particular purpose, with regard to the software product, and any accompanying hardware.  This limited warranty gives you specific legal rights.  You may have others, which vary from state/jurisdiction to state/jurisdiction.  Once the disks are mailed, your purchase of Apollo Scripts for TRAMS is completely NON-REFUNDABLE.<br />
      6.       NO LIABILITY FOR CONSEQUENTIAL DAMAGES  - Bill Shelley is not an employee of Trams or Galileo International, LLC..  To the maximum extent permitted by applicable law, in no event shall Bill Shelley, Galileo International, LLC. , or TRAMS be held liable for any special, incidental, indirect, or consequential damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or any other pecuniary loss) arising out of the use of or inability to use the software product, even if the parties have been advised of the possibility of such damages.<br />
      7.       AFFILIATONS: Shelley Consulting, Bill Shelley, and &#147;Trams Scripts for Apollo® Users&#148; are not affiliated or associated with, or endorsed by Galileo International, LLC. &#147;Trams Scripts for Apollo® Users&#148; is not endorsed or approved by Galileo International, Inc. for use in connections with the Apollo® system, the Focalpoint®, FocalpointNet &#153; or Scriptwriter Plus&#153; software programs.TERMS OF AGREEMENT:<br />
      The cost for the entire script package is only $575 plus $120 per each additional pseudo city. The annual subscription for the software is $120 per year for each pseudo city, which entitles you to free email support, phone support via a non-toll free number, as well as free updates via email anytime requested throughout the year.  For multiple branch installations, this support is provided to the home office location only.  Each additional support location will require an additional $120  plus $30 per year fee. Additionally, when a major change is made to TRAMS  Scripts for Apollo® Users because of a change by Galileo International, LLC. or Trams, you will automatically receive the updates without having to request them, but ONLY via email.&nbsp;<br />
      By submitting this form, I hereby agree to the terms of this agreement.<br />
    </td>
  </tr>
</table>
  <form id="order" method="post" runat="server">
<asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" Width="288px" />
  <table border="1" width="85%" style="font-size: smaller; font-family: Arial">
      <tr>
        <td style="width: 91px">
            Agency Name
        </td>
        <td style="width: 303px">
            <asp:TextBox id="agency" runat="server"  tabindex="1" maxlength="60" BorderStyle="Solid" ToolTip="Travel Agency Name" Wrap="False" Width="176px" ></asp:TextBox> 
            <asp:RequiredFieldValidator ID="rfvAgy" runat="server" ErrorMessage="Agency name is required" ControlToValidate="agency" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
        <td  align="right" style="width: 95px">
            # Workstations
         </td>
        <td style="width: 138px">
          <asp:textbox id="Wkstns" runat="server"  tabindex="2" maxlength="3" Width="72px" ToolTip="Number of Apollos Workstations"></asp:textbox>&nbsp;
         </td>
      </tr>
      <tr>
        <td style="width: 91px; height: 26px;">
            Address
        </td>
        <td style="width: 303px; height: 26px;" >
            <asp:TextBox ID="address" runat="server" tabindex="3" maxlength="40" ToolTip="Address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is required" ControlToValidate="address" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
        <td  align="right" style="width: 95px; height: 26px;">
            Address</td>
        <td style="width: 138px; height: 26px;" >
            <asp:TextBox ID="add2" runat="server" tabindex="4" ToolTip="Address Line 2"></asp:TextBox>
        </td>
      </tr>
      <tr>
        <td style="width: 91px" >
            City
        </td>
        <td  align="left" style="width: 303px">
            <asp:textbox id="city" runat="server" tabindex="5" maxlength="25" ToolTip="City"></asp:textbox>
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="City is required" ControlToValidate="city" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            &nbsp; &nbsp;
            State
            <asp:DropDownList ID="state" runat="server" TabIndex="6" ToolTip="State" Width="56px">
            <asp:ListItem>&quot;--&quot;</asp:ListItem> 
            <asp:listitem>AK</asp:listitem>
            <asp:listitem>AZ</asp:listitem>
            <asp:listitem>AR</asp:listitem>
            <asp:listitem>CA</asp:listitem>
            <asp:listitem>CO</asp:listitem>
            <asp:listitem>CT</asp:listitem>
            <asp:listitem>DE</asp:listitem>
            <asp:listitem>DC</asp:listitem>
            <asp:listitem>FL</asp:listitem>
            <asp:listitem>GA</asp:listitem>
            <asp:listitem>HI</asp:listitem>
            <asp:listitem>ID</asp:listitem>
            <asp:listitem>IL</asp:listitem>
            <asp:listitem>IN</asp:listitem>
            <asp:listitem>IA</asp:listitem>
            <asp:listitem>KS</asp:listitem>
            <asp:listitem>KY</asp:listitem>
            <asp:listitem>LA</asp:listitem>
            <asp:listitem>ME</asp:listitem>
            <asp:listitem>MD</asp:listitem>
            <asp:listitem>MA</asp:listitem>
            <asp:listitem>MI</asp:listitem>
            <asp:listitem>MN</asp:listitem>
            <asp:listitem>MS</asp:listitem>
            <asp:listitem>MO</asp:listitem>
            <asp:listitem>MT</asp:listitem>
            <asp:listitem>NE</asp:listitem>
            <asp:listitem>NV</asp:listitem>
            <asp:listitem>NH</asp:listitem>
            <asp:listitem>NJ</asp:listitem>
            <asp:listitem>NM</asp:listitem>
            <asp:listitem>NY</asp:listitem>
            <asp:listitem>NC</asp:listitem>
            <asp:listitem>ND</asp:listitem>
            <asp:listitem>OH</asp:listitem>
            <asp:listitem>OK</asp:listitem>
            <asp:listitem>OR</asp:listitem>
            <asp:listitem>PA</asp:listitem>
            <asp:listitem>RI</asp:listitem>
            <asp:listitem>SC</asp:listitem>
            <asp:listitem>SD</asp:listitem>
            <asp:listitem>TN</asp:listitem>
            <asp:listitem>TX</asp:listitem>
            <asp:listitem>UT</asp:listitem>
            <asp:listitem>VT</asp:listitem>
            <asp:listitem>VA</asp:listitem>
            <asp:listitem>WA</asp:listitem>
            <asp:listitem>WV</asp:listitem>
            <asp:listitem>WI</asp:listitem>
            <asp:listitem>WY</asp:listitem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is required" ControlToValidate="state" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
        <td align="right" style="width: 95px">
            Zip</td>
        <td  align="left" style="width: 138px">
            <asp:TextBox id="zip" runat="server" maxlength="15" tabindex="7" ToolTip="Zip code" Width="64px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="Zip is required" ControlToValidate="zip" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td style="width: 91px" >
            Contact Name
        </td>
        <td  align="left" style="width: 303px">
            <asp:TextBox id="contact" runat="server" ToolTip="Agency Contact" maxlength="40" tabindex="8" Width="184px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvContact" runat="server" ErrorMessage="Contact is required" ControlToValidate="contact" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
        <td align="right" style="width: 95px" >
            Title
        </td>
        <td style="width: 138px">
            <asp:TextBox id="title" runat="server" tabindex="9" ToolTip="Title of person ordering scripts"></asp:TextBox> 
        </td> 
      </tr>
      <tr>
        <td style="width: 91px" >
            Email Address
        </td>
        <td style="width: 303px" >
            <asp:TextBox id="email" runat="server" maxlength="100" tabindex="10" Width="248px" ToolTip="Email Address"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="email" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
        <td  align="right" style="width: 95px">
            Referred By
        </td>
        <td style="width: 138px" >
            <asp:TextBox ID="referred" runat="server" TabIndex="11" ToolTip="Referred by"></asp:TextBox>
        </td>
      </tr>
      <tr>
        <td style="width: 91px" >
            Pseudo City
        </td>
        <td style="width: 303px" >
            <asp:TextBox ID="pseudo" runat="server" maxlength="9" tabindex="12" Width="112px" ToolTip="Apollo Pseudo City"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSID" runat="server" ErrorMessage="Pseudo City is Required" ControlToValidate="pseudo" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
        <td  align="right" style="width: 95px">
            ARC #</td>
        <td style="width: 138px" >
          <asp:textbox ID="ARC" maxlength="10" tabindex="13" runat="server" Width="128px" ToolTip="ARC #"  ></asp:textbox> 
        </td>
      </tr>
      <tr>
        <td style="width: 91px" >
            Phone
        </td>
        <td style="width: 303px"> 
            <asp:TextBox ID="phone" runat="server"  maxlength="20" tabindex="14" Width="128px" ToolTip="Agency phone"></asp:TextBox>&nbsp;
        </td>
        <td  align="right" style="width: 95px">
            Fax</td>
        <td style="width: 138px" >
            <asp:TextBox ID="fax" runat="server" TabIndex="15" ToolTip="Agency Fax"></asp:TextBox>  
        </td>
      </tr>
</table>
<br />
      &nbsp;<table border="0" style="font-size: smaller; font-family: Arial; width: 22%;">
<tr>
    <td style="width: 225px; height: 27px">
        <asp:Button ID="Submit" runat="server" Text="I Agree" TabIndex="16" />
    </td>
    <td style="width: 225px; height: 27px">
        <asp:Button ID="Reset" runat="server" Text="Reset" TabIndex="17"  CausesValidation="false" />
    </td>
</tr>  
</table>       
</form>
<div align="right">
<!-- Begin GoDaddy SSL -->
<span id="siteseal"><script type="text/javascript" src="https://seal.godaddy.com/getSeal?sealID=q5k4Nr9VjyKBqK6cmkrZ5POUXAZUMHxSyrCDzdH5K5GIehPXgQ"></script></span>
<!-- End GoDaddy SSL -->
</div>
  <table border="1" width="85%" style="font-size: smaller; font-family: Arial">
  <tr>
  <td>
    <a href="http://www.shelleyconsulting.com/apollo">Return to Apollo Scripts</a></td>
  <td>
    <a href="https://shelleyconsulting.com/secpay/purchase.shtml">Go To Secure Order Page</a> 
  </td>
  <td>
    <a href="http://www.shelleyconsulting.com">Shelley Consulting Home Page</a> 
  </td>
  </tr>
  </table> 

</body>
</html>

