class LocalAiAdvisor < Formula
  desc "Hardware-aware local AI model recommendations"
  homepage "https://github.com/chrislaughlin/local-ai-advisor"
  url "https://github.com/chrislaughlin/local-ai-advisor/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2daf7928db01c8781cef7face03ef608d79e5ec4d1d6527c2863ec2ba9dde06a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/local-ai-advisor --version")
  end
end
