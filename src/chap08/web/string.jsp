<%@ page pageEncoding="MS949" %>
<html>
<head>
   <title>Jakarta String Taglib Example</title>
</head>
<body text="#000000" bgcolor="#FFFFFF" link="#0000EE" vlink="#551A8B" alink="#FF0000">

<center>
<h1>
Jakarta STRING Taglib Example</h1></center>
<br>
<%@ taglib uri="http://jakarta.apache.org/taglibs/string-1.0.1" prefix="str" %>

<table border="1">
<tr><th>Tag</th><th>���</th><th>Input</th><th>Expected</th><th>Actual</th></tr></td>
<tr><td>capitalize</td>
	<td>ù���� �빮�� </td>
	<td>'test�׽�Ʈ'</td>
	<td>'Test�׽�Ʈ'</td>
	<td>'<str:capitalize>test�׽�Ʈ</str:capitalize>'</td></tr>
<tr><td>uncapitalize</td>
	<td>ù���� �ҹ���</td>
	<td>'Test�׽�Ʈ'</td>
	<td>'test�׽�Ʈ'</td>
	<td>'<str:uncapitalize>Test�׽�Ʈ</str:uncapitalize>'</td></tr>
<tr><td>upperCase</td>
	<td>��� �빮�� </td>
	<td>'Test'</td>
	<td>'TEST'</td>
	<td>'<str:upperCase>Test</str:upperCase>'</td></tr>
<tr><td>lowerCase</td>
	<td>��� �ҹ��� </td>
	<td>'TeSt'</td>
	<td>'test'</td>
	<td>'<str:lowerCase>TeSt</str:lowerCase>'</td></tr>
<tr><td>trim</td>
	<td>�糡 �������� </td>
	<td>'&nbsp;&nbsp;&nbsp;Test&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'</td>
	<td>'Test'</td>
	<td>'<str:trim>   Test      </str:trim>'</td></tr>
<tr><td>chop</td>
	<td>������ ���� ���� </td>
	<td>'Testy'</td>
	<td>'Test'</td>
	<td>'<str:chop>Testy</str:chop>'</td></tr>
<tr><td>chopNewline</td>
	<td>���ٹٲ� ����</td>
	<td>'Testy\n'</td>
	<td>'Test'</td>
	<td>'<str:chopNewline>Test
</str:chopNewline>'</td></tr>
<tr><td>escape</td>
	<td>escape ���� ǥ�� </td>
	<td>'Test	tseT'</td>
	<td>'Test\ttseT'</td>
	<td>'<str:escape>Test	tseT</str:escape>'</td></tr>
<tr><td>reverse</td>
	<td>���ڿ� ���� </td>
	<td>'Test�׽�Ʈ'</td>
	<td>'tseT'</td>
	<td>'<str:reverse>Test�׽�Ʈ</str:reverse>'</td></tr>
<tr><td>swapCase</td>
	<td>��ҹ��� �ٲٱ� </td>
	<td>'Test'</td>
	<td>'tEST'</td>
	<td>'<str:swapCase>Test</str:swapCase>'</td></tr>
<tr><td>soundex</td>
	<td>��������Ű ���� </td>
	<td>'Test'</td>
	<td>'T230'</td>
	<td>'<str:soundex>Test</str:soundex>'</td></tr>
<tr><td>metaphone</td>
	<td>���� ���� ���� </td>
	<td>'Test'</td>
	<td>'TST'</td>
	<td>'<str:metaphone>Test</str:metaphone>'</td></tr>
<tr><td>quoteRegexp</td>
	<td>����ǥ���� ǥ��</td>
	<td>'Te.*st'</td>
	<td>'Te\.\*st'</td>
	<td>'<str:quoteRegexp>Te.*st</str:quoteRegexp>'</td></tr>
<tr><td>capitalizeAllWords</td>
	<td>�ܾ ù���� �빮�� </td>
	<td>'test �׽�Ʈ and tset'</td>
	<td>'Test �׽�Ʈ And Tset'</td>
	<td>'<str:capitalizeAllWords>test �׽�Ʈ and tset</str:capitalizeAllWords>'</td></tr>
