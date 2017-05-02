<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/css/mypage_css/city-main-styles_mypage.css">
<head>
    
<%@include file="../header.jsp" %>


<body>
	<br>
	<div class="form_body">
		<form action="JoinAction.join" class="join_form">
		        <div class="present">
            <div class="tabs-list">
                
                <ul class="tabs-list">
    
        
            <li><a href="main.mypage" class="first-tag active"><span>마이페이지</span></a></li> 
            <li><a href="main.mypage"  class=""><span>내 정보 수정</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=2d8eef384cefda06" class=""><span>내 동행 조회</span></a></li>
            <li><a href="carpoolCheck.mypage" class=""><span>내 카풀조회</span></a></li>
            <li><a href="/city?serviceType=global&amp;tab=hotdeal&amp;curationTag=f9188662257e085d"  class=""><span>내 상품조회</span></a></li>
            
		</ul>

                <div id="google-ad-sense" style="margin-top:20px;float:left;" data-type="260x260">
                  <script type="text/javascript">
                    google_ad_client = "ca-pub-9419115827273897";
                    google_ad_slot = "3548612763";
                    google_ad_width = 260;
                    google_ad_height = 260;
                  </script>
                  <!-- search-260x260 -->
                  <script type="text/javascript"
                          src="//pagead2.googlesyndication.com/pagead/show_ads.js">
                  </script>
                </div>
            
            </div><!-- e//tabs-list -->
            </div> <!-- present -->
			<fieldset>
				<legend>회원정보수정</legend>

				<table class="primary_table">
					<tbody>
					
					<tr>
					<th scope = "row">
					아이디
					</th>
					<td>
					유저 id
					
					</td>
					</tr>
				
					
					<tr>
					<th scope="row">비밀번호</th>
					<td>
					<input type = "password" name = "u_pwd" id = "u_pwd">
					&nbsp;&nbsp;&nbsp;&nbsp;<span>알파벳과 숫자 조합으로 6~12자</span>
					
					
					
					</tr>
					
					<tr>
					<th scope="row">비밀번호 확인</th>
					<td>
					<input type = "password" name = "pwcheck" id = "pwcheck">
					&nbsp;&nbsp;
					<font id="check" size="2" color="red"></font> 

					</tr>
					
					<tr>
					<th scope="row">닉네임</th>
					<td>
					<input type = "text" name = "u_name">
					</td>
					</tr>
					
					<tr>
					<th scope = "row">생년월일</th>
					<td>
					생일정보
					</td>
					</tr>
					
					<tr>
					<th scope="row">성별</th>
					<td>
					남자냐 여자냐
					</td>
					</tr>
					
					
			<tr>
				<th scope = "row">운전면허 유무</th>
				<td>
				<input type = "radio" name = "u_license" value = "licensed" checked  = "checked">
				<label>유</label>
				<input type = "radio" name = "u_license" value = "Nolicensed">
				<label>무</label>
				</td>
				</tr>
					
					<tr>
					<th scope = "row">거주 지역</th>
					<td>
					 <input type = "text" name = "u_address">	
					</td>
					</tr>

					</tbody>

				</table>
			</fieldset>

			<fieldset>
				<legend>선택 입력사항</legend>
				<table>

					<tr>
						<th scope="row">직업</th>
						<td><input type="text" name="u_job" placeholder="직업을 입력해주세요">
						</td>
					</tr>

					<tr>
						<th scope="row">사용언어</th>
						<td><input type="text" name="u_lang"> <span>&nbsp;&nbsp;
								여행 시 사용하는 언어를 알려주세요.</span></td>
					</tr>

					<tr>
						<th scope="row">종교</th>
						<td><input type="text" name="u_religion"></td>
					</tr>


					<tr>
						<th scope="row">여행 스타일</th>
						<td><input type="checkbox" name="u_style" value="healing"
							checked="checked"> <label>&nbsp;힐링</label>&nbsp;&nbsp; <input
							type="checkbox" name="u_style" value="tour"> <label>&nbsp;관광</label>&nbsp;&nbsp;
							<input type="checkbox" name="u_style" value="eat"> <label>&nbsp;맛집</label>&nbsp;&nbsp;
							<input type="checkbox" name="u_style" value="activity"> <label>&nbsp;액티비티</label>&nbsp;&nbsp;
							<input type="checkbox" name="u_style" value="rest"> <label>&nbsp;휴양</label>
							<span>하나만 선택해주세요</span></td>
					</tr>

					<tr>
						<th scope="row">프로필 이미지</th>
						<td><input type="file" name="u_img" id="u_img"></td>
					</tr>
					</tbody>
				</table>
			</fieldset>

		<div class="nlogin_join_center">
		<button type = "submit" class = "nlogin_btn">수정하기</button>
		</div>
		
		
		</form>


	</div>

<%@include file="../footer.jsp" %>
</body>
</html>