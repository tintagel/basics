# Homebrew Advanced Installation
***In case you think it is a bad idea to download and directly execute an installation script (which it probably is...)***

i.e. The default _easy_ installation of homebrew is to use:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
which downloads a Ruby installation script and directly executes it using system Ruby.

## About Homebrew
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
3. Install homebrew [https://docs.brew.sh/Installation.html](https://docs.brew.sh/Installation.html):

  *Note:* Do this as a user that is able to use `sudo`, even if your regular user cannot `sudo`

	```
	# get, install, and cleanup

	$ cd /usr/local
	$ sudo mkdir homebrew &&
	$ sudo curl -L https://github.com/Homebrew/brew/tarball/master
	$ sudo tar xzvf master --strip 1 -C homebrew
	$ rm master


	# fix filesystem permissions for homebrew

	$ sudo chown -R $(whoami) /usr/local/homebrew
	$ sudo chown -R $(whoami) /usr/local/var/homebrew
	$ sudo mkdir -P /usr/local/var/homebrew
	$ sudo chown -R $(whoami) /usr/local/var/homebrew
	$ sudo mkdir -p /usr/local/etc
	$ sudo chown -R $(whoami) /usr/local/etc
	$ sudo chown -R $(whoami) /usr/local/bin /usr/local/lib


	# create symlink to be able to execute homebrew

	$ cd /usr/local/bin
	$ sudo ln -s /usr/local/homebrew/bin/brew


	# check and update the homebrew installation

	$ brew doctor
	$ brew update
	$ brew upgrade
	```

#### How to download a copy of the Ruby install script that is the default homebrew installation method

***In case you are feeling curious as to how the 'easy' install works***

```
curl -#OL https://raw.githubusercontent.com/Homebrew/install/master/install
```
