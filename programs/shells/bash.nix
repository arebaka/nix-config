{ config, lib, pkgs, inputs, ... }:

{
  programs.bash = {
    undistractMe = {
      enable = true;
      playSound = true;
      timeout = 20;
    };

    shellAliases = lib.mkForce {};

  };
}
