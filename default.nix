{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hardware
    ./modules
    ./services
    ./programs
  ];

  services.envfs.enable = true;
}
