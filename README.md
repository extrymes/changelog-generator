# Changelog Generator
A simple Bash script that generates a changelog from commits in a local repository.

## ✨ Features
- Easy to use and setup
- Configurable output file, commit types and sections
- Automatically detects major and minor updates and patches
- Calculates new version based on the update
- Automated version bump
- Conforms to [Conventional Commits](https://conventionalcommits.org) and [SemVer](https://semver.org)

## 📦 Dependencies
- [git](https://git-scm.com)
- [jq](https://jqlang.github.io/jq)

## 🛠️ Installation
Make sure you have installed the dependencies before proceeding. You can install gch automatically or manually.
### Automatically
1. Just run the `setup` file
```bash
chmod +x setup
sudo ./setup
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
You can configure these keys in config file:
- `output_file`: The file to which the changelog will be written
- `initial_version`: The version of the first update
- `commit_types`: The array of commit types and sections
> Run the `setup` file to copy changes or directly configure in `/etc/gch/config.json` file.

## 🚀 Getting started
1. Go to a local repository
2. Run `gch`

## 📸 Showcase
![showcase](https://i.imgur.com/YSu79Zc.png)