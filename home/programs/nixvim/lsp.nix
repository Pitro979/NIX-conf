{
  plugins.lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
      cland.enable = true;
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gD" = "references";
      "gt" = "type_definition",
      "gi" = "implementations";
      "K" = "hover";
    };
  };
  plugins.rust-tools.enable = true;
}
