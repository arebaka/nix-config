{ config, lib, pkgs, inputs, ... }:

{
  hardware.amdgpu = {
    initrd.enable = true;
    opencl.enable = true;
    zluda.enable = true;

  };
}
