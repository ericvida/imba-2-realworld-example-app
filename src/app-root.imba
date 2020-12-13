import 'imba/router'

import './tags/PagePrototype'
import './styles'
import {Row} from './styled-components'
import {Logo} from './tags/Logo'
import {Home} from './tags/Home'
import {HomeBanner} from './tags/HomeBanner'
import {SignIn} from './tags/SignIn'
import {SignUp} from './tags/SignUp'
import {Editor} from './tags/Editor'
import {Settings} from './tags/Settings'
import {Profile} from './tags/Profile'
import {ProfileBanner} from './tags/ProfileBanner'
# import './Article'
# import './Profile'
# import './Models/user'
# import './Settings'
# import './Shared'
import './functions/util'
tag nav-link < a
	prop active = false
	prop to = '/'
	css .active
		c:gray9 fw:400
	def render
		<self .active=active route-to=to> <slot>

tag app-root < PagePrototype
	prop auth = true
	css & pb:100px d:block pos:relative
	css header bg:white py:2
		> .container d:flex jc: space-between ai:center
	css .imbalogo ff:titillium web, sans-serif fs:1.5rem td:none
	css nav > a px:2 c:gray6 @hover:gray9 td:none
	css .container
		max-width: $global-width mx:auto
	css .narrow-container
		max-width: 450px mx:auto
	css footer
		bg:gray9 c:white p:2 fs:.8rem pos:fixed w:100% b:0
	def render
		<self>
			<header>
				<Row>
					<Logo ref="/home">
					<nav>
						<nav-link active=true to='/home'> 'Home'
						if true
							# TODO: if not logged in
							<a route-to="/SignIn"> 'Sign in'
							<a route-to="/SignUp"> 'Sign up'
						if true # TODO: if logged in
							<a route-to="/editor-new"> <i.ion-compose> 'New Article' # TODO: Import icons
							<a route-to="/settings"> <i.ion-gear-a> 'settings' # TODO: Import Icons
						# TODO: route to "/profile"+encode(currentUser:username)
						<a route-to="/profile"> "Eric Simons" # currentUsername
			<HomeBanner route='/home' auth=auth>
			<ProfileBanner route='/profile'>
			<.container>
				<Home route='/home' auth=auth>
				<Settings route='/settings'>
			<.narrow-container>
				<Profile route='/profile'>
				<SignIn route='/SignIn'>
				<SignUp route='/SignUp'>
				<Editor route='/editor-new'>
			<footer>
				<Row>
					<Logo>
					<div> "An interactive learning project from {<a href="https://thinkster.io"> "Thinkster"}. "
						<span[d@lt-sm:block]> "Code & Design licensed under MIT."