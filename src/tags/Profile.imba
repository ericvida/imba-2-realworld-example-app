import './Page'

tag MyArticles
	css .article-preview mb:1em bdb:1px solid gray3 pb:6 pt:4
	css .article-meta d:flex ai:flex-start py:2
		img rd:50% mr:2 h:2em
		.hearts bg:none @hover:$brand-color px:2 bd: 1px solid $brand-color rd:2 c:$brand-color @hover: white fs:.8em h:2.1em
		.info flg:1 d:flex fld:column h:2em
		.author fw:bold h:1.1em
		.date fs:.8em c:gray4 h:.9em
	css .preview-link
		p mb: 15px
	css .bottom d:flex jc:space-between ai:center ac:center
	css .readmore fs:.8em c:gray4
	css .clear-tags
		span c:gray5 ml:1 fw:100 fs:.8rem px:1 pb:3px px:3 bd:1px solid gray3 rd:full
	def render
		<self>
			<div .article-preview> 
				<div .article-meta>
					<a href="profile.html">
						<img src="https://static.productionready.io/images/smiley-cyrus.jpg">
					<div .info>
						<a href="/" .author> "Eric Vida"
						<span .date> "January 20th"
					<button.hearts>
						<i .ion-heart> "29"
				<a href="" .preview-link>
					<h1> "How to build webapps that scale"
					<p> "This is the description for the post."
				<.bottom>
					<.readmore> "Read more..."	
					<.clear-tags>
						for items in ["javascript", "imba", "vue", "react"]
							<span> items

tag FeedToggles
	css .nav d:flex bdb:1px solid gray3
		.nav-link mr:1 pb:9px px:3 mb:-1px c:gray5
			&.active bdb:2px solid $brand-color c: $brand-color
			&.disabled d:none
	def render
		<self>
			<div.nav>
				<a.nav-link.active href=""> "My Articles"
				<a.nav-link href=""> "Favorited Articles"

tag MyFeed
	prop tags = ["programming", "javascript", "emberjs", "angularjs", "react", "imba", "node", "rails"]
	prop currentTag = tags[0]
	css & d:flex flw: wrap px:4 py:10 mx:auto fld:column
	css .sidebar flg:0 flb:15rem
	def render
		<self>
			<FeedToggles>
			for item in [0 ... 5]
				<MyArticles>

export tag Profile < Page	
	def render
		<self>
			<MyFeed>