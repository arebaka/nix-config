{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./physical.nix
    ./storage.nix
    ./network.nix

  ];
}
