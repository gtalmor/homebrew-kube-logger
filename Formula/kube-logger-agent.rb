class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.2/kube-logger-agent-darwin-arm64"
      sha256 "8f2db6d8cd91eac5ac183d3381a6c745e77dd938d3f623a18417275b915afb49"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.2/kube-logger-agent-darwin-x64"
      sha256 "4f34e159ec6ce0cf3aff41644ed1e9a9ff6628ffa49a88d07fb60ee2cbc5df20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.2/kube-logger-agent-linux-arm64"
      sha256 "905675d2a26487ad361a4bdd5dc138cc7c5f35dae44b6fdb224abcc50427b86a"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.2/kube-logger-agent-linux-x64"
      sha256 "760f4fd9669e0b22185d9000d35e21f6063100d7af066f4c30763ad2c5065732"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
