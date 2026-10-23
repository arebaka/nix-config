{ config, lib, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    btrfs-progs
    exfat
    ntfs3g
    xfsprogs
    f2fs-tools
    nfs-utils
    cifs-utils

  ];
}
