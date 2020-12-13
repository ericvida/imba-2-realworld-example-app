export tag Row < div
	css section d:flex jc: space-between ai:center max-width:$global-width mx:auto px:3
	def render
		<self> <section> <slot>