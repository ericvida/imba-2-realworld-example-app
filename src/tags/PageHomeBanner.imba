import {Logo} from './Logo'
export tag HomeBanner
	css & d:block ta:center pt:1.5rem pb:2.5rem c:white
	css #logo fs:3.7rem c:white ts: 0px 2px 2px green9/40, 0px 5px 5px green9/20
	css p fs:1.5rem ff: "Source Sans Pro", sans-serif
	def render
		<self>
			<Logo#logo>
			<p> "A place to share your knowledge."