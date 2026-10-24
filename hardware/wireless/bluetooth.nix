{ config, lib, pkgs, inputs, hostname, ... }:

{
  hardware.bluetooth = {
    enable = true;

    settings = {
      General = {
        Name = hostname;
        DiscoverableTimeout = 0;
        FastConnectable = true;
        MultiProfile = "multiple";
        JustWorksRepairing = "always";
        Experimental = true;
        KernelExperimental = true;
      };

      BR = {
        PageScanType = 1;
        InquiryScanType = 1;
        InquiryScanInterval = "0x0800";
        LinkSupervisionTimeout = 2000;
      };

      LE = {
        MinAdvertisementInterval = 100;
        MaxAdvertisementInterval = 200;
        MultiAdvertisementRotationInterval = 30;
        MinConnectionInterval = 6;
        MaxConnectionInterval = 9;
        ConnectionSupervisionTimeout = 100;
      };

      GATT.Channels = 3;

    };

  };
}
