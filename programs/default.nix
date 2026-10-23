{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./filesystems.nix
    ./less.nix
    ./shells
  ];

  environment.systemPackages = with pkgs; [
    sbctl
    inputs.agenix.packages.${pkgs.stdenv.hostPlatform.system}.default

  ];
}
