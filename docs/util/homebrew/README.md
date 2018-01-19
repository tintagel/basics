# Homebrew

***The missing package manager for OS X***<sup>[[brew.sh]](http://brew.sh)</sup>

_Homebrew is a free and open-source software package management system that simplifies the installation of software on Apple's OS X operating system._<sup>[[Wikipedia]](https://en.wikipedia.org/wiki/Homebrew_%28package_management_software%29)</sup>

#### Installing homebrew
1. Prepare your `.bash_profile` by appending path configuration:

	```
	$ cat <<'EOF' >> ~/.bash_profile
	# Fix $PATH for homebrew
	homebrew=/usr/local/bin:/usr/local/sbin
	export PATH=$homebrew:$PATH
	EOF
	```
2. Update your shell environment by re-reading your `.bash_profile`:

	```
	$ source ~/.bash_profile
	```
3. Install homebrew [http://brew.sh/](http://brew.sh/):

	```
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	```
4. Happy brewing!

# Homebrew Advanced Installation

***In case you think it is a bad idea to download and directly execute an installation script (which it probably is...)***

Check out the [advanced installation procedure](ADVANCED.md).
