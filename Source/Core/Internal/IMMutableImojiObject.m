//
//  ImojiSDK
//
//  Created by Nima Khoshini
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

#import "IMMutableImojiObject.h"

@interface IMMutableImojiObject ()
@end

@implementation IMMutableImojiObject {

}
- (instancetype)initWWithIdentifier:(NSString *_Nonnull)identifier
                               tags:(NSArray *_Nonnull)tags
                       thumbnailURL:(NSURL *_Nullable)thumbnailURL
                            fullURL:(NSURL *_Nullable)fullURL
                            allUrls:(NSDictionary *_Nonnull)allUrls
                             format:(IMPhotoImageFormat)format {
    self = [super init];
    if (self) {
        _fullURL = fullURL;
        _thumbnailURL = thumbnailURL;
        _imageFormat = format;
        _identifier = identifier;
        _urls = allUrls;
        _tags = tags;
    }

    return self;
}

- (NSString *)identifier {
    return _identifier;
}

- (NSArray *)tags {
    return _tags;
}

- (NSDictionary *)urls {
    return _urls;
}

+ (instancetype)imojiWithIdentifier:(NSString *_Nonnull)identifier
                               tags:(NSArray *_Nonnull)tags
                       thumbnailURL:(NSURL *_Nullable)thumbnailURL
                            fullURL:(NSURL *_Nullable)fullURL
                            allUrls:(NSDictionary *_Nonnull)allUrls
                             format:(IMPhotoImageFormat)format {
    return [[IMMutableImojiObject alloc] initWWithIdentifier:identifier
                                                        tags:tags
                                                thumbnailURL:thumbnailURL
                                                     fullURL:fullURL
                                                     allUrls:allUrls
                                                      format:format];
}

@end
