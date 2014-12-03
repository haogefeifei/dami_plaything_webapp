<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="form1" name="form1" action="" method="post" onsubmit="return Validator.Validate(this,1)">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="45" valign="top"><img src="../user2/images/register_03.gif" width="45" height="386" /></td>
    <td width="623" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td background="../user2/images/register_28.gif"><form id="form1" name="form1" method="post" action="">
            <table width="100%" height="158" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center"><table width="272" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="123" height="25" align="left"><img src="../user2/images/register_10.gif" width="79" height="17" /></td>
                    <td width="268" align="left"><label>
                      <input name="yhm" id="yhm" type="text" dataType="Limit" require="true" msg="用户名不能为空"  />
                    </label></td>
                  </tr>
                  <tr>
                    <td height="25" align="left"><img src="../user2/images/register_13.gif" width="79" height="18" /></td>
                    <td align="left"><input  name="yhxm" id="yhxm" type="text" dataType="Limit" require="true" msg="用户姓名不能为空"  /></td>
                  </tr>
                  <tr>
                    <td height="25" align="left"><img src="../user2/images/register_15.gif" width="79" height="17" /></td>
                    <td align="left"><input name="mm" id="mm" size="25" type="password" dataType="Limit" require="true" msg="密码不能为空"  /></td>
                  </tr>
                  <tr>
                    <td height="25" align="left"><img src="../user2/images/register_17.gif" width="76" height="19" /></td>
                    <td align="left"><input name="checkmm" id="checkmm" size="25" type="password" dataType="Limit" require="true" msg="确认密码不能为空" /></td>
                  </tr>
                </table></td>
                <td width="232" align="right" valign="top"><img src="../user2/images/register_08.gif" width="232" height="172" /></td>
                </tr>
            </table>
                    <table width="623" height="41" border="0" cellpadding="0" cellspacing="0">
                      <tr align="center">
			<td width="201">&nbsp;</td>
                        <td width="107"><input onClick="javascript:save1();" type="image" src="../user2/images/register_22.gif" width="82" height="23"  /></td>
                        <td width="62"><input onclick="resetform();" type="image" src="../user2/images/rr_24.gif" width="62" height="23"></td>
			<td width="201">&nbsp;</td>
                      </tr>
                    </table>
          </form>
          </td>
        </tr>
      </table>
      
     </td>
    <td class="bg">&nbsp;</td>
  </tr>
</table>
</form>
<iframe id="ifr" name="ifr" style="display:none" ></iframe>
</body>
</html>