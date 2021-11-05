# Dotfiles

Repository with my dotfiles. I am using [YADM](https://yadm.io) to manage them, which makes the restoration on a new system very easy:

1) Install Rosetta (until it's not necessary anymore)

```
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```

2) Install Brew 

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3) Install YADM:

```
brew install yadm
```

4) And clone the repo with SSH if you have done [this first](https://docs.github.com/es/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) or with http otherwise:

```
yadm clone git@github.com:rubenwap/dotfiles.git
```

5) For the moment, answer "NO" to the YADM request to boostrap the scripts, since they need a re-do. You can just do `brew bundle dump --file=Brewfile`

6) Configure Git for [signed commits](https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e)

7) Configure Fish as default shell and the fzf bindings
```
chsh -s `which fish`
/opt/homebrew/opt/fzf/install
```

That should do. 


