{ config, lib, pkgs, inputs, ... }:

{
  hardware = {
    tenstorrent.enable = true;

    coral = {
      pcie.enable = true;
      usb.enable = true;
    };

  };
}
