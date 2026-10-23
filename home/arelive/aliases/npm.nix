{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.home.shellAliases = {
    npmi = "npm i";
    npmig = "npm i -g";
    npmiD = "npm i -D";
    npmI = "npm init";
    npml = "npm list";
    npmp = "npm publish";
    npmr = "npm run";
    npms = "npm start";
    npmt = "npm test";
    npmu = "npm update";
    npmv = "npm -v";

  };
}
