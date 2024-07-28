# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Timo < Formula
  desc "Capture and search thoughts in your terminal."
  homepage "https://github.com/abhishek6262/timo"
  url "https://github.com/abhishek6262/timo/releases/download/v0.2.0/timo.tar.gz"
  sha256 "fda810111348d3b32a5ec6dd36a52a5566862064489106b17c16c13932f0fad3"
  version "0.2.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "timo"
    bin.install "target/release/timo"
  end
end
