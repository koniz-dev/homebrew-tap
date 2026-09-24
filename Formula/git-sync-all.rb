class GitSyncAll < Formula
  desc "Synchronize a Git superproject and all of its submodules"
  homepage "https://github.com/koniz-dev/git-sync-all"
  url "https://github.com/koniz-dev/git-sync-all/releases/download/v0.5.0/git-sync-all-0.5.0.tar.gz"
  sha256 "6ee54b67260535b98708a15228d03010296ff5a264856b5da369d9a15c77becc"
  license "MIT"

  depends_on "git"

  def install
    bin.install "bin/git-sync-all"
    bash_completion.install "completions/git-sync-all.bash" => "git-sync-all"
    zsh_completion.install "completions/_git-sync-all"
  end

  test do
    assert_match "git-sync-all 0.5.0", shell_output("#{bin}/git-sync-all --version")
  end
end
