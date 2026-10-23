{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./programmers.nix
    ./radio.nix
  ];

  hardware = {
    flipperzero.enable = true;
    glasgow.enable = true;
    saleae-logic.enable = true;
    kryoflux.enable = true;
    digitalbitbox.enable = true;

  };
}
