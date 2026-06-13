# Dev Container

## Usage

### From your fork

```bash
curl -fsSL -o main.zip "https://github.com/${GITHUB_USERNAME}/devcontainer/archive/refs/heads/main.zip"
unzip main.zip
mv devcontainer-main/.* .
rm -rf main.zip devcontainer-main
git init
git add .
git commit -m "chore: Initial commit"
code .
```

### From this repo

```bash
curl -fsSL -o main.zip https://github.com/zaharsk/devcontainer/archive/refs/heads/main.zip
unzip main.zip
mv devcontainer-main/.* .
rm -rf main.zip devcontainer-main
code .
```

Edit `.devcontainer/.env` with your info

```bash
git init
git add .
git commit -m "chore: Initial commit"
```
