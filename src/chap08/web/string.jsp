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
<tr><th>Tag</th><th>기능</th><th>Input</th><th>Expected</th><th>Actual</th></tr></td>
<tr><td>capitalize</td>
	<td>첫글자 대문자 </td>
	<td>'test테스트'</td>
	<td>'Test테스트'</td>
	<td>'<str:capitalize>test테스트</str:capitalize>'</td></tr>
<tr><td>uncapitalize</td>
	<td>첫글자 소문자</td>
	<td>'Test테스트'</td>
	<td>'test테스트'</td>
	<td>'<str:uncapitalize>Test테스트</str:uncapitalize>'</td></tr>
<tr><td>upperCase</td>
	<td>모두 대문자 </td>
	<td>'Test'</td>
	<td>'TEST'</td>
	<td>'<str:upperCase>Test</str:upperCase>'</td></tr>
<tr><td>lowerCase</td>
	<td>모두 소문자 </td>
	<td>'TeSt'</td>
	<td>'test'</td>
	<td>'<str:lowerCase>TeSt</str:lowerCase>'</td></tr>
<tr><td>trim</td>
	<td>양끝 공백제거 </td>
	<td>'&nbsp;&nbsp;&nbsp;Test&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'</td>
	<td>'Test'</td>
	<td>'<str:trim>   Test      </str:trim>'</td></tr>
<tr><td>chop</td>
	<td>마지막 글자 제거 </td>
	<td>'Testy'</td>
	<td>'Test'</td>
	<td>'<str:chop>Testy</str:chop>'</td></tr>
<tr><td>chopNewline</td>
	<td>끝줄바꿈 제거</td>
	<td>'Testy\n'</td>
	<td>'Test'</td>
	<td>'<str:chopNewline>Test
</str:chopNewline>'</td></tr>
<tr><td>escape</td>
	<td>escape 문자 표시 </td>
	<td>'Test	tseT'</td>
	<td>'Test\ttseT'</td>
	<td>'<str:escape>Test	tseT</str:escape>'</td></tr>
<tr><td>reverse</td>
	<td>문자열 역순 </td>
	<td>'Test테스트'</td>
	<td>'tseT'</td>
	<td>'<str:reverse>Test테스트</str:reverse>'</td></tr>
<tr><td>swapCase</td>
	<td>대소문자 바꾸기 </td>
	<td>'Test'</td>
	<td>'tEST'</td>
	<td>'<str:swapCase>Test</str:swapCase>'</td></tr>
<tr><td>soundex</td>
	<td>유사음성키 추출 </td>
	<td>'Test'</td>
	<td>'T230'</td>
	<td>'<str:soundex>Test</str:soundex>'</td></tr>
<tr><td>metaphone</td>
	<td>유사 영어 발음 </td>
	<td>'Test'</td>
	<td>'TST'</td>
	<td>'<str:metaphone>Test</str:metaphone>'</td></tr>
<tr><td>quoteRegexp</td>
	<td>정규표현식 표현</td>
	<td>'Te.*st'</td>
	<td>'Te\.\*st'</td>
	<td>'<str:quoteRegexp>Te.*st</str:quoteRegexp>'</td></tr>
<tr><td>capitalizeAllWords</td>
	<td>단어별 첫글자 대문자 </td>
	<td>'test 테스트 and tset'</td>
	<td>'Test 테스트 And Tset'</td>
	<td>'<str:capitalizeAllWords>test 테스트 and tset</str:capitalizeAllWords>'</td></tr>
<tr><td>removeXml</td>
	<td>xml 태그 제거 </td>
	<td>'&lt;test테스트&gt;query?&lt;test테스트&gt;'</td>
	<td>'query?'</td>
	<td>'<str:removeXml><test테스트>query?</test테스트></str:removeXml>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>count</td>
	<td>단어 갯수 </td>
	<td>'Test'</td>
	<td>'1'</td>
	<td>'<str:count set="e">Test</str:count>'</td></tr>
<tr><td>delete</td>
	<td>지정 글자 삭제 </td>
	<td>'Test'</td>
	<td>'Tst'</td>
	<td>'<str:delete set="e">Test</str:delete>'</td></tr>
<tr><td>squeeze</td>
	<td>압축 </td>
	<td>'Teeest'</td>
	<td>'Test'</td>
	<td>'<str:squeeze set="e">Teeest</str:squeeze>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>center</td>
	<td>지정길이 가운데 </td>
	<td>'Test'</td>
	<td>'&nbsp;&nbsp;Test&nbsp;&nbsp;'</td>
	<td>'<str:center width="8">Test</str:center>'</td></tr>
<tr><td>center</td>
	<td>지정길이 가운데, 공간메꿈 </td>
	<td>'Test'</td>
	<td>'::Test::'</td>
	<td>'<str:center width="8" delimiter=":">Test</str:center>'</td></tr>
<tr><td>leftPad</td>
	<td>지정길이 왼쪽 메우기 </td>
	<td>'Test'</td>
	<td>'::::Test'</td>
	<td>'<str:leftPad width="8" delimiter=":">Test</str:leftPad>'</td></tr>
<tr><td>rightPad</td>
	<td>지정길이 오른쪽 메우기 </td>
	<td>'Test'</td>
	<td>'Test::::'</td>
	<td>'<str:rightPad width="8" delimiter=":">Test</str:rightPad>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>chomp</td>
	<td>지정글자 깨물어 자르기(뒤)</td>
	<td>'TestTeee'</td>
	<td>'Test'</td>
	<td>'<str:chomp delimiter="T">TestTeee</str:chomp>'</td></tr>
<tr><td>prechomp</td>
	<td>지정글자 깨물어 자르기(앞)</td>
	<td>'TestTeee'</td>
	<td>'Teee'</td>
	<td>'<str:prechomp delimiter="t">TestTeee</str:prechomp>'</td></tr>
