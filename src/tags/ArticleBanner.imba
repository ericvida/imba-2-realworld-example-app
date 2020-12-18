tag ArticleActions
	css & d:flex jc:space-between
	
	css .article-meta d:flex ai:center
		img w:32px h:32px d:block rd:50% mr:2
	
	css .info d:flex fld:column
		a fs:1rem c:gray2 fw:bold
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
export tag ArticleBanner
	css & ff:Source Sans Pro, sans
	css h1 fs:2.8rem c:white fw:800 py:4
	def render
		<self>
			<.container>
				<h1> "Article Title"
				<ArticleActions[w:12column @md:10column @xl: 8column]>
				