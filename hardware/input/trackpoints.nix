{ config, lib, pkgs, inputs, ... }:

{
  hardware.trackpoint = {
    enable = true;
    sensitivity = 192;
    speed = 64;
    mindrag = 16;

  };
}
