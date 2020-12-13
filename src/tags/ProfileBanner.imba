export tag ProfileBanner
	css & bg:hsl(109, 0%, 95%) py:25px max-width:100% d:block
	css .container d:flex fld:column max-width: $global-width mx:auto px:4
	css img rd:50% w:100px mt:2.2rem mb:.5rem d:block mx:auto
	css h3 fs:1.5rem ff: "Source Sans Pro", sans-serif fw:700 c:gray9 mb:1 ta:center
	css button as:flex-end py:2 px:4 font-style:normal bg:none bd:1px solid gray4 rd:2
		a c:gray6
		i mr:1
	def render
		<self>
			<.container>
				<img src="https://static.productionready.io/images/smiley-cyrus.jpg">
				<h3> "Eric Vida"
				<button>
					<a href="#/settings">
						<i.ion-gear-a> 
						"Edit Profile Settings"