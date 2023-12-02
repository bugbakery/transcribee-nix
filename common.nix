{fetchzip}:

{
  name = "transcribee";
  version = "0.0.1";
  source = fetchzip {
    url = "https://github.com/bugbakery/transcribee/archive/c81003d82b42704fdcb5705ab2cd02683dc2f161.tar.gz";
    hash = "sha256-gUF3CdtumBgpvLVgxbMkBORflNM8gfuNEBv3vqgusyU=";
  };
  frontendSrc = fetchzip {
    url = "https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-c81003d82b42704fdcb5705ab2cd02683dc2f161.tar.gz";
    hash = "sha256-om3ehHHKedEchenNE6ACDUHvhGTw65U8U144VphIArk=";
    stripRoot = false;
  };
}
