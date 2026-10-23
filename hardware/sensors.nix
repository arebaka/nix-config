{ config, lib, pkgs, inputs, ... }:

{
  hardware.sensor = {
    iio.enable = true;

  };
}
