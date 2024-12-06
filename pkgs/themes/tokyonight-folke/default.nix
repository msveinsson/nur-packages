{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation rec {
  pname = "tokyonight-folke";
  version = "4.10.0";

  src = fetchFromGitHub {
    owner = "folke";
    repo = "tokyonight.nvim";
    rev = "v${version}";
    hash = "sha256-vKXlFHzga9DihzDn+v+j3pMNDfvhYHcCT8GpPs0Uxgg=";
  };

  installPhase = ''
    runHook preInstall
    mkdir -p $out
    cp -r * $out
    runHook postInstall
  '';

  meta = {
    description = "A clean, dark Neovim theme written in Lua, with support for lsp, treesitter and lots of plugins. Includes additional themes for Kitty, Alacritty, iTerm and Fish";
    homepage = "https://github.com/folke/tokyonight.nvim";
    changelog = "https://github.com/folke/tokyonight.nvim/blob/${src.rev}/CHANGELOG.md";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "tokyonight.nvim";
    platforms = lib.platforms.all;
  };
}
