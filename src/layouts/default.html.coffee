doctype 5
html lang: 'en', ->
	head ->
		meta charset: 'utf-8'
		text @getBlock('meta').toHTML()
		text @getBlock('styles').toHTML()
		title @document.title

	body ->
		nav role: 'navigation', ->
			ul ->
				for menuItem in @getCollection('menu').toJSON()
					li ->
						a href: menuItem.url, title: menuItem.title, menuItem.title

		main role: 'main', ->
			@content

		footer role: 'footer', ->
			text 'cool this is the footer'
