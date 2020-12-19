<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改页面</title>
    <!-- 设置变量 -->
    <c:set var="path" value="${pageContext.request.contextPath}" scope="page"/>
    <!-- 引入css样式 -->
    <link rel="stylesheet" type="text/css" href="${path}/resource/css/index.css"/>
</head>
<body>
<h1>图书信息修改</h1>
<hr>
<form>
    <input value="${book.bid}" type="hidden" name="bid"/>
    <table>
        <tbody>
        <tr>
            <td>名称</td>
            <td><input name="bname" type="text" value="${book.bname}"/></td>
        </tr>
        <tr>
            <td>价格</td>
            <td><input name="price" type="text" value="${book.price}"/></td>
        </tr>
        <tr>
            <td>作者</td>
            <td><input name="author" type="text" value="${book.author}"/></td>
        </tr>
        <tr>
            <td>店面</td>
            <td>
                <select name="tid">
                    <c:forEach items="${list}" var="store">
                        <option value="${store.tid}" ${book.tid==store.tid?"selected":""}>${store.tname}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="reset" value="重置">
                <input type="button" value="修改">
            </td>
        </tr>
        </tbody>
    </table>
</form>
<!-- 引入jquery插件 -->
<script type="text/javascript" src="${path}/resource/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript">
    //写一个文档就绪函数
    $(function() {
        $("input[value='修改']").click(function(){
            $.post(
                "/updateBook.do",
                $("form").serialize(),
                function (obj) {
                    if(obj.flag){
                        alert(obj.message);
                        location.href="/findAllBook.do";
                    }else{
                        alert(obj.message)
                    }
                },"json"
            );
        });
    });

</script>
</body>
</html>