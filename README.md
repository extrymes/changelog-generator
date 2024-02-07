# Changelog Generator
A simple Bash script that generates a changelog from commits in a local repository.

## ✨ Features
- Easy to use and setup
- Automatically detects new versions
- Configurable output file, commit types and sections
- Conforms to [Conventional Commits](https://conventionalcommits.org)

## 📦 Dependencies
- [git](https://git-scm.com)
- [jq](https://jqlang.github.io/jq)

## 🛠️ Installation
Make sure you have installed the dependencies before proceeding. You can install gch automatically or manually.
### Automatically
1. Just run the `setup` file
```bash
chmod +x setup
./setup
```
### Manually
1. Make `gch` file executable
```bash
chmod +x gch
``` 
2. Copy `gch` file to `/usr/local/bin` directory
```bash
sudo cp gch /usr/local/bin
```
3. Copy `config.json` file to a new `/etc/gch` directory
```bash
sudo mkdir -p /etc/gch
sudo cp config.json /etc/gch
```
4. Add `/usr/local/bin` directory to PATH **(only if not already there)**
```bash
echo "export PATH=\"/usr/local/bin:\$PATH\"" >> ~/.bashrc # or .zshrc
source ~/.bashrc # or .zshrc
```
## ⚙️ Configuration
You can configure settings in `config.json` file and then run the `setup` file to copy changes or directly configure in `/etc/gch/config.json` file.

## 🚀 Getting started
1. Go to a local repository
2. Run `gch`