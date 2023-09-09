## Quick Label Translation for library.lib
- LINE=LABEL/2+1
- LABEL=2*(LINE-1)

## For custom library
run label_translator for removing labels

`python3 label_translator.py`
## Add ltranslate alias
We can add following to ~/.bash_aliases

`ltranslate="python3 label_translator.py"`