class GitSyncAll < Formula
  desc "Synchronize a Git superproject and all of its submodules"
  homepage "https://github.com/koniz-dev/git-sync-all"
  url "https://github.com/koniz-dev/git-sync-all/releases/download/v0.7.0/git-sync-all-0.7.0.tar.gz"
  sha256 "078fa01713c9fd2de049448be56f21bb98f45e90bc503376386de6a7e625a2ca"
  license "MIT"

  depends_on "git"

  def install
    bin.install "bin/git-sync-all"
    bash_completion.install "completions/git-sync-all.bash" => "git-sync-all"
    zsh_completion.install "completions/_git-sync-all"
  end

  test do
    assert_match "git-sync-all 0.7.0", shell_output("#{bin}/git-sync-all --version")
  end
end
