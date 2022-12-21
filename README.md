# Dev Browser

git branching for a web browser.

## Installation

Add the following to your `~/.bashrc` or `~/.zshrc` file

```bash
function db {
    ./browser.sh "$1"
}
```

Move the file browser.sh to your home directory.

## Use

Create a new context or web browser branch

```bash
db <new-branch-name>
```

Open an existing web browser branch

```bash
db <existing-branch-name>
```

## How it works

Branch names are .txt files with a URL per line. When you open a branch, your browser window will close and reopen with the URLs from the branch.

## Contributions welcome!

Two things I'd like to add:

1. Syncing tabs easily (right now it's manual)
2. Setting the default browser easily

## Run this easily on Brev.dev:

[![](https://uohmivykqgnnbiouffke.supabase.co/storage/v1/object/public/landingpage/pill-border-lg.png)](https://console.brev.dev/environment/new?repo=https://github.com/brevdev/dev-browser&instance=2x8)

[Brev.dev](https://brev.dev) makes it easy to develop on remote machines. Use Brev.dev to start a project and share your development environment.
