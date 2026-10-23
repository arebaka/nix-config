{ config, lib, pkgs, inputs, ... }:

{
  hardware = {
    libftdi.enable = true;
    libjaylink.enable = true;

  };
}
