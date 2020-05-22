# vim-config
How I configured vim


The .vim folder was too large to upload. The vim.tar.gz.split folder is the .vim folder

## Creating vim.tar.gz.split
```
tar czvf vim.tar.gz .vim
mkdir vim.tar.gz.split
cd split
split ../vim.tar.gz
rm vim.tar.gz
```

## Unpacking vim.tar.gz.split
```
cd vim.tar.gz.split
cat * > ../vim.tar.gz
cd ..
tar xzvf vim.tar.gz
```
