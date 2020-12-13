import './Page'
tag ArticlePreview
	css .article-preview mb:1em bdb:1px solid gray3 pb:6 pt:4
	css .article-meta d:flex ai:flex-start py:2
		img rd:50% mr:2 h:2em
		.hearts bg:none @hover:$brand-color px:2 bd: 1px solid $brand-color rd:2 c:$brand-color @hover: white fs:.8em h:2.1em
		.info flg:1 d:flex fld:column h:2em
		.author fw:bold h:1.1em
		.date fs:.8em c:gray4 h:.9em
	css .preview-link
		p mb: 15px
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


tag FeedToggle
	def render
		<self>
			<div.nav>
				<a.nav-link.disabled href=""> "Your Feed"
				<a.nav-link.active href=""> "Global Feed"

	css .nav d:flex bdb:1px solid gray3
		.nav-link mr:1 pb:9px px:3 mb:-1px
			&.active bdb:2px solid $brand-color
			&.disabled d:none
tag TagBox
	css & bg:$brand-gray p:2 rd:2 d:block
		.tag-list pt:2
		.tag fs:.8em px:2 pt:.1em pb:.22em mb:1 mr:1 bg:gray6/80 @hover:gray6 c:white td:none rd:full d:inline-block 
	def render
		<self>
			<p> "Popular Tags"
			<div.tag-list> for item in tags
				<a.tag href="#" @click.selectFeed("tag", item)> item
tag GlobalFeed
	prop tags = ["programming", "javascript", "emberjs", "angularjs", "react", "imba", "node", "rails"]
	prop currentTag = tags[0]
	css & d:flex flw: wrap px:4 py:10 mx:auto fld@lt-sm:column 
	css .feed flb: 0 flg:1 min-width: calc(50% - 1rem) mr@sm:4
	css .sidebar flg:0 flb:15rem
	def render
		<self>
			<.feed>
				<feed-toggle>
				for item in [0 ... 5]
					<ArticlePreview>
			<.sidebar>
				<tag-box tags=tags>
				
export tag Home < Page
	def render
		<self>
			<div>
				<GlobalFeed>