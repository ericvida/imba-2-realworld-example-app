import './Page'
export tag Editor < Page
	css & 
		--box-shadow-ring: 0 0 0 1px gray4
		d:block p:3
	css .container pt:4 pb:2 d:flex
	css form max-width: 100% mx:auto d:flex fld:column
	css input, textarea bd:1px solid gray4 py:3 px:5 bxs:ring bd:none rd:1 fs:1rem .lg:1.25rem w:100%
	css button bg: $brand-color @hover:$brand-color-shade py:3 px:6 c:white fs: 1.25rem rd:2 as:flex-end
	def render
		<self>
			<form @submit.prevent.login>
				<fieldset>
					<input.lg type="text" placeholder="Article Title">
				<fieldset>
						<input type="text" placeholder="What's this article about?">
				<fieldset class="form-group">
						<textarea rows="8" placeholder="Write your article (in markdown)">
				<fieldset class="form-group">
						<input type="text" placeholder="Enter tags"><div class="tag-list">
				<button type="button"> "Publish Article"
			<hr>
				<button type="button"> "Publish Article"