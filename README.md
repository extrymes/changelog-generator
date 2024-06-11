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

## 🚀 Getting started
Make sure you have installed the dependencies before proceeding. The quick install is recommended.
### Quick install
```bash
bash -c 'bash <(curl -s https://raw.githubusercontent.com/extrymes/changelog-generator/main/install.sh)'
```
### Manually
1. Clone the repository
```bash
git clone https://github.com/extrymes/changelog-generator.git
cd changelog-generator
```
2. Make the `gch` file executable
```bash
chmod +x gch
```
3. Add the directory to the PATH (for exemple)
```bash
echo "export PATH=\"/\$HOME/.local/changelog-generator:\$PATH\"" >> ~/.zshrc # or .bashrc
source ~/.zshrc # or .bashrc
```
## ⚙️ Configuration
You can configure these keys in config file:
- `output_file`: The file to which the changelog will be written
- `initial_version`: The version of the first update
- `commit_types`: The array of commit types and sections
> The config file is located in the same directory as executable: `$HOME/.local/changelog-generator/config.json`

## 💡 Usage
1. Go to a local repository
2. Run `gch`

## 📸 Showcase
![showcase](https://i.imgur.com/YSu79Zc.png)
