Install nvim
```
A=$(uname -m | sed 's/aarch64/arm64/')   # x86_64 or arm64
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-$A.tar.gz
sudo rm -rf /opt/nvim-linux-$A
sudo tar -C /opt -xzf nvim-linux-$A.tar.gz
sudo ln -sf /opt/nvim-linux-$A/bin/nvim /usr/local/bin/nvim
rm nvim-linux-$A.tar.gz
```

Install config
```
git clone https://github.com/mohitjavale/nvim_config.git ~/.config/nvim
```

Install additional stuff
```
sudo apt install -y git curl unzip build-essential ripgrep xclip wl-clipboard
```

Install jet brains mono nerd font
```
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip -o JetBrainsMono.zip JetBrainsMonoNLNerdFontMono-{Regular,Bold,Italic,BoldItalic}.ttf
rm JetBrainsMono.zip && fc-cache -f
cd -
```

Install nodejs for few lsp's
```
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs
```
