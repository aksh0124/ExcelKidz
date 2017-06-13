//
//  ParentTeacherEvaluation.h
//  SchoolManagement
//
//  Created by asc3 on 28/03/17.
//  Copyright © 2017 asc6. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ParentTeacherEvaluation;

@protocol ParentTeacherEvaluationDelegate
- (void)rateView:(ParentTeacherEvaluation *)rateView ratingDidChange:(float)rating;
@end

@interface ParentTeacherEvaluation : UIView

@property (strong, nonatomic) UIImage *notSelectedImage;
@property (strong, nonatomic) UIImage *halfSelectedImage;
@property (strong, nonatomic) UIImage *fullSelectedImage;
@property (assign, nonatomic) float rating;
@property (assign) BOOL editable;
@property (strong) NSMutableArray * imageViews;
@property (assign, nonatomic) int maxRating;
@property (assign) int midMargin;
@property (assign) int leftMargin;
@property (assign) CGSize minImageSize;
@property (assign) id <ParentTeacherEvaluationDelegate> delegate;
@property (strong, nonatomic) IBOutlet ParentTeacherEvaluation *rateView;
@property (strong, nonatomic) IBOutlet UILabel *statuslb;

@end
