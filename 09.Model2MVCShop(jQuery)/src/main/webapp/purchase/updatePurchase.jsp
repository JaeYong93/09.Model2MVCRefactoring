<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<html>
<head>
<title>������������</title>

<script type="text/javascript" src="../javascript/calendar.js">
</script>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
	
	$(function() {
		$("td.ct_btn01:contains('���')").on("click", function() {
			history.back();	
		});
	});
	</script>
	
</head>

<body bgcolor="#ffffff" text="#000000">

<form name="updatePurchase" method="post" action="/purchase/updatePurchase?tranNo=${purchase.tranNo}" >

<table border=1>

<table width="100%" height="37" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="15" height="37">
			<img src="/images/ct_ttl_img01.gif"	width="15" height="37"/>
		</td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">������������</td>
					<td width="20%" align="right">&nbsp;</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif"	width="12" height="37"/>
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			������ ���̵�
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			${user.userId}
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>	
	
	<tr>
		<td width="104" class="ct_write">
			���Ź��
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
      		<select name="paymentOption" class="ct_input_g" style="width: 100px; height: 19px" maxLength="20">
				<option value="1"${purchase.paymentOption eq '1' ? 'selected' : ''}>���ݱ���</option>
				<option value="2"${purchase.paymentOption eq '2' ? 'selected' : ''}>�ſ뱸��</option>
    		</select>			
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			������ �̸�
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		 <input type = "text" name = "receiverName" value = "${purchase.receiverName}"
		 	class = "ct_input_g" style = "width:100px; height:19px" maxLength="20"/>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			������ ����ó
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		 <input type = "text" name = "receiverPhone" value = "${purchase.receiverPhone}"
		 	class = "ct_input_g" style = "width:100px; height:19px" maxLength="20"/>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>		

	<tr>
		<td width="104" class="ct_write">
			������ �ּ�
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		 <input type = "text" name = "dlvyAddr" value = "${purchase.dlvyAddr}"
		 	class = "ct_input_g" style = "width:100px; height:19px" maxLength="20"/>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>	

	<tr>
		<td width="104" class="ct_write">
			���ſ�û����
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		 <input type = "text" name = "dlvyRequest" value = "${purchase.dlvyRequest}"
		 	class = "ct_input_g" style = "width:100px; height:19px" maxLength="20"/>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td width="104" class="ct_write">
			����������
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
		 <input type = "text" readonly="readonly" name = "dlvyDate" va,ue= "${purchase.dlvyDate}"
		 	class = "ct_input_g" style = "width:100px; height:19px" maxLength="20"/>
			&nbsp;<img src="../images/ct_icon_date.gif" width= "15" height= "15"
			onclick = "show_calendar('document.updatePurchase.dlvyDate', document.updatePurchase.dlvyDate.value)"/>
		</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>	
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
	<tr>
		<td width="53%"></td>
		<td align="right">
		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="17" height="23">
					<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
				</td>
				<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
					<input type="submit" value="����"/>
				</td>
				<td width="14" height="23">
					<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
				</td>
				<td width="30"></td>
				<td width="17" height="23">
					<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
				</td>
				<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
					���
				</td>
				<td width="14" height="23">
					<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>

</form>

</body>
</html>