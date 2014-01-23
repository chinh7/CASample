//
//  ViewController.m
//  AUCallback
//
//  Edited by Chinh Nguyen on 11/05/13.
//  Copyright (c) 2013 Chinh Nguyen. All rights reserved.
//

#import "ViewController.h"
#import "AudioController.h"
#import "SVETimer.h"
@interface ViewController (){
    
}
@property (strong, nonatomic) AudioController *audioController;
@property (weak, nonatomic) IBOutlet UISwitch *passingThroughSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *speakerSwitch;
@property (strong, nonatomic) AVAudioPlayer* player;
@property (weak, nonatomic) IBOutlet UISlider *outVolumeSlider;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.audioController = [[AudioController alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
// Dispose of any resources that can be recreated.
}
- (IBAction)togglePassingThrough:(id)sender {
    if(self.passingThroughSwitch.on){
        [self.audioController start];
    } else{
        [self.audioController stop];
    }
}
- (IBAction)toggleSpeaker:(id)sender {
    [self.audioController setSpeakerOn:self.speakerSwitch.on];
}
- (IBAction)play:(id)sender {
    NSArray *urls = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    NSURL *url = [urls[0] URLByAppendingPathComponent:@"audio.caf"];
    NSError *error = nil;
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    [self.player play];
}
- (IBAction)volumeChanged:(id)sender {
    [self.audioController setOutputVolume:[self.outVolumeSlider value]];
}

@end
