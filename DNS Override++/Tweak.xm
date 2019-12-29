%hook FeatureUnlockOperation
- (BOOL)featureUnlocked {
    return 1;
}
- (void)setFeatureUnlocked:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook FeatureManager
- (BOOL)isFeatureAlreadyUnlocked:(id)arg1 {
    return 1;
}
%end