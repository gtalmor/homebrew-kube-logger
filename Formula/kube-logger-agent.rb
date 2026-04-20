class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.1/kube-logger-agent-darwin-arm64"
      sha256 "1458bc75793569c62ea117ad15053eeb3d7ca451891996dd4d6a8d6e894e68f4"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.1/kube-logger-agent-darwin-x64"
      sha256 "53d2e0d2d1a8132132a02b8618047dab55a67c34946201d1ceef700edcbb77be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.1/kube-logger-agent-linux-arm64"
      sha256 "e3d741becd322d15d39ea18321f2806c81b711ba0ee9cb994c9e1edffad3d351"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.1/kube-logger-agent-linux-x64"
      sha256 "ac65899399c2f0f2ee3da7730e48f0221a8bccd19b51abac2e979a0564e11464"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
