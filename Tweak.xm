#include <substrate.h>

void donothing() {
  HBLogDebug(@"Stubbing TIFF init");
}

%ctor {
  HBLogDebug(@"Disabling TIFF loading");
  MSHookFunction(MSFindSymbol(NULL, "_initImageTIFF"), (void*)&donothing);
}
