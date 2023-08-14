//
//  OldZipArchive.h
//  OldZipArchive
//
//  Created by Serhii Mumriak on 12/1/15.
//

#import <Foundation/Foundation.h>

//! Project version number for ZipArchive.
FOUNDATION_EXPORT double OldZipArchiveVersionNumber;

//! Project version string for ZipArchive.
FOUNDATION_EXPORT const unsigned char OldZipArchiveVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <SSZipArchive.h>

// This is to account for the many different ways this library gets imported.
#if __has_include(<SSOldZipArchive/SSOldZipArchive.h>)
#import <SSOldZipArchive/SSOldZipArchive.h>
#elif __has_include("../SSOldZipArchive.h")
#import "../SSOldZipArchive.h"
#else
#import "SSOldZipArchive.h"
#endif
