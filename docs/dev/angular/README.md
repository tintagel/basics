# Angular.js


## installing on MacOS

### Node.js
1. Install Node.js ([https://nodejs.org/en/](https://nodejs.org/en/)):

	```
	brew doctor
	brew update
	brew install Node.js
	```

### bower
1. Install bower ([http://bower.io](http://bower.io)):

	```
	$ npm install -g bower
	```

### grunt
1.	Install grunt-cli

	```
	$ npm install grunt-cli -g		
	```

### compass
1. Install compass

	```
	$ gem install compass
	```
2. Rehash Ruby Environment

	```
	$ rbenv rehash
	```

## Testing your stuff:

While on the feature branch:

1. Clean up any clutter:

	```
	git rm -rf source/.sass-cache
	git rm -rf source/.tmp
	git rm -rf source/node_modules
	git rm -rf source/client/bower_components
	```
2. Install Node.js modules

	```
	$ cd source
	$ npm install
	```
3. Install the Bower Components

	```
	$ bower install		
	```
4. See if it works:

	```
	$ grunt serve
	```

## Deploy your stuff:

After your changes are merged:

1. Update master (see above)
2. Install Node.js modules (see above)
3. Install the Bower Components (see above)
4. Build `dist`:

	```
	$ grunt serve:dist
	```
5. Push `dist` to wherever it goes.
