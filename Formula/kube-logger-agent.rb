class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.0/kube-logger-agent-darwin-arm64"
      sha256 "b1d702ad8f2467f6c970b6e5166fe87f7f2142da4f8e10992de38fb2c4e3bf82"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.0/kube-logger-agent-darwin-x64"
      sha256 "a2a18cd153e3ede612740452af241e0ff7f4eae6ee8c6fcbab2cce9b6e460cdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.0/kube-logger-agent-linux-arm64"
      sha256 "ea99f952474d7d4a4e8b77e1d402ff87dd7743c3a53d9b253fc401c5dc25acce"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.0/kube-logger-agent-linux-x64"
      sha256 "c5b6c79f74d906d097e7bd35a7cb9bc8d9b87a27383994b787c1e3463f9448d6"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
