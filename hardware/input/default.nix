{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./keyboards.nix
    ./tablets.nix
    ./gamepads.nix
    ./driving.nix
    ./3d_mouses.nix
  ];

  hardware.uinput.enable = true;

}
