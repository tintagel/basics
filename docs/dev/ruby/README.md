# Ruby
_Ruby is a dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write._<sup>[[Ruby]](https://www.ruby-lang.org/en/)</sup>

Ruby has become popular in the DevOps, DevSecOps, Rugged, and Security communities, among others.  Popular security tools such as Metaspoit are written in Ruby.

## installing ruby on MacOS
1. Prepare your `.bash_profile` by appending path configuration:

	```
	$ cat <<'EOF' >> ~/.bash_profile
	#Fix $PATH for RBENV and setup RBENV shims
	export RBENV_ROOT=/usr/local/var/rbenv
	if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
	EOF
	```

2. Update your shell environment by re-reading your `.bash_profile`:

	```
	$ source ~/.bash_profile
	```

3. Install some pre-requisites for installing an updated Ruby using `rbenv` ([https://github.com/sstephenson/rbenv](https://github.com/sstephenson/rbenv)):

	```
	$ brew install rbenv ruby-build autoconf pkg-config gdbm libyaml readline sqlite git openssl wget
	```

4. Update your shell environment by re-reading your `.bash_profile`:

	```
	$ source ~/.bash_profile
	```

5. Install a recent version of Ruby using `rbenv` and `ruby-build`:

	```
	$ rbenv install 2.3.1
	```

6. Update `rbenv` to make the latest Ruby available:

	```
	$ rbenv rehash
	```

7. Set the latest installed version of Ruby as the global default:

	```
	$ rbenv global 2.3.1
	```

8. Update a few more things:

	```
	$ gem update --system
	$ rbenv rehash
	$ gem install aws-sdk-core
	$ gem install pry
	$ rbenv rehash
	```