<tr><td>removeXml</td>
	<td>xml �±� ���� </td>
	<td>'&lt;test�׽�Ʈ&gt;query?&lt;test�׽�Ʈ&gt;'</td>
	<td>'query?'</td>
	<td>'<str:removeXml><test�׽�Ʈ>query?</test�׽�Ʈ></str:removeXml>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>count</td>
	<td>�ܾ� ���� </td>
	<td>'Test'</td>
	<td>'1'</td>
	<td>'<str:count set="e">Test</str:count>'</td></tr>
<tr><td>delete</td>
	<td>���� ���� ���� </td>
	<td>'Test'</td>
	<td>'Tst'</td>
	<td>'<str:delete set="e">Test</str:delete>'</td></tr>
<tr><td>squeeze</td>
	<td>���� </td>
	<td>'Teeest'</td>
	<td>'Test'</td>
	<td>'<str:squeeze set="e">Teeest</str:squeeze>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>center</td>
	<td>�������� ��� </td>
	<td>'Test'</td>
	<td>'&nbsp;&nbsp;Test&nbsp;&nbsp;'</td>
	<td>'<str:center width="8">Test</str:center>'</td></tr>
<tr><td>center</td>
	<td>�������� ���, �����޲� </td>
	<td>'Test'</td>
	<td>'::Test::'</td>
	<td>'<str:center width="8" delimiter=":">Test</str:center>'</td></tr>
<tr><td>leftPad</td>
	<td>�������� ���� �޿�� </td>
	<td>'Test'</td>
	<td>'::::Test'</td>
	<td>'<str:leftPad width="8" delimiter=":">Test</str:leftPad>'</td></tr>
<tr><td>rightPad</td>
	<td>�������� ������ �޿�� </td>
	<td>'Test'</td>
	<td>'Test::::'</td>
	<td>'<str:rightPad width="8" delimiter=":">Test</str:rightPad>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>chomp</td>
	<td>�������� ������ �ڸ���(��)</td>
	<td>'TestTeee'</td>
	<td>'Test'</td>
	<td>'<str:chomp delimiter="T">TestTeee</str:chomp>'</td></tr>
<tr><td>prechomp</td>
	<td>�������� ������ �ڸ���(��)</td>
	<td>'TestTeee'</td>
	<td>'Teee'</td>
	<td>'<str:prechomp delimiter="t">TestTeee</str:prechomp>'</td></tr>
<tr><td>getChomp</td>
	<td>�߸� �κ�(�������� ��)</td>
	<td>'TestTeee'</td>
	<td>'eee'</td>
	<td>'<str:getChomp delimiter="T">TestTeee</str:getChomp>'</td></tr>
<tr><td>getPrechomp</td>
	<td>�߸� �κ�(�������� ��)</td>
	<td>'TestTeee'</td>
	<td>'Tes'</td>
	<td>'<str:getPrechomp delimiter="t">TestTeee</str:getPrechomp>'</td></tr>
<tr><td>strip</td>
	<td>�յ� �������� ���� </td>
	<td>'::Test::�׽�Ʈ::'</td>
	<td>'Test::�׽�Ʈ'</td>
	<td>'<str:strip delimiter=":">::Test::�׽�Ʈ::</str:strip>'</td></tr>
<tr><td>stripStart</td>
	<td>�� �������� ���� </td>
	<td>'::Test::'</td>
	<td>'Test::'</td>
	<td>'<str:stripStart delimiter=":">::Test::</str:stripStart>'</td></tr>
<tr><td>stripEnd</td>
	<td>�� �������� ���� </td>
	<td>'::Test::'</td>
	<td>'::Test'</td>
	<td>'<str:stripEnd delimiter=":">::Test::</str:stripEnd>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>overlay</td>
	<td>������ġ ���ڿ� ��ġ </td>
	<td>'TestTestTest'</td>
	<td>'TestBobTest'</td>
	<td>'<str:overlay with="Bob" start="4" end="8">TestTestTest</str:overlay>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>substring</td>
	<td>������ġ ���ڿ� ���� </td>
	<td>'TestBobTest'</td>
	<td>'Bob'</td>
	<td>'<str:substring start="4" end="7">TestBobTest</str:substring>'</td></tr>
