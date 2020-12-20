export tag Container
	css & d:block
	css .banner w:300px
	css .content-wide
		max-width:$container-width mx:auto
	css .content-narrow
		max-width: 450px mx:auto
	def render
		<self>
			<slot.banner name="banner">
			<slot.content-wide name="content-wide">
			<slot.content-narrow name="content-narrow">