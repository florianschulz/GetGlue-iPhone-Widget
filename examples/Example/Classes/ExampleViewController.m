/*
 Copyright 2010 AdaptiveBlue Inc.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
*/

#import "ExampleViewController.h"

@implementation ExampleViewController

@synthesize gg;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	gg.objectKey = @"tv_shows/weeds";
    
	GetGlueWidgetView* gg2 = [[[GetGlueWidgetView alloc] initWithFrame:CGRectMake(20, 110, 64, 74)] autorelease];
	gg2.source = @"http://www.hbo.com/true-blood/"; // When setting a custom source, always set it before objectKey
	gg2.objectKey = @"tv_shows/true_blood"; // Setting objectKey will start the webview loading
    gg2.theme = [NSDictionary dictionaryWithObjectsAndKeys: 
                 @"#333333", @"windowBgColor",
                 @"dark", @"logoStyle",
                 @"http://getglue.com/glue/webroot/img/resources/downloads/logo_mark_blue.png",@"loginImage",
                 @"#1c1c1c",@"loginBgColor",
                 @"#fefefe",@"linkColor",
                 @"#555",@"borderColor",
                 @"#222",@"bodyBgColor",
                 @"#232323",@"headerBgColor",
                 @"#fefefe",@"headerTextColor",
                 @"#131313",@"headerTextShadowColor",
                 @"#8e8e8e",@"formBgColor",
    nil];
	[self.view addSubview:gg2];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
    [super dealloc];
}

@end