<tr><td>substring</td>
	<td>������ġ ���ڿ� ���� </td>
	<td>'TestBobTest'</td>
	<td>'BobTest'</td>
	<td>'<str:substring start="4">TestBobTest</str:substring>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>repeat</td>
	<td>�ݺ� </td>
	<td>'Test'</td>
	<td>'TestTestTestTest'</td>
	<td>'<str:repeat count="4">Test</str:repeat>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>nestedString</td>
	<td>��ø���� ���� </td>
	<td>'TestBobTest'</td>
	<td>'Bob'</td>
	<td>'<str:nestedString open="Test">TestBobTest</str:nestedString>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>countMatches</td>
	<td>��Ī ȸ�� </td>
	<td>'TestBobTest'</td>
	<td>'2'</td>
	<td>'<str:countMatches substring="Test">TestBobTest</str:countMatches>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>default</td>
	<td>null ǥ������ </td>
	<td>'null'</td>
	<td>''</td>
	<td>'<str:default>null</str:default>'</td></tr>
<tr><td>default</td>
	<td>���� ���ڿ� �⺻�� ��ġ </td>
	<td>'Test'</td>
	<td>'Bob'</td>
	<td>'<str:default value="Test" default="Bob">Test</str:default>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>replace</td>
	<td>���� ���ڿ� ��ġ </td>
	<td>'TestBobTest'</td>
	<td>'JimBobJim'</td>
	<td>'<str:replace replace="Test" with="Jim">TestBobTest</str:replace>'</td></tr>
<tr><td>replace</td>
	<td>Ƚ����ŭ ���� ���ڿ� ��ġ </td>
	<td>'TestBobTest'</td>
	<td>'JimBobTest'</td>
	<td>'<str:replace replace="Test" with="Jim" count="1">TestBobTest</str:replace>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>encodeUrl</td>
	<td>URL ���ڵ� </td>
	<td>'http://www.apache.org/'</td>
	<td>'http%3A%2F%2Fwww.apache.org%2F'</td>
	<td>'<str:encodeUrl>http://www.apache.org/</str:encodeUrl>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>decodeUrl</td>
	<td>URL ���ڵ� </td>
	<td>'http%3A%2F%2Fwww.apache.org%2F'</td>
	<td>'http://www.apache.org/'</td>
	<td>'<str:decodeUrl>http%3A%2F%2Fwww.apache.org%2F</str:decodeUrl>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>randomString</td>
	<td>���� ���ڿ� </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="8"/>'</td></tr>
<tr><td>randomString:numeric</td>
	<td>���� ���� </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="8" type="numeric"/>'</td></tr>
<tr><td>randomString:alphanumeric</td>
	<td>���� ���ڿ� ���ڿ� </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="8" type="alphanumeric"/>'</td></tr>
<tr><td>randomString:unicode</td>
	<td>���� �����ڵ� </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="8" type="unicode"/>'</td></tr>
<tr><td>randomString:alphabet</td>
	<td>���� ���ĺ� ��ġ </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="15" type="alphabet"/>'</td></tr>
<tr><td>randomString:A-Q</td>
	<td>�������� ���� ���ڿ� </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="4" start="A" end="Q"/>'</td></tr>
<tr><td>randomString:a , i z B �� �� Ʈ</td>
	<td>�����ܾ� ���� ���ڿ� ���� </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="5">ai,zB�׽�Ʈ</str:randomString>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>truncateNicely</td>
	<td>�� �� ���� </td>
	<td>'Incy wincy spider climbed up the spout'</td>
	<td>'Incy wincy spider...'</td>
	<td>'<str:truncateNicely lower="13" upper="20">Incy wincy spider climbed up the spout</str:truncateNicely>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>
<!-- test wordWrap -->

<td></table>

</body>
</html>
