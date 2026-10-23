{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./physical.nix
    ./hardware/displays.nix
    ./hardware/graphics
    ./modules/fonts.nix

  ];
}
