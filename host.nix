{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./physical.nix
    ./hardware/accelerators.nix
    ./hardware/scanners.nix
    ./hardware/input
    ./hardware/gadgets

  ];
}
