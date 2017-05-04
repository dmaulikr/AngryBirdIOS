//
//  StartScene.m
//  AngryBirds
//
//  Created by xumeng on 17/5/4.
//  Copyright © 2017年 xumeng. All rights reserved.
//

#import "StartScene.h"

@implementation StartScene

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+(id)scene{
    CCScene* cs=[CCScene node];
    StartScene* sc=[StartScene node];
    [cs addChild:sc];
    return cs;
}

//we also can not to write it,because it has already implemented in libs
+(id)node{
    return [[[[self class]alloc]init]autorelease];
}


-(id) init{
    self=[super init];
    if(self){
        CGSize screenSize=[[CCDirector sharedDirector] winSize];
        CCSprite* background=[CCSprite spriteWithFile:@"startbg.png"];
        [background setPosition:ccp(screenSize.width/2.0f, screenSize.height/2)];
        [self addChild:background];
        
        CCSprite* ablogo=[CCSprite spriteWithFile:@"angrybird.png"];
        [ablogo setPosition:ccp(240.0f,250.0f)];
        [self addChild:ablogo];
        
        //add menu
        CCSprite *start=[CCSprite spriteWithFile:@"start.png"];
        //create a menuitem, add sprite in it, normal:start, select:nill
        //when click menuitem, call startGame: method in self
        CCMenuItemSprite *startMenu= [CCMenuItemSprite itemFromNormalSprite:start selectedSprite:nil target:self selector:@selector(startGame:)];
        
        CCMenu *menu=[CCMenu menuWithItems:startMenu, nil];
        [menu setPosition:ccp(240.0f, 130.0f)];
        [self addChild:menu];
    }
    return self;
}

-(void)startGame:(id) arg{
    NSLog(@"game begin!");
}

@end
