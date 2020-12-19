<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>图书信息列表</title>
    <!-- 设置变量 -->
    <c:set var="path" value="${pageContext.request.contextPath}" scope="page"/>
    <!-- 引入css样式 -->
    <link rel="stylesheet" type="text/css" href="${path}/resource/css/index.css"/>
</head>
<body>
<h1>图书信息列表</h1>
<hr>
<form action="/findAllBook.do" method="post">
    <input type="hidden" name="pageNum" id="pageNum" value="${map.pageNum}"/>
    <input type="text" name="bname" value="${map.bname}"/><input type="submit" value="搜索"/>
</form>
<table>
    <thead>
    <tr>
        <td colspan="6">
            <input type="button" value="添加"/>
            <input type="button" value="批量删除">
        </td>
    </tr>
    <tr>
        <th>
            <input type="checkbox" id="all">
            全选
        </th>
        <th>编号</th>
        <th>名称</th>
        <th>店面</th>
        <th>价格</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.list}" var="book">
        <tr>
            <td><input type="checkbox" name="chek" value="${book.bid}"/></td>
            <td>${book.bid}</td>
            <td>${book.bname}</td>
            <td>${book.taddress}</td>
            <td>${book.price}</td>
            <td><input type="button" value="查看" onclick="toupdate(${book.bid})"/></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="6">
            当前第${page.pageNum}/${page.pages}页，共${page.total}条记录
            <a href="javascript:fy(1)"><input type="button" value="首页"/></a>
            <a href="javascript:fy(${page.isFirstPage?1:page.prePage})"><input type="button" value="上一页"/></a>
            <a href="javascript:fy(${page.isLastPage?page.pages:page.nextPage})"><input type="button" value="下一页"/></a>
            <a href="javascript:fy(${page.pages})"><input type="button" value="尾页"/></a>
        </td>
    </tr>
    </tbody>
</table>


<!-- 引入jquery插件 -->
<script type="text/javascript" src="${path}/resource/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript">
    function toupdate(bid){
        location.href="toupdate.do?bid="+bid;
    }
    $(function () {
        $("#all").click(function () {
            var a=this.checked;
            $("input[name='chek']").each(function(){
                this.checked=a;
            });
        });

        $("input[value='添加']").click(function(){
            location.href="/toaddBook.do";
        });


        $("input[value='批量删除']").click(function () {
            if(confirm("确认删除吗?")){
                var a=new Array();
                $("input[name='chek']").each(function(){
                    if(this.checked==true){
                        a.push($(this).val());
                    }
                });
                $.post(
                    "/deleteBook.do",
                    {bids:a.toString()},
                    function (obj) {
                        if(obj.flag){
                            alert(obj.message);
                            location.href="/findAllBook.do";
                        }else{
                            alert(obj.message)
                        }
                    },"json"
                );
            }
        });
    });
    //实现分页功能
    function fy(pageNum){
        //给pageNum赋值
        $("#pageNum").val(pageNum);
        $("form").submit();
    }

</script>
</body>
</html>