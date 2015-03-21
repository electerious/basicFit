this.basicFit =

	_container:			null
	_elements:			null
	_elementsMargin:	null
	_elementsWidth:		null

	_valid: ->

		if	basicFit._container? and
			basicFit._elements? and
			basicFit._elementsMargin? and
			basicFit._elementsWidth? and
			not isNaN(basicFit._elementsMargin) and
			not isNaN(basicFit._elementsWidth)

				return true

		return false

	_calculate: ->

		if basicFit._valid

			containerWidth		= basicFit._container.width()
			elementsNumber		= Math.floor containerWidth/basicFit._elementsWidth
			elementsNewWidth	= (containerWidth/elementsNumber)-basicFit._elementsMargin

			basicFit._elements.css('width', "#{ elementsNewWidth }px")
			return true

		return false

	init: (container, elements) ->

		basicFit._container	= $(container)
		basicFit._elements	= basicFit._container.children(elements)

		basicFit.refresh()

		$(window).on 'resize', ->
			basicFit._calculate()

		return true if basicFit._valid
		return false

	refresh: ->

		basicFit._container	= $(basicFit._container.selector)
		basicFit._elements	= basicFit._container.children(basicFit._elements.selector)

		basicFit._elementsMargin	= parseInt(basicFit._elements.css('margin-left')) + parseInt(basicFit._elements.css('margin-right'))
		basicFit._elementsWidth		= parseInt(basicFit._elements.css('min-width')) + basicFit._elementsMargin

		basicFit._calculate()

		return true if basicFit._valid
		return false