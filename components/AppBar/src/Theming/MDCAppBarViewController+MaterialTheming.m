// Copyright 2019-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MDCAppBarViewController+MaterialTheming.h"

@implementation MDCAppBarViewController (MaterialTheming)

- (void)applyPrimaryThemeWithScheme:(id<MDCContainerScheming>)containerScheme {
  self.headerView.backgroundColor = containerScheme.colorScheme.primaryColor;
  MDCShadowLayer *shadowLayer = [[MDCShadowLayer alloc] init];
  shadowLayer.elevation = MDCShadowElevationAppBar;
  self.headerView.shadowLayer = shadowLayer;
  self.navigationBar.leadingBarItemsTintColor = containerScheme.colorScheme.onPrimaryColor;
  self.navigationBar.trailingBarItemsTintColor = containerScheme.colorScheme.onPrimaryColor;
  self.navigationBar.allowAnyTitleFontSize = YES;
  self.navigationBar.titleFont = containerScheme.typographyScheme.headline6;
  self.navigationBar.titleTextColor = containerScheme.colorScheme.onPrimaryColor;
}

- (void)applySurfaceThemeWithScheme:(id<MDCContainerScheming>)containerScheme {
  self.headerView.backgroundColor = containerScheme.colorScheme.surfaceColor;
  self.headerView.shadowLayer = nil;  // No shadow
  self.navigationBar.leadingBarItemsTintColor = containerScheme.colorScheme.onSurfaceColor;
  self.navigationBar.trailingBarItemsTintColor =
      [containerScheme.colorScheme.onSurfaceColor colorWithAlphaComponent:(CGFloat)0.54];
  self.navigationBar.allowAnyTitleFontSize = YES;
  self.navigationBar.titleFont = containerScheme.typographyScheme.headline6;
  self.navigationBar.titleTextColor =
      [containerScheme.colorScheme.onSurfaceColor colorWithAlphaComponent:(CGFloat)0.87];
}

@end
