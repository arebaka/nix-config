{ config, lib, pkgs, inputs, ... }:

{
  hardware = {
    rtl-sdr.enable = true;
    hackrf.enable = true;
    bladeRF.enable = true;
    ubertooth.enable = true;

  };
}
