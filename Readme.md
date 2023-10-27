# Neo vim

## Configuration folder 

Linux:
```bash
~/.config/nvim
```

Windows:
```bat
%LOCALAPPDATA%/nvim
~/AppData/Local/nvim
```

## Install packer

To run your packages you will need nodejs.

use:
```ps1
winget install nodejs
"c:\Program Files\nodejs\install_tools.bat"
```

```ps1
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
mkdir "$env:LOCALAPPDATA\nvim-data\site\pack\packer\opt"
mv "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"  "$env:LOCALAPPDATA\nvim-data\site\pack\packer\opt"
```
