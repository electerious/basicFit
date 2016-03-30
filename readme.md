# [Deprecated] basicFit

Turn elements on your site into a responsive unified grid.

![Context Screenshot](http://l.electerious.com/uploads/big/b549fbada34b81246856ef4158a02baf.png)

## Installation

	bower install basicFit
	
## Requirements

basicFit requires jQuery >= 2.1.0
	
## How to use

####1. Include the files

```html
<script async type="text/javascript" src="bower_components/jQuery/dist/jquery.min.js"></script>
<script async type="text/javascript" src="bower_components/basicFit/dist/basicFit.min.js"></script>
```

####2. Build a simple structure

```html
<div id="content">
	<div class="element"></div>
	<div class="element"></div>
	<div class="element"></div>
	<div class="element"></div>
</div>
```

####3. Set a margin and max-min-width

```css
#content {
	display: inline-block;
	margin: 0 0 20px 0;
}
.element {
	float: left;
	margin: 20px 0 0 20px;
	min-width: 300px;
	max-width: 500px;
	background-color: #000;
}
```

####4. Initialize basicFit

```coffee
basicFit.init '#content', '.element'
```

####5. Refresh after adding a new element

```coffee
$('#content').append element
basicFit.refresh()
```
