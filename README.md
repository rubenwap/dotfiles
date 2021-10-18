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
- Double check whether changes are needed to support M1 macs (some `brew` install paths are different)
