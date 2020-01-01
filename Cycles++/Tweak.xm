%hook ClassOne
- (BOOL)hasFeature:(long long)arg1 {
    return 1;
}
- (BOOL)isPremiumMember {
    return 1;
}
- (BOOL)isProUser {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Cycles.SubscriptionPurchaseLog"));
};