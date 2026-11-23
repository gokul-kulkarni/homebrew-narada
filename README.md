# Homebrew tap for Narada

[Narada](https://github.com/gokul-kulkarni/narada) is a free, local-first, Postman-compatible API
client.

```sh
brew install --cask gokul-kulkarni/narada/narada
```

Narada is not notarized by Apple yet, so the first time you open it macOS says it can't check it
for malware: open **System Settings → Privacy & Security**, scroll to Narada and choose
**Open Anyway**.

Update with `brew upgrade --cask narada`.

`brew uninstall --cask narada` removes the app and keeps your data. `brew uninstall --zap narada`
also deletes Narada's data in `~/Library`, **including your collections and environments if they
are in Narada's default folder**. A folder you chose yourself in Narada's settings (such as one in
Google Drive) is left alone.
