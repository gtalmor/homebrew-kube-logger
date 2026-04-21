class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.6/kube-logger-agent-darwin-arm64"
      sha256 "a5c562cee2c52a38f0655233eb4c7ae1176039b761e1c9121baa683895752581"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.6/kube-logger-agent-darwin-x64"
      sha256 "277400eac2a9275ba0add61fd64d76982e62f4dfb56837a32ba4c2a9767f2768"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.6/kube-logger-agent-linux-arm64"
      sha256 "e1d730ce58fe353226541b0937e6d5c6eea854169516b0cd351294ba96762b53"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.6/kube-logger-agent-linux-x64"
      sha256 "18cd0b772f6d1b7d97a4db86c1bc0069c40975bd9fba6f8816ba5ba73dd2fd83"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
