<%@ page contentType="text/html;charset=UTF-8"%>
<%String path = request.getContextPath(); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
	<div style="padding-left:200px;padding-right:200px;background-color:#FCFAE1;">
		<ul class="nav nav-tabs nav-justified" style="border-bottom: 0;">
		<li role="presentation" class="active" style=""><a href="#attractions_food" aria-controls="attractions_food" role="tab" data-toggle="tab">Home</a></li>
		<li role="presentation"><a href="#attractions_Resorts" aria-controls="attractions_Resorts" role="tab" data-toggle="tab">Profile</a></li>
		<c:forEach var="tourTypePO" items="${list}"><li role="presentation"><a href="#<c:out value='${tourTypePO.tourTypeName}'></c:out>" data-toggle="tab" ><c:out value="${tourTypePO.tourTypeName}"></c:out></a></li></c:forEach>
	</ul>
	</div>
	<div class="tab-content">
		<c:forEach var="tourTypePO" items="${list}">
			<div id="<c:out value='${tourTypePO.tourTypeName}'></c:out>"  class="tab-pane">
			123123
			</div>
		</c:forEach>
	</div>
	<div class="buildings" >
		<div class="container" >

	<div class="tab-content">
		<div role="tabpanel" class="tab-pan fade in active" id="attractions_food">
			<div class="buildings-top" >
				<div class="building-one">
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-1.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-2.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-3.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-5.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="building-one">
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-4.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-5.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-6.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-7.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="building-one">
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-8.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-2.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-5.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="col-md-3 building-left">
						<a href="single.html"><img src="<%=path %>/images/front/b-4.jpg" alt="" /></a>
						<a href="single.html"><h4>Aliquam ac mattis</h4></a>
						<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
						<div class="build-btn">
							<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			</div>

		<div role="tabpanel" class="tab-pane fade" id="attractions_Resorts">
			<div class="buildings-top" style="position:absolute;top:200px">
			<div class="building-one">
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-1.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-2.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-3.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-5.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="building-one">
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-4.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-5.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-6.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-7.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="building-one">
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-8.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-2.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-5.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="col-md-3 building-left">
							<a href="single.html"><img src="<%=path %>/images/front/b-4.jpg" alt="" /></a>
							<a href="single.html"><h4>Aliquam ac mattis</h4></a>
							<p>Integer hendrerit tortor nec enim finibus consequat. Aliquam eu quam quam. Aliquam posuere neque</p>
							<div class="build-btn">
								<a href="single.html" class="hvr-shutter-out-horizontal">Read more</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>

	</div>