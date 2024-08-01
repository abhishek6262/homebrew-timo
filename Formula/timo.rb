# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Timo < Formula
  desc "Capture and search thoughts in your terminal."
  homepage "https://github.com/abhishek6262/timo"
  url "https://github.com/abhishek6262/timo/releases/download/v0.2.4/timo.tar.gz"
  sha256 "cbaa0653ad5b877e148ae89f8d409dcfed8154a5b3d8f9e88d64057dfc38b945"
  version "0.2.4"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "timo"
    bin.install "target/release/timo"
  end
end
