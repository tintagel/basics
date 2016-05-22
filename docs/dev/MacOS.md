#MacOS

_Setting up a basic local development environment_

MacOS is a great \*nix-like OS, however there are times that you will want development tools that aren't included or are more current than the built-ins.

##DISCLAIMER
_If you have a preferred method to obtain and manage this stuff, by all-means use it.  This info is here because I spent too much time figuring it out the first time and wanted to record/share what I learned. I hope this is useful to others - your mileage may vary._

###xcode
1. Install Apple xcode command line tools: `$ xcode-select --install`

2. Confirm the installation with: `$ xcode-select -p`. You should see this:

	```
	/Applications/Xcode.app/Contents/Developer
	```

###homebrew
1. Install homebrew by following the reference at: [/docs/util/homebrew](/docs/util/homebrew)

###ruby
1. Install ruby by following the references at: [/docs/dev/ruby](/docs/dev/ruby)
