# Homebrew tap for 3dfetch

```bash
brew trust Rutytoi220/tap
brew install Rutytoi220/tap/3dfetch
```

The formula is called `threefetch` because Homebrew formula names can't
start with a digit — the `3dfetch` alias points at it, so either name
works. It builds from source, and installs both `3dfetch` and `fetch`.

Homebrew 7 wants third-party taps to be trusted before it loads them. If
you're on an older release, the `brew trust` line will just say the
command doesn't exist; skip it.

`fastfetch` is a recommended dependency, for the distro logos:

```bash
brew install --without-fastfetch Rutytoi220/tap/3dfetch
```

to skip it if you already have the logos somewhere.
