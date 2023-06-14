# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jv < Formula
  desc "Determine a Jenkins Version"
  homepage "https://github.com/jenkins-infra/jenkins-version"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.4.2/jenkins-version-darwin-amd64.tar.gz"
      sha256 "f5b5c27bf5ea437e11486715f3fa8af1b882daf1df183c1cfedde1d37e27100a"

      def install
        bin.install "jv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.4.2/jenkins-version-darwin-arm64.tar.gz"
      sha256 "2060f77558e28fbed6c1e80eecad67fca6f2ed9b5ee7f26e372f51550f5bf773"

      def install
        bin.install "jv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.4.2/jenkins-version-linux-amd64.tar.gz"
      sha256 "56c9382a2ca81bc5e15dea43b1353d8b97c4e02f7cf6b3069d7fe5a29737dda6"

      def install
        bin.install "jv"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jenkins-infra/jenkins-version/releases/download/0.4.2/jenkins-version-linux-arm64.tar.gz"
      sha256 "6bf3d39d185b876636d5a1686cfef055bf4d83c1f3557744fff36a1091c2fb59"

      def install
        bin.install "jv"
      end
    end
  end
end
