{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./irc.nix
    ./bluetooth.nix

  ];
}
