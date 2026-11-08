# kraal's formula, put in the tap by kraal's release workflow (packaging/homebrew/publish.sh).
class Kraal < Formula
  desc "Terminal workspaces for coding agents and SSH fleets"
  homepage "https://github.com/vodhash/kraal"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vodhash/kraal/releases/download/v0.6.1/kraal-aarch64-apple-darwin.tar.gz"
      sha256 "bbd049fef5107af5304acdfc9fedf6ca163da37b2fe9167ef1f148f4e16217ec"
    end
    on_intel do
      url "https://github.com/vodhash/kraal/releases/download/v0.6.1/kraal-x86_64-apple-darwin.tar.gz"
      sha256 "7285bf182124d9a7477a4dbcc9fe407418b95bb02d0331f078df0ccf13b95e3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vodhash/kraal/releases/download/v0.6.1/kraal-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ae434a103ba3a5223ed813569b5489f1f7c113e2eb469ae3b013f3ff37e10c2"
    end
    on_intel do
      url "https://github.com/vodhash/kraal/releases/download/v0.6.1/kraal-x86_64-unknown-linux-musl.tar.gz"
      sha256 "671885968e67cebe3f9cfbe55035d549e7a198dd552aca5794b5fa5941cac7eb"
    end
  end

  def install
    bin.install "kraal"
  end

  test do
    assert_match "kraal #{version}", shell_output("#{bin}/kraal --version")
  end
end
