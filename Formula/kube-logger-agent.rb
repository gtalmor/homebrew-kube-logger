class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.0/kube-logger-agent-darwin-arm64"
      sha256 "59770cd67049b5ff81eff80be917e10360610200ad85c9d99a0cda968f9d84c1"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.0/kube-logger-agent-darwin-x64"
      sha256 "47fb2def4f074d862ebd65a0dcd13f6d8f668179eb709dcbf116f6ed2fd8cbb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.0/kube-logger-agent-linux-arm64"
      sha256 "db6a625f2ca5c9e50e1ab7f9edc33562f19ea6ade54cb6dded83554f8d7f9a4e"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.0/kube-logger-agent-linux-x64"
      sha256 "cc43758e2cfb44894f2d666985a0c7a54aca800bffd722b180247cf9f2933ef6"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
