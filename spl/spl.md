## Add SPL alias
We can add following to ~/.bash_aliases
```
function spl {
   cwd=`pwd`
   cd ~/myexpos/spl
   ./spl "$cwd/$1"
   cd $cwd
}
```