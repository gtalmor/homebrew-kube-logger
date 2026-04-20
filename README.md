# homebrew-kube-logger

Homebrew tap for [kube-logger-agent](https://github.com/gtalmor/Kube-Logger).

## Install

```sh
brew tap gtalmor/kube-logger
brew install kube-logger-agent
```

## Run

```sh
kube-logger-agent
# → prints https://logviewer.gtalmor.com/?session=<id> — bookmark it
```

On first run the agent creates `~/.kube-logger/config.json` — edit it to map your AWS profiles to EKS cluster names, set a region, or hide profiles from the drawer.
