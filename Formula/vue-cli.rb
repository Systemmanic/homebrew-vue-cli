require "language/node"

class VueCli < Formula
  desc "Standard Tooling for Vue.js Development"
  homepage "https://cli.vuejs.org/"
  url "https://registry.npmjs.org/@vue/cli/-/cli-3.11.0.tgz"
  version "3.11.0"
  sha256 "e84445da832aee2f960cd6448e2ce1ebc556ea2861e5e450709eac2af12163f0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "vue", "--version"
  end
end
