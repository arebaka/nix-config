{ config, lib, pkgs, inputs, options, ... }:

{
  hardware.ipu6.enable = options.hardware.ipu6.platform.isDefined;

}
