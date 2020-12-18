# RESET
global css html
	w:100% h:100% m:0
	box-sizing: border-box;
	font-size: 16px;
	body w:100% h:100% m:0
	*
		box-sizing: border-box
		padding-inline-end: 0
		padding-inline-start: 0

	*, *:before, *:after 
		box-sizing: inherit;

	body, h1, h2, h3, h4, h5, h6, p, ol, ul
		margin: 0;
		padding: 0;
		font-weight: normal;

	img
		max-width: 100%;
		height: auto;
	svg
		fill:currentColor
		w:1rem d:block

# CUSTOM
global css @root
	1column: calc(100% / 12)
	* ff: "Source Sans Pro", sans-serif
	$global-width: 750px @lg:900px
	$brand-color: hsl(120, 39%, 54%)
	$brand-color-shade: hsl(120, 39%, 44%)
	$brand-gray: hsl(109, 0%, 95%)
	a
		c:$brand-color
		td:none
		h1
			c:gray9 fw:600
		p c:gray6
	input, textarea
		fs: 1.25rem c:gray7