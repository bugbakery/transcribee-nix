{fetchzip}:

{
  name = "transcribee";
  version = "0.0.1";
  source = fetchzip {
    url = "https://github.com/bugbakery/transcribee/archive/e406b9f81c349b458eb66bf092ef524a5d7f9729.tar.gz";
    hash = "sha256-uElj0Q91lIkduBkZu3U9xceXQ94eXWxl+Qo4ZbHMyT4=";
  };
  frontendSrc = fetchzip {
    url = "https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-e406b9f81c349b458eb66bf092ef524a5d7f9729.tar.gz";
    hash = "sha256-d9igCSP1izeV4ATyeva2bO4HsQoNKxq5ZLS9EPofvPM=";
    stripRoot = false;
  };
}
