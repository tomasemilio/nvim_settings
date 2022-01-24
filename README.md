# nvim_settings

Neovim settings and instructions to migrate to any machine.

## Install neovim
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```

```bash
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
mv squashfs-root /
ln -s /squashfs-root/AppRun /usr/bin/nvim
```

```bash
mkdir -p ~/.config/nvim
```

```bash
git clone https://github.com/tomasemilio/nvim_settings ~/.config/nvim/
```


