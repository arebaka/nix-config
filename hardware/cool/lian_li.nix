{ config, lib, pkgs, inputs, ... }:

{
  hardware.uni-sync.enable = config.hardware.uni-sync.devices != [ ];

}
