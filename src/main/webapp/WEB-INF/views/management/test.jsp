<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<script>
    function fuckU(e) {
        console.log(e)
        console.log(e.innerHTML)
        console.log(e.vals)
    }
</script>
<body style="text-align: center; margin-top: 300px">
<a href="/main">메인으로</a>
<input type='text' value='상품코드' class='modal-input-name' style='height: 50px; width: 70px' disabled><br>
<input type='text' value='대  분  류' class='modal-input-name' style='height: 50px; width: 70px' disabled><br>
<input type='text' value='용        량' class='modal-input-name' style='height: 50px; width: 70px' disabled><br>
<input type='text' value='상품가격' class='modal-input-name' style='height: 50px; width: 70px' disabled><br>
<input type='text' value='원  산  지' class='modal-input-name' style='height: 50px; width: 70px' disabled><br>
<input type='text' name='foodItemCode-modalInput' class='modal-input' style='height: 50px; width: 150px'><br>
<select id='foodItemBigCg-modalInput' class='modal-input' style='height: 50px; width: 150px'>
    <option selected>직접입력</option>
</select>
<a href="javascript:void(0)" onclick="fuckU(this)">시발거</a>
</body>
</html>
