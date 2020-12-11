# import {Articles} from './articles'
import './page-template'
# import {formatDate, api} from './util'
export tag page-home < page-template
	prop tags
	prop currentTag
	prop currentFeed
	def load
		api("tags","get",null,headers).then(do(data)
			tags = data.tags
		).catch do(result)
				console.log result
	def selectFeed current, param
		currentFeed = current
		if current == "tag"
			currentTag = param
	def articles
		prop params
		prop headers
		prop src = "articles"
		if currentFeed == "tag"
			params = [{"tag": currentTag}]
		if currentFeed == "your"
			src = "articles/feed"
			headers = headers
		# TODO: <Articles src=src params=params headers=headers>
	def mount
		currentFeed = "global"
	def render
		<self>
			<div.home-page>
				if isLoggedIn
					<.banner>
						<.container>
							<h1.logo-font> "conduit"
							<p> "A place to share your knowledge"
			<div.container.page>
				<div.row>
					<div.col-md-9>
						<div.feed-toggle>
							<ul.nav.nav-pills.outline-active>
								if isLoggedIn
									<li.nav-item>
										<button @click.selectFeed("your") .nav-link .active=(currentFeed is "your")> "Your Feed"
								<li.nav-item>
									<button @click.selectFeed("global") .nav-link .active=(currentFeed == "global")> "Global Feed"
								if currentFeed == "tag"
									<li.nave-item>
										<button.nav-link.active> "#" + currentTag
						articles
					<div.col-md-3>
						<div.sidebar>
							<p> "Popular Tags"
							<div.tag-list> for item in tags
								<a href="#" .tag-default .tag-pill :click.selectFeed("tag", item)> item