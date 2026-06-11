class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.6/kube-logger-agent-darwin-arm64"
      sha256 "bbba63dd32cc4299be1c34aa9c3714017aba634b6f4f3769e6212d50d459fd0f"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.6/kube-logger-agent-darwin-x64"
      sha256 "ea597980af9106f07eac2f2c0d3baf5c9a036a64a5118cefe75a9e0023a5c768"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.6/kube-logger-agent-linux-arm64"
      sha256 "c65ae3cab91fdd3de0e841cd8e8c24ca45ff52e261fe703fb05d9762c615b97f"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.6/kube-logger-agent-linux-x64"
      sha256 "04e894332e7dc8e69055d84f5398ee54a6e64d1b7628e0f82a31a0ced042aaa7"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
