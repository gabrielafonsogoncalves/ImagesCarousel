//
//  GARSSTableViewDataSource.m
//  PlayStationRSSFeed
//
//  Created by Gabriel Afonso on 1/29/15.
//  Copyright (c) 2015 ETC. All rights reserved.
//

#import "GAImageTableViewDataSource.h"
#import "GAImageTableViewCell.h"
#import "GARegularImage.h"
#import "GAImageService.h"

@implementation GAImageTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GAImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RSS-Cell"];
    
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"GAImageTableViewCell" bundle:nil] forCellReuseIdentifier:@"RSS-Cell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"RSS-Cell"];
    }
    GARegularImage *image = self.items[indexPath.row];
    cell.titleLabel.text = image.title;
    GAImageService *imageService = [[GAImageService alloc] init];
    [imageService loadImage:image.imageLink inImageView:cell.logoImageView];
    
    return cell;
}

@end
