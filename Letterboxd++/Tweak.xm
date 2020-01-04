%hook GADAdSource
- (BOOL)invalidated {
    return 1;
}
%end

%hook ClassOne
- (id)tappedRemoveAdsButton {
	return NULL;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Letterboxd.AdView"));
};