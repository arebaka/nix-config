{ config, lib, pkgs, inputs, ... }:

{
  hardware.facetimehd = {
    enable = true;
    withCalibration = true;

  };
}
