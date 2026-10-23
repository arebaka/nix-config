{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./physical.nix
    ./services/pipewire.nix

  ];
}
