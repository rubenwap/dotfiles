# Dotfiles

Repository with my dotfiles. I am using [YADM](https://yadm.io) to manage them, which makes the restoration on a new system very easy:

If you don't have YADM in the new system:

```
curl -fLo /usr/local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x /usr/local/bin/yadm
```

After you got it:

```
yadm clone git@github.com:rubenwap/dotfiles.git
```

TODO:

- Add the bootstrap script to enable signed git commits
- Fish keybindings to fzf can throw an error because the path is different in M1 and Intel macs
- M1 macs need to have `/opt/homebrew/bin` in the path too
- Make fish default 

(M1 specific issues can be solved with the templating yadm provides)