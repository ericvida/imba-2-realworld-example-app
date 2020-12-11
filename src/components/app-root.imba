import './shared-methods'
import 'imba/router'
tag app-root < shared-methods
	def render
		<self>
			<header>
				<nav.navbar.navbar-light>
					<.container>
						<a.navbar-brand route-to='/home'> 'conduit'
						<ul.nav.navbar-nav>
							<li.nav-item> <a.nav-link route-to="/home"> 'Home'
							# TODO: If not logged in
							<li.nav-item> <a.nav-link route-to="/login"> 'Sign in'
							<li.nav-item> <a.nav-link route-to="/register"> 'Sign up'
							# TODO: if logged in
							<li.nav-item> <a.nav-link route-to="/editor/new"> <i.ion-compose> 'New Article' # TODO: Import icons
							<li.nav-item> <a.nav-link route-to="/settings"> <i.ion-gear-a> 'settings' # TODO: Import Icons
							# TODO: route to "/profile"+encode(currentUser:username)
							<li.nav-item> <a.nav-link route-to="/profile"> 
								# TODO: src=currentUser:image
								<img.user-pic[w:50px] src=''> # TODO: display: currentUser:username
			# <page-home>
			# <page-login>
			# <page-register>
			# <page-article>
			# <page-profile>
			# <page-settings>
			# <page-editor>
			<footer>
				<.container>
					<a route-to='/' .logo-font> "conduit"
					<span.attribution> "An interactive learning project from {<a href="https://thinkster.io"> "Thinkster"}. Code & Design licensed under MIT."
				