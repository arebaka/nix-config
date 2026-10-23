{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.xdg = {
    enable = true;
    mimeApps.enable = true;
    localBinInPath = true;
    portal.xdgOpenUsePortal = true;

    userDirs = {
      enable = true;
      createDirectories = true;
      setSessionVariables = false;
    };

    autostart.enable = true;

    terminal-exec = {
      enable = true;
      package = pkgs.kitty;
    };

  };
}
