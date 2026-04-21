class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.0/kube-logger-agent-darwin-arm64"
      sha256 "c2daf0c61f456e0eb7101ac1ce319aac9ebc39646a521c20d4f8c9acec03ebb4"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.0/kube-logger-agent-darwin-x64"
      sha256 "c232c6a51df6e25f1dd11303b04c97e7fbde1ffea704ce1fd8ca082c748289c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.0/kube-logger-agent-linux-arm64"
      sha256 "a4f7ee1dd4f6494e79f572c73ca5984e8e64366fb0dd4646ab81eaf845b259b7"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.0/kube-logger-agent-linux-x64"
      sha256 "0962b931b6f28abec0eb7b8f3dec80194ad417169db41348f4f235216b5b4f82"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
