<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>insert</title>
    <%@ include file="../itemfile.jspf" %>
    <!-- 서머노트를 위해 추가해야할 부분 -->
    <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">
    <script src="https://cdn.jsdelivr.net/npm/summernote-sticky-toolbar@1.0.0/summernote-sticky-toolbar.min.js"></script>
</head>
<style>
    textarea {
        display: flex;
        width: 100%;
        border: none;
        resize: none;
    }

    .form-control, input {
        border: none;
    }

    .btn-group {
        position: fixed;
        bottom: 0;
    }
</style>
<script>
    $(function() {
        $("#btnInsert").click(function(){
            document.form1.submit();
        });
    });

</script>
<body>
<form name="form1" method="post" action="${path}/review/insert">
<div class="container"><br>
    <select class="form-select w-25" aria-label="Default select example" name="local.l_NUM">
        <option selected>지역</option>
        <option value="1">서울</option>
        <option value="2">부산</option>
        <option value="3">대구</option>
        <option value="4">인천</option>
        <option value="5">광주</option>
        <option value="6">대전</option>
        <option value="7">울산</option>
        <option value="8">경기</option>
        <option value="9">강원</option>
        <option value="10">충북</option>
        <option value="11">충남</option>
        <option value="12">전북</option>
        <option value="13">전남</option>
        <option value="14">경북</option>
        <option value="15">경남</option>
        <option value="16">제주</option>
    </select>
    <hr>
    <input class="form-control" type="text" placeholder="제목을 입력하세요" aria-label="default input example" id="title" name="title">
    <hr>
    <textarea class="summernote" id="content" name="content"></textarea>
    <script>
        $('.summernote').summernote({
            placeholder: '여행리뷰를 입력해주세요.',
            height: 750,
            lang: "ko-KR",
            minHeight: null,
            maxHeight: null,
            focus: true,
            toolbar: [
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
                ['color', ['forecolor', 'color']],
                ['table', ['table']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['insert', ['picture', 'link', 'video']],
                ['view', ['fullscreen', 'help']]
            ],
            stickyToolbar: {
                enabled: true, // enable/disable sticky toolbar
                offset: 0, //y offset from top
                zIndex: 9999 //z-index of the toolbar
            }
        });
    </script>
    <hr>
        <div name="filename" value="이미지 이름">asdasd.jpg</div> <br><br>
    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
        <div class="btn-group m-3" role="group" aria-label="First group">
            <button type="button" id="btnInsert" class="btn btn-success btn-lg">등록</button>
        </div>
    </div>
    <br>
    <%@ include file="../footer.jspf" %>
</div>
</form>
</body>
</html>
