// This Tweak was unsuccessful and will not work unless somebody else changes it

%hook ClassOne
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (double)premiumExpires {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    return final;
}
- (void)setPremiumExpires:(double)arg1 {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    arg1 = final;
    %orig;
}
- (long long)level {
    return 1;
}
- (void)setLevel:(long long)arg1 {
    arg1 = 1;
    %orig;
}
- (void)verifyBase64Receipt:(id)arg1 restore:(BOOL)arg2 completion:(id)arg3 {
}
%end

%hook Utils
+ (BOOL)isUserPremium {
    return 1;
}
+ (BOOL)premiumExpired {
    return 0;
}
%end

%hook ClassTwo
+ (BOOL)isUserPremium {
    return 1;
}
+ (BOOL)premiumExpired {
    return 0;
}
%end

%hook ClassThree
- (NSDate *)expiresDate {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    return date;
}
- (void)setExpiresDate:(id)arg1 {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    arg1 = date;
    %orig;
}
- (long long)level {
    return 1;
}
- (void)setLevel:(long long)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GADAdSource
- (BOOL)invalidated {
    return 1;
}
%end

%hook ClassFour
- (BOOL)purchasedFromStore {
    return 1;
}
- (void)setPurchasedFromStore:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (BOOL)purchasedProductFromStore {
    return 1;
}
- (void)setPurchasedProductFromStore:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook ClassFive
- (BOOL)purchasedFromStore {
    return 1;
}
- (void)setPurchasedFromStore:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Truecaller.PurchaseManager"),ClassTwo = objc_getClass("TrueCore.Utils"),ClassThree = objc_getClass("Truecaller.PremiumStatus"),ClassFour = objc_getClass("Truecaller.PremiumCoordinator"),ClassFive= objc_getClass("Truecaller.StoreKitService"));
};