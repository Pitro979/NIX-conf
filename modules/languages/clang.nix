
{pkgs, ... }:

{ 
  environment.systemPackages = with pkgs; [
    libgcc
    libclang
    clib
  ];
}
