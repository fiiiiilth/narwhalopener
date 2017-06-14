#import "NarwhalOpenerHandler.h"

@implementation NarwhalOpenerHandler

- (instancetype)init {
	self = [super init];

	if (self) {
		self.name = @"NarwhalOpener";
		self.identifier = @"com.fiiiiilth.narwhalopenerhandler";
	}

	return self;
}

- (id)openURL:(NSURL *)url sender:(NSString *)sender {

	if (([url.host isEqualToString:@"reddit.com"]) || [url.host hasSuffix:@".reddit.com"]) {
				return @[
						[NSURL URLWithString:[NSString stringWithFormat:@"narwhal://open-url/%@", url.absoluteString]]];
        }
    return nil;
}

@end