<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="myDiv1">
        <p>mydiv1</p>
        {{userName}}
        {{age}}
    </div>
    <div id="myDiv2">
        <p>mydiv2</p>
        {{age}}
    </div>
</body>
<script type="text/javascript">
    var myModel1 = {userName:'dqc',age:22};
    var myViewModel1 = new Vue({
        el:'#myDiv1',
        data:myModel1
    });    
</script>

</html>
