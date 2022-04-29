## Add EXPL alias
We can add following to ~/.bash_aliases
```
function expl {
   cwd=`pwd`
   cd ~/myexpos/expl
   ./expl "$cwd/$1"
   cd $cwd
}
```