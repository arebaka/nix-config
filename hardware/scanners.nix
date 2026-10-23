{ config, lib, pkgs, inputs, ... }:

{
  hardware.sane = {
    enable = true;
    openFirewall = true;
    brscan4.enable = true;
    brscan5.enable = true;
    dsseries.enable = true;
    drivers.scanSnap.enable = true;

    extraBackends = with pkgs; [
      sane-airscan
    ];

  };
}
