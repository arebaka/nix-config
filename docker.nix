{ config, lib, pkgs, inputs, ... }:

{
  virtualisation.docker = {
    enable = true;
    enableNvidia = true;
    enableOnBoot = true;
    liveRestore = true;

    autoPrune = {
      enable = true;
      dates = "weekly";
      persistent = true;
    };

    rootless = {
      enable = true;
      setSocketVariable = true;
    };

    settings = {
      dns = [
        "1.1.1.1"
        "1.0.0.1"
        "8.8.8.8"
        "8.8.4.4"
      ];
      features = {
        buildkit = true;
      };
      max-concurrent-downloads = 16;
    };

  };
}
