//
//  BFUtils.m
//  
//
//  Created by Ulaş Sancak on 8.11.2022.
//

#import "BFUtils.h"

@implementation BFUtils

+ (NSBundle *)packageBundle {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Bolts_Bolts" ofType: @"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    if (bundle) {
        return bundle;
    }
    return NSBundle.mainBundle;
}

@end
