export tag ProfileBanner
	css & bg:hsl(109, 0%, 95%) d:block ta:center py:25px d:flex ta:center ai:center  mx:auto fld:column
	css img rd:50% w:100px mt:2.2rem mb:.5rem 
	css h3 fs:1.5rem ff: "Source Sans Pro", sans-serif fw:700 c:gray9 mb:1
	css button
		py:2 px:4 font-style:normal bg:none bd:1px solid gray4 rd:2 as:flex-end
		a c:gray6
		i mr:1
	def render
		<self>
			<img src="https://static.productionready.io/images/smiley-cyrus.jpg">
			<h3> "username"
			<button>
				<a ui-sref="app.settings" .btn.btn-sm.btn-outline-secondary.action-btn ng-show="$ctrl.isUser" href="#/settings">
					<i.ion-gear-a> 
					"Edit Profile Settings"