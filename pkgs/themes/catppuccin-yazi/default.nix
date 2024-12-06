{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation rec {
  pname = "catppuccin-yazi";
  version = "unstable-2024-10-26";

  src = fetchFromGitHub {
    owner = "catppuccin";
    repo = "yazi";
    rev = "54d868433a0c2f3e1651114136ea088eef72a4a7";
    hash = "sha256-dMXSXS3Scj1LZZqqnvvC37VWSyjSQZg9thvjcm2iNSM=";
  };

  meta = {
    description = "Soothing pastel theme for Yazi";
    homepage = "https://github.com/catppuccin/yazi";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "catppuccin-yazi";
    platforms = lib.platforms.all;
  };
}
