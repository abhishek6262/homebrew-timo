# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Timo < Formula
  desc "Capture and search thoughts in your terminal."
  homepage "https://github.com/abhishek6262/timo"
  url "https://github.com/abhishek6262/timo/releases/download/v0.2.2/timo.tar.gz"
  sha256 "348be7de335984d0b1150f879dc58bba09f3eb263674d01f1e2b872681b41912"
  version "0.2.2"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "timo"
    bin.install "target/release/timo"
  end
end
