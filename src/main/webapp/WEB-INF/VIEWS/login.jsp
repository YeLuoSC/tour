<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<script type="text/javascript">
function test(){
	document.getElementById("testform").submit();
}
</script>
</head>
<body>
<h2>Hello World!</h2>
<form action="user/login.do"  id="testform" ><input type="button"value="测试" onclick="test();"/></form>
</body>
</html>
