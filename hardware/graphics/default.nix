{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ../capture/video.nix
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;

  };
}
