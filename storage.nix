{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./physical.nix
    ./hardware/storages.nix
  ];

  hardware.sensor.hddtemp.enable = true;

}
