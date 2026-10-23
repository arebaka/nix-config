{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.home = {
    packages = with pkgs; [
      hck
      hexyl

    ];

    shellAliases = {
      cut = "hck";
      nl = "nl -ba -nrn";
      od = "hexyl -b octal --color auto --panels auto";
      hd = "hexyl -b hexadecimal --color auto --panels auto";

    };
  };
}
