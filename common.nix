{fetchzip}:

{
  name = "transcribee";
  version = "0.0.1";
  source = fetchzip {
    url = "https://github.com/bugbakery/transcribee/archive/1909fcdf6d4d495f2f6b67b90bfbcdcdc1a1a5fb.tar.gz";
    hash = "sha256-5TTQp7/zMuyWqx/4Mfz9v/CtCXy/Li6ZkLDcUpNdpzs=";
  };
  frontendSrc = fetchzip {
    url = "https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-1909fcdf6d4d495f2f6b67b90bfbcdcdc1a1a5fb.tar.gz";
    hash = "sha256-b6N6GFFzaCsvS94Uf9+A7JdtM89bpEeddfbsRIoE6s8=";
    stripRoot = false;
  };
}
