# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockingio < Formula
  desc "mockingio is a mocking tool"
  homepage "https://github.com/mockingio/mockingio"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.2/mockingio_v0.0.2_darwin_arm64.tar.gz"
      sha256 "6d05edfb65fb73700ca4443af2f134cd2aed85d47b9c3330aa5f677f62fbfea9"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.2/mockingio_v0.0.2_darwin_amd64.tar.gz"
      sha256 "c161072c7d986c5450b18eba1e6de0b2713377ccac5ca30812d8602d35c14d8e"

      def install
        bin.install "mockingio"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.2/mockingio_v0.0.2_linux_amd64.tar.gz"
      sha256 "f1e3082c01044b45693aa89c5de517e9cd327aa39f6047667b937432f7c7419a"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.2/mockingio_v0.0.2_linux_arm64.tar.gz"
      sha256 "3b75cf56ea0445813c39965d9f9094424f419e17b0d06c2e313be683ad2625ce"

      def install
        bin.install "mockingio"
      end
    end
  end

  test do
    system "#{bin}/mockingio --version"
  end
end
