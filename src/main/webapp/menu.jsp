<!-- 홈 모양(기존) <header class="pb-3 mb-4 border-bottom">
      <a href="./welcome.jsp" class="d-flex align-items-center text-dark text-decoration-none">
      <svg  width="32" height="32" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
  			<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z"/>
  			<path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z"/>
		</svg>   
        <span class="fs-4">Home</span>
      </a>    
</header>     -->
<%@ page contentType="text/html; charset=utf-8"%>

<!-- 3줄 메뉴모양(변경) -->
<header class="pb-3 mb-4 border-bottom">
  <div class="container ">  
   <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">  
      <a href="./welcome.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
    <svg width="32" height="32" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M2.5 12.5a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm0-4a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm0-4a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11z"/>
    </svg>   
    <span class="fs-4">Menu</span>
     </a> 

       <ul class="nav nav-pills">
         <li class="nav-item"><a href="./shoes.jsp" class="nav-link" >신발 목록</a></li>
         <li class ="nav-item"><a href = "./addShoes.jsp" class = "nav-link"  >신발 등록</a></li>
         <li class ="nav-item"><a href = "./editShoes.jsp?edit=update" class = "nav-link"  >신발 수정</a></li>
          <li class ="nav-item"><a href = "./editShoes.jsp?edit=delete" class = "nav-link"  >신발 삭제</a></li>
       </ul> 
    </div>
  </div>   
</header>
