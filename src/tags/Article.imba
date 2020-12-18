
tag ArticleActions
	css & d:flex jc:space-between
	
	css .article-meta d:flex ai:center
		img w:32px h:32px d:block rd:50% mr:2
	
	css .info d:flex fld:column
		a fs:1rem c:$brand-color fw:bold
		span fs:.8rem fw:300 c:gray5
	
	css .article-actions d:flex h:2rem
		a d:flex ai:center px:2 font-style:normal bg:none @hover: gray3 bd:1px solid gray4 rd:2 ml@last:1 bd: 1px solid gray5 c:gray5 @hover: gray9
		a.brand
			bd: 1px solid $brand-color c:$brand-color @hover:white bg@hover: $brand-color
		svg mr:1
	def render
		<self>
			<div.article-meta>
				<img src="https://static.productionready.io/images/smiley-cyrus.jpg">
				<.info>
					<a> "Eric Vida"
					<span> "December 18, 2020"
			<div.article-actions>
				<a href="#/settings">
					<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'>
						<path fill='none' stroke='currentColor' stroke-linecap='round' stroke-linejoin='round' stroke-width='32' d='M256 112v288M400 256H112'/>
					"Follow \{Eric Vida\}"
				<a.brand href="#/settings">
					<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'>
						<path d='M256 448a32 32 0 01-18-5.57c-78.59-53.35-112.62-89.93-131.39-112.8-40-48.75-59.15-98.8-58.61-153C48.63 114.52 98.46 64 159.08 64c44.08 0 74.61 24.83 92.39 45.51a6 6 0 009.06 0C278.31 88.81 308.84 64 352.92 64c60.62 0 110.45 50.52 111.08 112.64.54 54.21-18.63 104.26-58.61 153-18.77 22.87-52.8 59.45-131.39 112.8a32 32 0 01-18 5.56z'/>
					"Favorite Article (1)"
tag CardInput
	css & d:block
	css form d:flex fld:column
	css textarea bd:1px solid gray3 rdt:2 p:4 w:100% mb:-5px
	css .card-footer w:100% bg:hsl(109, 0%, 96%) p:6 d:flex jc:space-between rdb:2
		img w:35px rd:50%
		button bg:$brand-color px:4 c:white fw:bold py:2 rd:1 bd:1px solid gray3
	def render
		<self>
			<form>
				<div>
					<textarea placeholder="Write a comment..." rows="3">
				<div.card-footer>
					<img src="https://static.productionready.io/images/smiley-cyrus.jpg" class="comment-author-img" />
					<button>
						"Post Comment"
export tag Article
	css & d:block py: 8
	css p ff:Source Serif Pro, serif fs:1.2rem lh:1.8rem c:gray9  mb:4rem
	def render
		<self> 
			<p> "Markdown Article goes here"
			<hr[bdb:1px solid gray3]>
			<ArticleActions[w:12column @md:10column @lg: 8column mx:auto mt:1.2rem mb:3rem  ]>
			<CardInput[w:12column @md:10column @lg:8column mx:auto]>
			

# # TODO: FULL ARTICLE PAGE with comment box
# <div class="article-page">
#   <div class="banner">
#     <div class="container">
#       <h1>How to build webapps that scale</h1>
#       <div class="article-meta">
#         <a href=""><img src="http://i.imgur.com/Qr71crq.jpg" /></a>
#         <div class="info">
#           <a href="" class="author">Eric Vida</a>
#           <span class="date">January 20th</span>
#         </div>
#         <button class="btn btn-sm btn-outline-secondary">
#           <i class="ion-plus-round"></i>
#           &nbsp;
#           Follow Eric Vida <span class="counter">(10)</span>
#         </button>
#         &nbsp;&nbsp;
#         <button class="btn btn-sm btn-outline-primary">
#           <i class="ion-heart"></i>
#           &nbsp;
#           Favorite Post <span class="counter">(29)</span>
#         </button>
#       </div>

#     </div>
#   </div>

#   <div class="container page">

#     <div class="row article-content">
#       <div class="col-md-12">
#         <p>
#         Web development technologies have evolved at an incredible clip over the past few years.
#         </p>
#         <h2 id="introducing-ionic">Introducing RealWorld.</h2>
#         <p>It's a great solution for learning how other frameworks work.</p>
#       </div>
#     </div>

#     <hr />

#     <div class="article-actions">
#       <div class="article-meta">
#         <a href="profile.html"><img src="http://i.imgur.com/Qr71crq.jpg" /></a>
#         <div class="info">
#           <a href="" class="author">Eric Vida</a>
#           <span class="date">January 20th</span>
#         </div>

#         <button class="btn btn-sm btn-outline-secondary">
#           <i class="ion-plus-round"></i>
#           &nbsp;
#           Follow Eric Vida <span class="counter">(10)</span>
#         </button>
#         &nbsp;
#         <button class="btn btn-sm btn-outline-primary">
#           <i class="ion-heart"></i>
#           &nbsp;
#           Favorite Post <span class="counter">(29)</span>
#         </button>
#       </div>
#     </div>

#     <div class="row">

#       <div class="col-xs-12 col-md-8 offset-md-2">

#         <form class="card comment-form">
#           <div class="card-block">
#             <textarea class="form-control" placeholder="Write a comment..." rows="3"></textarea>
#           </div>
#           <div class="card-footer">
#             <img src="http://i.imgur.com/Qr71crq.jpg" class="comment-author-img" />
#             <button class="btn btn-sm btn-primary">
#              Post Comment
#             </button>
#           </div>
#         </form>
		
#         <div class="card">
#           <div class="card-block">
#             <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
#           </div>
#           <div class="card-footer">
#             <a href="" class="comment-author">
#               <img src="http://i.imgur.com/Qr71crq.jpg" class="comment-author-img" />
#             </a>
#             &nbsp;
#             <a href="" class="comment-author">Jacob Schmidt</a>
#             <span class="date-posted">Dec 29th</span>
#           </div>
#         </div>

#         <div class="card">
#           <div class="card-block">
#             <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
#           </div>
#           <div class="card-footer">
#             <a href="" class="comment-author">
#               <img src="http://i.imgur.com/Qr71crq.jpg" class="comment-author-img" />
#             </a>
#             &nbsp;
#             <a href="" class="comment-author">Jacob Schmidt</a>
#             <span class="date-posted">Dec 29th</span>
#             <span class="mod-options">
#               <i class="ion-edit"></i>
#               <i class="ion-trash-a"></i>
#             </span>
#           </div>
#         </div>
		
#       </div>

#     </div>

#   </div>

# </div>