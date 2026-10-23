{ config, lib, pkgs, inputs, ... }:

{
  hardware = {
    hid-fanatecff.enable = true;
    new-lg4ff.enable = true;

  };
}
