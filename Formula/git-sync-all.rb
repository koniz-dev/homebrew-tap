class GitSyncAll < Formula
  desc "Synchronize a Git superproject and all of its submodules"
  homepage "https://github.com/koniz-dev/git-sync-all"
  url "https://github.com/koniz-dev/git-sync-all/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "7e42673a942ba7b560bb380b3279ffafe6ff1d2f28f38f692a150855a2ba8a18"
  license "MIT"

  depends_on "git"

  def install
    bin.install "bin/git-sync-all"
    bash_completion.install "completions/git-sync-all.bash" => "git-sync-all"
    zsh_completion.install "completions/_git-sync-all"
  end

  test do
    assert_match "git-sync-all 0.4.0", shell_output("#{bin}/git-sync-all --version")
  end
end
