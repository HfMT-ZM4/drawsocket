
function makeSequence( synth, pattern, duration){
    return new Tone.Pattern(function(time, note){
        synth.triggerAttackRelease(note, duration);
    }, pattern);
}
