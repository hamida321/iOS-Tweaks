%hook ASVideoPlayerNode
- (BOOL)shouldAutoPlay {
    return 0;
} 
- (void)setShouldAutoPlay:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook ASVideoNode
- (BOOL)shouldAutoplay {
    return 0;
}
- (void)setShouldAutoplay:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook MPMoviePlayerControllerNew
- (BOOL)shouldAutoplay {
    return 0;
}
- (void)setShouldAutoplay:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook MPMoviePlayerController
- (BOOL)shouldAutoplay {
    return 0;
}
- (void)setShouldAutoplay:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook RKLink
- (BOOL)isSpoiler {
    return 0;
}
- (BOOL)isNSFW {
    return 0;
}
- (void)setNSFW:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end