//
//  AudioController.h
//  AUCallback
//
//  Created by Chinh Nguyen on 11/15/13.
//  Copyright (c) 2013 Chinh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "FrameQueue.h"

typedef NS_ENUM(NSInteger, SVEAudioSessionPort) {
    SVEAudioSessionPortBluetooth,
    SVEAudioSessionPortSpeaker,
    SVEAudioSessionPortReceiver,
};
@interface AudioController : NSObject
-(void) stop;
-(void) start;
-(int) readSamples:(sample_t*) buffer length:(int) length;
-(int) writeSamples:(sample_t*) buffer length:(int) length;
-(int) setOutputVolume:(float) volume;
-(BOOL) setAudioPort:(SVEAudioSessionPort)port;
-(int) getConsumedChunk;
@end

