{ config, lib, pkgs, inputs, ... }:

{
  hardware = {
    tenstorrent.enable = true;
    cpu.intel.npu.enable = true;

    coral = {
      pcie.enable = true;
      usb.enable = true;
    };

  };
}
