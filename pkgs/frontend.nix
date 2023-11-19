{ pkgs
, stdenv
, fetchzip
}:
let
  common = import ../common.nix {
    fetchzip = fetchzip;
  };

in
stdenv.mkDerivation {
  pname = "${common.name}-frontend";
  version = common.version;

  src = common.frontendSrc;

  installPhase = ''
    cp -r $src/ $out/
  '';

}
