<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.semi.board.model.vo.*, com.semi.common.model.vo.Attachment" %>   
    
<%
	Board b = (Board)request.getAttribute("b");
	
	Attachment at = (Attachment)request.getAttribute("at");

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<style>
    .main{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 450px;
        height: 600px;
        background: white;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    .picture{
        display: flex;
        justify-content: left;
        align-items: left;
        flex-direction: column;

    }

    .mb-3{
        margin-top: 50px;
    }
    .button-wrap{
        margin: 20px;
    }
</style>
</head>
 <%@ include file="../common/header.jsp"%>
    <div class="main">
        <form action="update.bo?bno=${b.boardNo}" method="post" enctype="multipart/form-data" style="padding-left: 20px; padding-right: 20px;width: 450px; height: 450px;">
            <input type="hidden" name="userNo" value="<%=loginUser.getUserNo()%>">
            <input type="hidden" name="bno" value="${b.boardNo }">
            <label class="picture">
                <tr>
                    <img src="${at.filePath + at.changeName }" alt="사용자 정의 이미지" width="30px">
                </tr>
                   
                
                <span style="font-size: 10px; padding-left: 3px;">0/10</span>

                <input type="file" name="file1" id="file" accept="image/*" style="display: none;" required>
                <input type="file" name="file2" id="file" accept="image/*" style="display: none;">
                <input type="file" name="file3" id="file" accept="image/*" style="display: none;">
                <input type="file" name="file4" id="file" accept="image/*" style="display: none;">
                
            </label>
            
            <div class="mb-3" align="left">
                <label for="exampleFormControlInput1" class="form-label" style="margin-bottom: 10px;">${b.boardTitle}</label>
                <input type="text" name="title"   class="form-control" id="exampleFormControlInput1" placeholder="제목" required>
            </div>
            
            <div class="mb-3" align="left">
                <label for="exampleFormControlInput1" class="form-label">${b.amount}</label>
                <input type="number" name="amount"  class="form-control" id="exampleFormControlInput1" placeholder="₩ 가격을 입력해주세요." style="margin-bottom: 40px;" required>
            </div>
            
            <div style="margin-bottom: -35px;">
                <label for="exampleFormControlTextarea1" class="form-label" >자세한설명</label>

            </div>
            <div class="mb-3">
                <textarea class="form-control"  name="content" id="exampleFormControlTextarea1" rows="3" placeholder="00동에 올릴 게시글 내용을 작성해주세요. &#10;신뢰할 수 있는 거래를 위해 자세히 적어주세요." style="resize: none; margin-top: -50px; " required>${b.boardContent}</textarea>
            </div >
            
            <div class="d-grid gap-2"  align="center">
          
            <input type="submit" value="수정완료"  class="btn btn-primary" style="width: 100%; background: rgb(255, 111, 15); border: none; height: 45px;">
            </div>
            
        </form>

    </div>
<body>

</body>
</html>