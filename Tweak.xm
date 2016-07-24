#include <substrate.h>

int donothing(int arg0, int arg1, int arg2, int arg3) {
  HBLogDebug(@"Stubbing TIFF init");
  return 0;
}

%ctor {
  HBLogDebug(@"Disabling TIFF loading");
  MSHookFunction(MSFindSymbol(NULL, "_initImageTIFF"), (void*)&donothing);
}
