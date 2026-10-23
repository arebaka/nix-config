{ config, lib, pkgs, inputs, ... }:

{
  hardware = {
    infiniband.enable = true;
    sheep_net.enable = true;
  };

}
