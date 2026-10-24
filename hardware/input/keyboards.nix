{ config, lib, pkgs, inputs, ... }:

{
  hardware = {
    ckb-next.enable = true;
    wooting.enable = true;
    inputmodule.enable = true;

    openrazer = {
      enable = true;
      batteryNotifier.enable = true;
      keyStatistics = true;
      devicesOffOnScreensaver = false;
    };

    logitech = {
      lcd.enable = true;
      wireless.enable = true;
    };

    keyboard = {
      uhk.enable = true;
      zsa.enable = true;
      qmk = {
        enable = true;
        keychronSupport = true;
      };
    };

  };

  programs.solaar.enable = true;
}
