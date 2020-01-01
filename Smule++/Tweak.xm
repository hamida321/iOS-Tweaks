%hook ProfileViewController
- (BOOL)isVipOrHasAccess {
    return 1;
}
%end

%hook ProfileThemeController
- (BOOL)hasVIPAccessRights {
    return 1;
}
- (BOOL)isVIPOrPreviewing {
    return 1;
}
%end

%hook MagicGuestPassManager
- (BOOL)hasAccessToFeature {
    return 1;
}
%end

%hook PerformanceUploadState
- (void)updateCurrentAudioEffect:(id)arg1 effectVersion:(long long)arg2 isVIP:(BOOL)arg3 {
    arg3 = 1;
    %orig;
}
%end

%hook Effect
- (BOOL)isVIP {
    return 1;
}
- (void)setVip:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end