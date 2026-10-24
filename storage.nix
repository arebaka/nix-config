{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./physical.nix
    ./hardware/storages.nix
    ./services/smartd.nix
  ];

  hardware.sensor.hddtemp.enable = true;

}
