# Python
_Python is a programming language that lets you work quickly
and integrate systems more effectively._<sup>[[Python]](https://www.python.org)</sup>

Python has become popular in the DevOps, and Scientific communities, among others.  Popular automation tools such as the AWS CLI are written in Ruby.

## installing python on MacOS
1. Prepare your `.bash_profile` by appending path configuration:

	```
	$ cat << EOF >> ~/.bash_profile
	#Fix path for PYENV and setup PYENV shims
	export PYENV_ROOT=/usr/local/var/pyenv
	if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
	EOF
	```

2. Update your shell environment by re-reading your `.bash_profile`:

	```
	$ source ~/.bash_profile
	```

3. The rest of this assumes that you have already installed `rbenv` following the steps here: [../ruby/README.md](../ruby/README.md)

	```
	The rest of the steps may not work unless the steps to install ruby are completed (only because that is the sequence of steps I followed).
	```

	Based on [pyenv/pyenv/Common build problems](https://github.com/pyenv/pyenv/wiki/Common-build-problems)

	```
	$ brew install readline xz
	```

	Should allow it to work.

4. Use homebrew to install `pyenv`:

	```
	$ brew install pyenv
	```

5. Install a recent version of Python using `pyenv`:

	```
	$ pyenv install 2.7.13
	```

6. Update `pyenv` to make the latest Python available:

	```
	$ pyenv rehash
	```

7. Set the latest installed version of Ruby as the global default:

	```
	$ pyenv global 2.7.13
	```

8. Update your shell environment by re-reading your `.bash_profile`:

	```
	$ source ~/.bash_profile
	```

9. Update a few more things:

	```
	$ pip install awscli --upgrade
	$ pyenv rehash
	```

  ## References

  * https://github.com/pyenv/pyenv
  * https://github.com/pyenv/pyenv#homebrew-on-mac-os-x
  * https://www.python.org
  * http://docs.aws.amazon.com/cli/latest/userguide/installing.html
