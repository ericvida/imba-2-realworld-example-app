import './Page'
export tag Settings < Page
	css & 
		--box-shadow-ring: 0 0 0 1px gray4
		d:block p:3
	css .container pt:4 pb:2
	css form max-width: 100% mx:auto d:flex fld:column
	css input, textarea bd:1px solid gray4 py:3 px:5 bxs:ring bd:none rd:1 fs:1rem .lg:1.25rem w:100%
	css button bg: $brand-color @hover:$brand-color-shade py:3 px:6 c:white fs: 1.25rem rd:2 as:flex-end
	def render
		<self>
			<.container>
				<h1[fs:2.5rem ta:center]> "Your Settings"
			<form @submit.prevent.login>
				<fieldset class="form-group">
					<input class="form-control" type="text" placeholder="URL of profile picture">
				<fieldset class="form-group">
					<input class="form-control form-control-lg" type="text" placeholder="Your Name">
				<fieldset class="form-group">
					<textarea class="form-control form-control-lg" rows="8" placeholder="Short bio about you">
				<fieldset class="form-group">
					<input class="form-control form-control-lg" type="text" placeholder="Email">
				<fieldset class="form-group">
					<input class="form-control form-control-lg" type="password" placeholder="Password">
				<button class="btn btn-lg btn-primary pull-xs-right"> "Update Settings"