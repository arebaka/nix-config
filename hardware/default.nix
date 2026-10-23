{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./cpu.nix
    ./check.nix
  ];

  hardware.enableRedistributableFirmware = true;
}
