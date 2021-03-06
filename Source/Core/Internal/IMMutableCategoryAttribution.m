//
//  ImojiSDK
//
//  Created by Alex Hoang
//  Copyright (C) 2015 Imoji
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to
//  deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//

#import "IMMutableCategoryAttribution.h"

@implementation IMMutableCategoryAttribution

- (instancetype)initWWithIdentifier:(NSString *)identifier
                             artist:(IMArtist *)artist
                                URL:(NSURL *)URL
                        urlCategory:(IMAttributionURLCategory)urlCategory
                        relatedTags:(NSArray *)relatedTags
                       licenseStyle:(IMImojiObjectLicenseStyle)licenseStyle {
    self = [super init];
    if (self) {
        _identifier = identifier;
        _artist = artist;
        _URL = URL;
        _urlCategory = urlCategory;
        _relatedTags = relatedTags;
        _licenseStyle = licenseStyle;
    }

    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _identifier = [coder decodeObjectForKey:@"identifier"];
        _artist = [coder decodeObjectForKey:@"artist"];
        _URL = [coder decodeObjectForKey:@"URL"];
        _urlCategory = (IMAttributionURLCategory) [coder decodeIntForKey:@"urlCategory"];
        _relatedTags = [coder decodeObjectForKey:@"relatedTags"];
        _licenseStyle = (IMImojiObjectLicenseStyle) [coder decodeIntForKey:@"licenseStyle"];
    }

    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:_identifier forKey:@"identifier"];
    [coder encodeObject:_artist forKey:@"artist"];
    [coder encodeObject:_URL forKey:@"URL"];
    [coder encodeInt:_urlCategory forKey:@"urlCategory"];
    [coder encodeObject:_relatedTags forKey:@"relatedTags"];
    [coder encodeInt:_licenseStyle forKey:@"licenseStyle"];
}

- (NSString *)identifier {
    return _identifier;
}

- (IMArtist *)artist {
    return _artist;
}

- (NSURL *)URL {
    return _URL;
}

- (IMAttributionURLCategory)urlCategory {
    return _urlCategory;
}

- (NSArray *)relatedTags {
    return _relatedTags;
}

- (IMImojiObjectLicenseStyle)licenseStyle {
    return _licenseStyle;
}

+ (instancetype)attributionWithIdentifier:(NSString *)identifier
                                   artist:(IMArtist *)artist
                                      URL:(NSURL *)URL
                              urlCategory:(IMAttributionURLCategory)urlCategory
                              relatedTags:(NSArray *)relatedTags
                             licenseStyle:(IMImojiObjectLicenseStyle)licenseStyle {
    return [[IMMutableCategoryAttribution alloc] initWWithIdentifier:identifier
                                                              artist:artist
                                                                 URL:URL
                                                         urlCategory:urlCategory
                                                         relatedTags:relatedTags
                                                        licenseStyle:licenseStyle];
}

@end
