# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockingio < Formula
  desc "mockingio is a mocking tool"
  homepage "https://github.com/mockingio/mockingio"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.4/mockingio_v0.0.4_darwin_arm64.tar.gz"
      sha256 "319e189ca402ffd0ce403cd47e6a22900b3d7e44a9ec380b6180d9c8db6f4b4a"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.4/mockingio_v0.0.4_darwin_amd64.tar.gz"
      sha256 "0751b360d78dd729bd176167f53664f3fe3bba4492403efd407d179f2a957ea3"

      def install
        bin.install "mockingio"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.4/mockingio_v0.0.4_linux_arm64.tar.gz"
      sha256 "38e4e2affe6c7c83e08974026982967298c1282d503c6d6c4d32415fcef4b236"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.4/mockingio_v0.0.4_linux_amd64.tar.gz"
      sha256 "36352c73d22f151e361d9505f1eae2198501714735eb1029da42b3ab9c10dafa"

      def install
        bin.install "mockingio"
      end
    end
  end

  test do
    system "#{bin}/mockingio --version"
  end
end