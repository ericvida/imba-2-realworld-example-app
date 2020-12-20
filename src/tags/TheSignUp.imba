import './Page'
export tag SignUp < Page
	css & 
		--box-shadow-ring: 0 0 0 1px gray4
		d:block p:3
	css .container pt:4 pb:2
		h1 fs:2.5rem ta:center mb:1
		p ta:center
	css form d:flex max-width: 100% mx:auto d:flex fld:column
	css input, textarea bd:1px solid gray4 py:3 px:5 bxs:ring bd:none rd:1 fs:1rem .lg:1.25rem w:100%
	css button bg: $brand-color @hover:$brand-color-shade py:3 px:6 c:white fs: 1.25rem rd:2 as:flex-end mt:1
	css .error-messages 
		c:red7 fw:bold py:3 ta:left pl:10
	def render
		<self>
			<.container>
				<h1> "Sign Up"
				<p>
					<a route-to='/SignIn'> "Have an account?"
			if errors
				<ul .error-messages>
					<li> "email or password is invalid"
			<form @submit.prevent.login>
				<fieldset>
					<input bind=username type="username" placeholder="Username">
				<fieldset>
					<input bind=email type="email" placeholder="Email">
				<fieldset>
					<input bind=password  type="password" placeholder="Password">
				<button type="submit"> "Sign in"