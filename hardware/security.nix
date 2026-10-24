{ config, lib, pkgs, inputs, ... }:

{
  hardware = {
    gpgSmartcards.enable = true;
    nitrokey.enable = true;
    onlykey.enable = true;
    ledger.enable = true;

  };
}
