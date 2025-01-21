# Changelog Generator
A simple shell script that generates a changelog from commits in a local repository.

## ✨ Features
- Easy to use and setup
- Configurable output file, initial version, commit types and sections
- Automatically detects major and minor updates and patches
- Calculates new version based on the update
- Automated version bump
- Conforms to [Conventional Commits](https://conventionalcommits.org) and [SemVer](https://semver.org)

## 🚀 Getting started
Make sure you have installed [git](https://git-scm.com/downloads) and [jq](https://jqlang.github.io/jq/download/) before proceeding. The quick install is recommended.
### Quick install
```bash
bash -c 'bash <(curl -s https://raw.githubusercontent.com/extrymes/changelog-generator/main/install.sh)'
```
### Manually
1. Clone this repository
```bash
git clone https://github.com/extrymes/changelog-generator.git
cd changelog-generator
```
2. Make the `gch` file executable
```bash
chmod +x gch
```
3. Add the directory containing the `gch` file to the PATH (for example)
```bash
echo "export PATH=\"/\$HOME/.local/changelog-generator:\$PATH\"" >> ~/.zshrc # or .bashrc
source ~/.zshrc # or .bashrc
```
Now you can run `gch` in a local repository.

## ⚙️ Configuration
You can configure these settings in the config file located at `{HOME}/.local/changelog-generator/config.json`.
<table>
	<thead>
		<tr>
			<th>Setting</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><code>output_file</code></td>
			<td>The default file to which the changelog will be written.</td>
		</tr>
		<tr>
			<td><code>initial_version</code></td>
			<td>The initial version used to start a project.</td>
		</tr>
		<tr>
			<td><code>commit_types</code></td>
			<td>The conventional commit types and their sections.</td>
		</tr>
	</tbody>
</table>

## 📸 Showcase
![showcase](https://i.imgur.com/YSu79Zc.png)
