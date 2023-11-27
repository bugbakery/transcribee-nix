{fetchzip}:

{
  name = "transcribee";
  version = "0.0.1";
  source = fetchzip {
    url = "https://github.com/bugbakery/transcribee/archive/5270089c7678c5dc04f0b0e9e3edaa32c1a8342e.tar.gz";
    hash = "sha256-SbEbbMfv2q0dh62Ddgw4aisBi6q4rBery0I0EFfYUbs=";
  };
  frontendSrc = fetchzip {
    url = "https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-5270089c7678c5dc04f0b0e9e3edaa32c1a8342e.tar.gz";
    hash = "sha256-5SrbbL8T0CWmKsnJKuaA4fqIpP72hIBsMywwFPwp1jQ=";
    stripRoot = false;
  };
}
