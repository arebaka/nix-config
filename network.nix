{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./.
    ./hardware/network.nix
    ./hardware/virtual.nix
    ./hardware/wireless
    ./modules/networking.nix

  ];
}
