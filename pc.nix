{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./host.nix
    ./storage.nix
    ./video.nix
    ./audio.nix
    ./network.nix

  ];
}
