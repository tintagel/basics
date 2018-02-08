# git

## Stupid Git Tricks

### setup different git configurations based on folder structure using conditional includes

#### ~/.gitconfig
```
# ~/.gitconfig
# This is Git's per-user configuration file.
  
# Default git user information
[user]
# Please adapt and uncomment the following lines:
        name = default_f_name default_l_name
        email = default_email@address.example.com


# use "includeIf" with configuration files to set
# folder specific git user information

# comment for path 1
[includeIf "gitdir:~/path/1/"]
  path = ~/path/1/.gitconfig

# comment for path 2
[includeIf "gitdir:~/path/2/"]
  path = ~/path/2/.gitconfig
```
#### ~/path/1/.gitconfig

```
# This is my .gitconfig for repos in ~/path/1/
[user]
        name = f_name_1 l_name_1
        email = email-1@example.com
```


#### ~/path/2/.gitconfig

```
# This is my .gitconfig for repos in ~/path/2/
[user]
        name = f_name_2 l_name_2
        email = email-2@example.com
```

#### References (includeIf)

* https://git-scm.com/docs/git-config#_conditional_includes
* https://motowilliams.com/conditional-includes-for-git-config **<-- [Most Useful]**
* https://dev.to/maxlmator/maintaining-different-git-identities
* https://www.edwardthomson.com/blog/git_conditional_includes.html
* https://public-inbox.org/git/xmqqbmqzbzh0.fsf@gitster.mtv.corp.google.com/T/

### diff against a remote

```
git diff @ @{upstream}
```

```
git fetch upstream
git diff master upstream/master
```

#### References
* https://stackoverflow.com/questions/1800783/compare-local-git-branch-with-remote-branch
* https://stackoverflow.com/questions/9834689/comparing-two-branches-in-git
* https://git-scm.com/docs/git-diff

### Delete a branch

#### Local Branch

```
git branch -d branch_name
```

#### Remote Branch

```
git push <remote_name> :<branch_name>
```
