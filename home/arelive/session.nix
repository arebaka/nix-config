{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.home = {
    sessionVariables = {
      PAGER = "bat";
      TERMINAL = "kitty";
      BROWSER = "firefox";
      BLOCKSIZE = "human-readable";
      PNPM_HOME = "$HOME/.local/share/pnpm";
      BUN_INSTALL = "$HOME/.bun";
      ANDROID_HOME = "$HOME/.android/sdk";
    };

    sessionPath = [
      "$HOME/go/bin"
      "$HOME/.cargo/bin"
      "$HOME/.local/share/pnpm"
      "$HOME/.bun/bin"
      "$HOME/.local/share/gem/ruby/3.3.0/bin"

    ];
  };
}
