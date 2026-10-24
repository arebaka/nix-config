{ config, lib, pkgs, inputs, ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware = {
    nvidia = {
      nvidiaPersistenced = true;
      powerManagement.enable = true;

    };

    nvidia-container-toolkit.enable = true;

  };
}
