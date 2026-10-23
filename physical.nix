{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./.
    ./hardware/bus.nix
    ./hardware/expansions.nix
    ./hardware/security.nix
    ./hardware/sensors.nix
    ./hardware/lights.nix
    ./hardware/cool
    ./services/tlp.nix

  ];
}
