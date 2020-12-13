import './Page'
import {User} from '../classes/user'
import { formatDate, encode, api } from '../functions/util'
tag PagePrototype
	prop currentUser
	prop headers
	def setup
		headers =
			'Accept': 'application/json'
			'Content-Type': 'application/json'
		currentUser = JSON.parse(window.localStorage.getItem('user-conduit')) or undefined
		if currentUser
			headers =
				'Authorization': 'Token ' + currentUser.token,
				'Accept': 'application/json'
				'Content-Type': 'application/json'
	def isLoggedIn
		return currentUser
	def isMine author
		return isLoggedIn and currentUser.username is author.username