//
//  PuppyImage.h
//  TLInstaKilo
//
//  Created by Taylor Ledingham on 2014-10-23.
//  Copyright (c) 2014 Taylor Ledingham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PuppyImage : NSObject

@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *locationTaken;
@property (nonatomic, strong) UIImageView *photoView;

- (instancetype)init;

@end