<tr><td>getChomp</td>
	<td>잘린 부분(지정글자 뒤)</td>
	<td>'TestTeee'</td>
	<td>'eee'</td>
	<td>'<str:getChomp delimiter="T">TestTeee</str:getChomp>'</td></tr>
<tr><td>getPrechomp</td>
	<td>잘린 부분(지정글자 앞)</td>
	<td>'TestTeee'</td>
	<td>'Tes'</td>
	<td>'<str:getPrechomp delimiter="t">TestTeee</str:getPrechomp>'</td></tr>
<tr><td>strip</td>
	<td>앞뒤 지정문자 삭제 </td>
	<td>'::Test::테스트::'</td>
	<td>'Test::테스트'</td>
	<td>'<str:strip delimiter=":">::Test::테스트::</str:strip>'</td></tr>
<tr><td>stripStart</td>
	<td>앞 지정문자 삭제 </td>
	<td>'::Test::'</td>
	<td>'Test::'</td>
	<td>'<str:stripStart delimiter=":">::Test::</str:stripStart>'</td></tr>
<tr><td>stripEnd</td>
	<td>뒤 지정문자 삭제 </td>
	<td>'::Test::'</td>
	<td>'::Test'</td>
	<td>'<str:stripEnd delimiter=":">::Test::</str:stripEnd>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>overlay</td>
	<td>지정위치 문자열 대치 </td>
	<td>'TestTestTest'</td>
	<td>'TestBobTest'</td>
	<td>'<str:overlay with="Bob" start="4" end="8">TestTestTest</str:overlay>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>substring</td>
	<td>지정위치 문자열 추출 </td>
	<td>'TestBobTest'</td>
	<td>'Bob'</td>
	<td>'<str:substring start="4" end="7">TestBobTest</str:substring>'</td></tr>
<tr><td>substring</td>
	<td>지정위치 문자열 추출 </td>
	<td>'TestBobTest'</td>
	<td>'BobTest'</td>
	<td>'<str:substring start="4">TestBobTest</str:substring>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>repeat</td>
	<td>반복 </td>
	<td>'Test'</td>
	<td>'TestTestTestTest'</td>
	<td>'<str:repeat count="4">Test</str:repeat>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>nestedString</td>
	<td>중첩문자 추출 </td>
	<td>'TestBobTest'</td>
	<td>'Bob'</td>
	<td>'<str:nestedString open="Test">TestBobTest</str:nestedString>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>countMatches</td>
	<td>매칭 회수 </td>
	<td>'TestBobTest'</td>
	<td>'2'</td>
	<td>'<str:countMatches substring="Test">TestBobTest</str:countMatches>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>default</td>
	<td>null 표시제거 </td>
	<td>'null'</td>
	<td>''</td>
	<td>'<str:default>null</str:default>'</td></tr>
<tr><td>default</td>
	<td>지정 문자열 기본값 대치 </td>
	<td>'Test'</td>
	<td>'Bob'</td>
	<td>'<str:default value="Test" default="Bob">Test</str:default>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>replace</td>
	<td>지정 문자열 대치 </td>
	<td>'TestBobTest'</td>
	<td>'JimBobJim'</td>
	<td>'<str:replace replace="Test" with="Jim">TestBobTest</str:replace>'</td></tr>
<tr><td>replace</td>
	<td>횟수만큼 지정 문자열 대치 </td>
	<td>'TestBobTest'</td>
	<td>'JimBobTest'</td>
	<td>'<str:replace replace="Test" with="Jim" count="1">TestBobTest</str:replace>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>encodeUrl</td>
	<td>URL 인코드 </td>
	<td>'http://www.apache.org/'</td>
	<td>'http%3A%2F%2Fwww.apache.org%2F'</td>
	<td>'<str:encodeUrl>http://www.apache.org/</str:encodeUrl>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>decodeUrl</td>
	<td>URL 디코드 </td>
	<td>'http%3A%2F%2Fwww.apache.org%2F'</td>
	<td>'http://www.apache.org/'</td>
	<td>'<str:decodeUrl>http%3A%2F%2Fwww.apache.org%2F</str:decodeUrl>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>randomString</td>
	<td>임의 문자열 </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="8"/>'</td></tr>
<tr><td>randomString:numeric</td>
	<td>임의 숫자 </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="8" type="numeric"/>'</td></tr>
<tr><td>randomString:alphanumeric</td>
	<td>임의 숫자와 문자열 </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="8" type="alphanumeric"/>'</td></tr>
<tr><td>randomString:unicode</td>
	<td>임의 유니코드 </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="8" type="unicode"/>'</td></tr>
<tr><td>randomString:alphabet</td>
	<td>임의 알파벳 대치 </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="15" type="alphabet"/>'</td></tr>
<tr><td>randomString:A-Q</td>
	<td>지정구간 임의 문자열 </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="4" start="A" end="Q"/>'</td></tr>
<tr><td>randomString:a , i z B 테 스 트</td>
	<td>지정단어 임의 문자열 추출 </td>
	<td>n/a</td>
	<td>n/a</td>
	<td>'<str:randomString count="5">ai,zB테스트</str:randomString>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>

<tr><td>truncateNicely</td>
	<td>긴 줄 끊기 </td>
	<td>'Incy wincy spider climbed up the spout'</td>
	<td>'Incy wincy spider...'</td>
	<td>'<str:truncateNicely lower="13" upper="20">Incy wincy spider climbed up the spout</str:truncateNicely>'</td></tr>
<tr><td colspan="5">&nbsp;</td></tr>
<!-- test wordWrap -->

<td></table>

</body>
</html>
