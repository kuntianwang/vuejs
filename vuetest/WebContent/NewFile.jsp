<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/vue@2.5.17/dist/vue.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body{
        font-family:"Microsoft YaHei";
    }
    #tab{
        width: 600px;
        margin: 0 auto;
    }
    .tab-tit{
        font-size: 0;
        width: 600px;
    }
    .tab-tit a{
        display: inline-block;
        height: 40px;
        line-height: 40px;
        font-size: 16px;
        width: 25%;
        text-align: center;
        background: #ccc;
        color: #333;
        text-decoration: none;
    }
    .tab-tit .cur{
        background: #09f;
        color: #fff;
    }
    .tab-con div{
        border: 1px solid #ccc;
        height: 400px;
        padding-top: 20px;
    }
</style>
</head>
<body>
<div id="tab">
    <div class="tab-tit">
        <!--点击设置curId的值  如果curId等于0，第一个a添加cur类名，如果curId等于1，第二个a添加cur类名，以此类推。添加了cur类名，a就会改变样式 @click,:class ,v-show这三个是vue常用的指令或添加事件的方式-->
        <a href="javascript:;" @click="curId=0" :class="{'cur':curId===0}">html</a>
        <a href="javascript:;" @click="curId=1" :class="{'cur':curId===1}">css</a>
        <a href="javascript:;" @click="curId=2" :class="{'cur':curId===2}">javascript</a>
        <a href="javascript:;" @click="curId=3" :class="{'cur':curId===3}">vue</a>
    </div>
    <div class="tab-con">
        <!--根据curId的值显示div,如果curId等于0，第一个div显示，其它三个div不显示。如果curId等于1，第二个div显示，其它三个div不显示。以此类推-->
        <div v-show="curId===0">
            html<br/>
        </div>
        <div v-show="curId===1">
            css
        </div>
        <div v-show="curId===2">
            javascript
        </div>
        <div v-show="curId===3">
            vue
        </div>
    </div>
</div>
</body>
<script src="vue.min.js"></script>
<script>
    new Vue({
        el: '#tab',
        data: {
            curId: 0
        },
        computed: {},
        methods: {},
        mounted: function () {
        }
    })
</script>
</html>

