# ssh-keygen

Although `ssh-keygen` has rather a lot of command line options, it is actually quite simple to get started with.

GitHub provides a great getting started guide and other resources: 
  * https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
  * https://help.github.com/articles/connecting-to-github-with-ssh/
  
Also, it is worth knowing how to test that the passphrase you set is working and correct:

```
$ ssh-keygen -y -f ~/.ssh/id_rsa
Enter passphrase: < WRONG_PASSPHRASE >
Load key "~/.ssh/id_rsa": incorrect passphrase supplied to decrypt private key
$ echo $?
255
```

&#x2196; Note that this will be a non-zero result.  The actual value may vary across OS and ssh-keygen vendors/versions

```
$ ssh-keygen -y -f ~/.ssh/id_rsa
Enter passphrase:< CORRECT_PASSPHRASE >
ssh-rsa < THE-REST-OF-THE-PUBLIC-KEY ... > ==
```

References:
* https://stackoverflow.com/a/23666831
