<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 231112 임동건 jquery 추가 -->
<!-- jquery 3.7.1 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
   .board_main{
      padding-top: 64px;
   }
   .board_main .title{
       text-align: center;
       font-size: 32px;
       font-weight: 700;
   }
   .board_main .cards-wrap {
      display: flex;
       justify-content: flex-start;
       flex-wrap: wrap;
       width: 100%;
       margin: 0 auto;
       margin-top: 40px;
       width: 757px;
       gap: 44px;
   }
   .board_main .cards-wrap .cards {
       width: 223px;
       margin-bottom: 56px;
       border: none;
   }
   .board_main .cards-wrap .cards > a {
       text-decoration: none;
       color: #212529;
   }
   .card-photo {
      width: 100%;
       padding-top: 100%;
       position: relative;
       overflow: hidden;
       border-radius: 12px;
       background-color: #F8F9FA;
       box-sizing: border-box;
   }
   .card-photo > img {
      position: absolute;
       top: 0;
       bottom: 0;
       width: 100%;
       height: 100%;
       box-sizing: border-box;
       border-radius: 12px;
       border: 1px solid transparent;
   }
   .card-desc {
      margin-top: 12px;
   }
   .card-desc .card-title {
      font-size: 16px;
       letter-spacing: -0.02px;
       color: #212529;
       overflow: hidden;
       white-space: nowrap;
       text-overflow: ellipsis;
       margin-bottom: 4px;
       line-height: 1.5;
       font-weight: normal;
   }
   .card-desc .card-price {
      font-size: 15px;
       font-weight: 700;
       line-height: 1.5;
       margin-bottom: 4px;
   }
   .card-desc .card-address{
      font-size: 13px;
       color: #212529;
       overflow: hidden;
       white-space: nowrap;
       text-overflow: ellipsis;
       margin-bottom: 4px;
       line-height: 1.5;
   }
   .card-desc .card-counts{
      color: #868e96;
       font-size: 13px;
   }

</style>
<body onload="listinit()">
   <section class="board_main">
      <h1 class="title">중고거래 인기매물</h1>
      <div class="cards-wrap">
            <!-- <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div>
            <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div>
            <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div>
            <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div>
            <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div>
            <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div>
            <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div>
            <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div>
            <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div>
            <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div>
            <div class="cards">
               <a>
                  <div class="card-photo ">
                    <img src="/carrot/resources/images/img/22.PNG">
                </div>
               <div class="card-desc">
                  <h2 class="card-title">18k 3돈 금팔찌 팔아요</h2>
                  <div class="card-price">
                    120,000원
                  </div>
                  <div class="card-address">
                    부산 사하구 감천동
                  </div>
                  <div class="card-counts">
                      <span>
                        관심 6
                      </span>
                    ∙
                    <span>
                        채팅 15
                      </span>
                  </div>
                </div>
               </a>
            </div> -->
      </div>
   </section>
   		<script>
           function listinit(){
                    //인기매물 가져와서 그려주기
                    
                    selectPopularBoardList();
                    
           }
           
           function selectPopularBoardList(){
               $.ajax({
                   url : "popblist.bo",
                   data : {
                       
                   },
                   success : function(res){
                	document.querySelector(".cards-wrap").innerHTML = "";
                   	console.log(res.length === 0);
                       let str ="";
                
                    	   for(let board of res){
                              	str +=  '<div class="cards" onclick=\'location.href="/carrot/detailPage.bo?bno=' + board.boardNo + '"\'>' +
                                '<a>' +
                                '<div class="card-photo ">' +
                                  '<img src="/carrot/'+ board.titleImg + '">' +
                                '</div>' +
                                '<div class="card-desc">' +
                                  '<h2 class="card-title">'+ board.boardTitle + '</h2>' +
                                  '<div class="card-price">' +
                                  board.amount +
                                  '</div>' +
                                  '<div class="card-address">' +
                                  board.address +
                                  '</div>' +
                                  '<div class="card-counts">' +
                                    '<span>' +
                                      '조회수'+ board.count +
                                    '</span>' +
                                  '</div>' +
                                '</div>' +
                              '</a>' +
                            '</div>';
                         
                           
                            	document.querySelector(".cards-wrap").innerHTML = str;
                       }
                       
                       
                   },
                   error : function(){
                       console.log("인기글 목록 조회중 ajax통신 실패")
                   }
               })
           }
          </script>
</body>
</html>