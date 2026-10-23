{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.home.shellAliases = {
    ls = "eza";
    l = "ls";
    la = "l -a";
    lA = "l -A";
    lf = "l -f";
    lD = "l -D";

    l1 = "l -1";
    l1a = "l1 -a";
    l1A = "l1 -A";
    l1f = "l1 -f";
    l1D = "l1 -D";
    l1s = "l1 -s";
    l1as = "l1a -s";
    l1As = "l1A -s";
    l1fs = "l1f -s";
    l1Ds = "l1D -s";
    l1m = "l1 -m";
    l1am = "l1m -a";
    l1Am = "l1m -A";
    l1fm = "l1m -f";
    l1Dm = "l1m -D";

    ll = "l -l";
    lla = "ll -a";
    llA = "ll -A";
    llf = "ll -f";
    llD = "ll -D";
    lls = "ll -s";
    llas = "lla -s";
    llAs = "llA -s";
    llfs = "llf -s";
    llDs = "llD -s";
    llm = "ll -m";
    llam = "llm -a";
    llAm = "llm -A";
    llfm = "llm -f";
    llDm = "llm -D";

    lt = "l -T";
    lta = "lt -a";
    ltA = "lt -A";
    ltD = "lt -D";

  };
}
