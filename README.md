# homebrew-narada (moved)

Narada's cask now lives in [gokul-kulkarni/homebrew-tap](https://github.com/gokul-kulkarni/homebrew-tap),
together with my other apps and tools.

```sh
brew trust gokul-kulkarni/tap
brew install --cask gokul-kulkarni/tap/narada
```

If you installed Narada from this tap, `brew update` moves it to the new tap for you
(`tap_migrations.json`). You can then remove this one: `brew untap gokul-kulkarni/narada`.
