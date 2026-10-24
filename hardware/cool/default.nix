{ config, lib, pkgs, inputs, options, ... }:

{
  hardware.fancontrol.enable = options.hardware.fancontrol.config.isDefined;

}
