{ config, lib, pkgs, inputs, ... }:

{
  programs.zsh = {
    enable = true;
    enableBashCompletion = true;
    zsh-autoenv.enable = true;
    enableGlobalCompInit = false;
    promptInit = "";

    shellAliases = lib.mkForce {};

  };
}
