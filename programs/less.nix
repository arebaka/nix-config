{ config, lib, pkgs, inputs, ... }:

{
  programs.less = {
    enable = true;
    envVariables = {
      LESS = "-RMi~";
      LESSCHARSET = "UTF-8";
    };
    lessopen = "| ${pkgs.lesspipe}/bin/lesspipe.sh %s";

  };
}
