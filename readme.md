# basicFit

Turn elements on your site into a responsive unified grid.

![Context Screenshot](http://l.electerious.com/uploads/big/b549fbada34b81246856ef4158a02baf.png)

## Installation

	bower install basicFit
	
## Requirements

basicFit requires jQuery >= 2.1.0
	
## How to use

1. Include the files

```html
<script async type="text/javascript" src="bower_components/jQuery/dist/jquery.min.js"></script>
<script async type="text/javascript" src="bower_components/basicFit/dist/basicFit.min.js"></script>
```

2. Build a simple structure

```html
<div id="content">
	<div class="element"></div>
	<div class="element"></div>
	<div class="element"></div>
	<div class="element"></div>
</div>
```

3. Initialize basicFit

```coffee
fit.init '#content', '.element'
```

4. Refresh after adding a new element

```coffee
$('#content').append element
fit.refresh()
```