# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockingio < Formula
  desc "mockingio is a mocking tool"
  homepage "https://github.com/mockingio/mockingio"
  version "0.0.28"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.28/mockingio_v0.0.28_darwin_amd64.tar.gz"
      sha256 "9b42957d07173fa640e201be209913f3cd3d696d89aa1bf6eab19f0a1dcf3fc0"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.28/mockingio_v0.0.28_darwin_arm64.tar.gz"
      sha256 "5992170473bb09bb8b97d82aaad7443be447ed9947112c839c4f520b48f33c46"

      def install
        bin.install "mockingio"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.28/mockingio_v0.0.28_linux_arm64.tar.gz"
      sha256 "77623ba6ec968c2bac9593bc181ca7e499c27d6defb65ae0943b410ef7a0754a"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.28/mockingio_v0.0.28_linux_amd64.tar.gz"
      sha256 "0dc63a7e48bac0b4c3d270db05897b227128c4e49d6686c4ee6cfbcf09eee3cb"

      def install
        bin.install "mockingio"
      end
    end
  end

  test do
    system "#{bin}/mockingio --version"
  end
end
