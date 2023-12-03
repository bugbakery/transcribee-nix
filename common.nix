{fetchzip}:

{
  name = "transcribee";
  version = "0.0.1";
  source = fetchzip {
    url = "https://github.com/bugbakery/transcribee/archive/25a8fb2aaf6f3e587a8af58160b2a1d85f124768.tar.gz";
    hash = "sha256-j9A5zl0YabI6klh+sCBOySS/gYeZ0s8QF8EdMEgvk+I=";
  };
  frontendSrc = fetchzip {
    url = "https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-25a8fb2aaf6f3e587a8af58160b2a1d85f124768.tar.gz";
    hash = "sha256-G5bR/T9azyK0RspbxLHiHITWvn3tvSAy0u3eXMeh4Es=";
    stripRoot = false;
  };
}
