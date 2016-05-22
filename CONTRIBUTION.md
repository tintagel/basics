#basics - How to contribute

First, this is basically a repo of my notes on stuff so I don't really anticipate anyone finding this and wanting to contribute.  But if you do find it and want to contribute, then I am grateful that you decided to help and share!

Use the standard GitHub workflow in the Fork & Pull Model:
* [GitHub Flow](https://guides.github.com/introduction/flow/)
* [Fork A Repo](https://help.github.com/articles/fork-a-repo/)
* [Using pull requests](https://help.github.com/articles/using-pull-requests/)

##Walkthrough:

1. Fork the repo
2. Clone your fork

  ```
  $ git clone git@github.com:<YOUR_PROJECT_FORK>/basics.git
  ```
3. Configure your remotes:

  ```
  $ cd 1344
  $ git remote add upstream git@github.com:tintagel/basics.git
  ```
4. [Create an issue](https://github.com/tintagel/basics/issues) that describes the problem you want to solve with your contribution.
5.  Create a feature branch on your fork

  ```
  $ git checkout -b <your_branch_name_here>
  ```
6.  Make the changes:
  * Be sure to commit early and often.
  * Generally, one commit for each file changed, or each major change to a file (could be multiple commits for a single file).   Make the changes easy to follow and understand.

    ```
    $ git add <file>
    $ git commit -m "_short explanation of the change_"
    ```
7.  Test your changes!
8.  Push the feature branch to your remote repo:

  ```
  $ git push origin <your_branch_name_here>
  ```
9.  Submit a pull request from your branch on your fork against `master` on the main repo.
10.  Respond to comments/questions, make updates to your branch and push the updates to amend the pull request as needed.
11.  Celebrate when the pull request is merged!  Seriously though, I'm grateful for the help.

## Staying up to date:

1. While in the root directory of your fork of the repo:

  ```
  $ git checkout master
  $ git reset --hard origin/HEAD   #This will discard any commits on master that are not on the remote
  $ git clean -dfx                 #This will discard any local un-tracked files
  $ git fetch upstream
  $ git merge upstream/master
  $ git push origin master
  ```
2. Enjoy your updated local and remote!
