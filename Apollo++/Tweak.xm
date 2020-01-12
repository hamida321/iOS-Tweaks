%hook ASVideoPlayerNode
- (bool)shouldAutoPlay {
    return 0;
} 
- (void)setShouldAutoPlay:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook ASVideoNode
- (bool)shouldAutoplay {
    return 0;
}
- (void)setShouldAutoplay:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook MPMoviePlayerControllerNew
- (bool)shouldAutoplay {
    return 0;
}
- (void)setShouldAutoplay:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook MPMoviePlayerController
- (bool)shouldAutoplay {
    return 0;
}
- (void)setShouldAutoplay:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook RKLink
- (bool)isSpoiler {
    return 0;
}
- (bool)isNSFW {
    return 0;
}
- (void)setNSFW:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end