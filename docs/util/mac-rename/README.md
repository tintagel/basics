# How to rename your Mac

## Bash script

1. Download the bash script [mac-rename.sh](mac-rename.sh)

2. Make it executable:

```
chmod u+x mac-rename.sh
```

3. Run the script and pass it the name you want your Mac to become:

```
./mac-rename.sh <MyNewHostName>
```

4. Enjoy your newly renamed Mac

## Manual Procedure

***Incase you don't trust my script, which you shouldn't unless you read it carefully.***

1. Open a Terminal

```
sudo scutil --set HostName <MyNewHostName>
sudo scutil --set LocalHostName <MyNewHostName>
sudo scutil --set ComputerName <MyNewHostName>
dscacheutil -flushcache
```
2. Enjoy your newly renamed Mac

## References:
** https://knowledge.autodesk.com/support/flame-products/troubleshooting/caas/sfdcarticles/sfdcarticles/Setting-the-Mac-hostname-or-computer-name-from-the-terminal.html
