require "language/node"

class VueCli < Formula
  desc "Standard Tooling for Vue.js Development"
  homepage "https://cli.vuejs.org/"
  url "https://registry.npmjs.org/@vue/cli/-/cli-4.1.1.tgz"
  sha256 "a38b37599a8601e967ea3fc2de7e3491bb89f5864e3add6229f25a4fad115928"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "vue", "--version"
  end
end
