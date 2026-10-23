{ config, lib, pkgs, inputs, ... }:

{
  hardware = {
    raid.HPSmartArray.enable = true;
    usbStorage.manageShutdown = true;
    usb-modeswitch.enable = true;

  };
}
