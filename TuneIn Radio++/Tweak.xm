%hook TIStoreManager
- (void)setPlatformSubscriptionStatus:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (BOOL)platformSubscriptionStatus {
    return 1;
}
- (BOOL)userHasPlatformMonthlySubscription {
    return 1;
}
- (NSDate *)subscriptionExpirationDate {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    return date;
}
- (void)setSubscriptionExpirationDate:(id)arg1 {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    arg1 = date;
    %orig;
}
- (NSDate *)subscriptionPurchaseDate {
    NSString *dateStr = @"10-10-2019";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    return date;
}
- (void)setSubscriptionPurchaseDate:(id)arg1 {
    NSString *dateStr = @"10-10-2019";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    arg1 = date;
    %orig;
}
%end

%hook TIGuideItem
- (BOOL)isPremium {
    return 1;
}
%end

%hook TIUser
- (BOOL)hasSubscription {
    return 1;
}
%end

%hook TIUserInfo
- (BOOL)isSubscribed {
    return 1;
}
%end