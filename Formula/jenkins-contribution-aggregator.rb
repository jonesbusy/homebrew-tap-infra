# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JenkinsContributionAggregator < Formula
  desc "Jenkins Submitter Pivot Table analyzer."
  homepage "https://github.com/jenkins-infra/jenkins-contribution-aggregator"
  version "1.2.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jenkins-infra/jenkins-contribution-aggregator/releases/download/v1.2.10/jenkins-contribution-aggregator_1.2.10_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c36330508cd0c4c9612acc0e1e4c79c8cbebb7e06d15b3ef2afeaf4557bb010a"

      def install
        bin.install "jenkins-contribution-aggregator"
      end
    end
    on_arm do
      url "https://github.com/jenkins-infra/jenkins-contribution-aggregator/releases/download/v1.2.10/jenkins-contribution-aggregator_1.2.10_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5ab994a98e3bc2da32019ebbdb81def8a6226baefd3ca27eba8073825e443dea"

      def install
        bin.install "jenkins-contribution-aggregator"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-contribution-aggregator/releases/download/v1.2.10/jenkins-contribution-aggregator_1.2.10_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "0c4427541702f10adbefeba74556108def5d5407abd3d6a88bfe1680a7ecdae4"

        def install
          bin.install "jenkins-contribution-aggregator"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-contribution-aggregator/releases/download/v1.2.10/jenkins-contribution-aggregator_1.2.10_linux_armv6.tar.gz", using: CurlDownloadStrategy
        sha256 "a5b6d8fe29853f7a6d2d03dc570961f886c50f94bd41434cd64a233f1064e537"

        def install
          bin.install "jenkins-contribution-aggregator"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jenkins-infra/jenkins-contribution-aggregator/releases/download/v1.2.10/jenkins-contribution-aggregator_1.2.10_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "5fd36be874d249f979bc59bc22bc365fdf7d5a0bd0f4b7e4227b6fd77edf6ea0"

        def install
          bin.install "jenkins-contribution-aggregator"
        end
      end
    end
  end

  test do
    system "#{bin}/jenkins-contribution-aggregator version -d"
  end
end
