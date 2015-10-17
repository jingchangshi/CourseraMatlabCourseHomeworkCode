function [ FinalScore ] = bowl( PinsSequence )

PinsSequenceLengthMax = uint8(2 * 10 + 1); % Max possible length is 22

if length(PinsSequence) > PinsSequenceLengthMax % input sequence length is greater than 22! It's invalid.
    FinalScore = -1;
elseif nnz(PinsSequence > 10) || nnz(PinsSequence < 0)
    FinalScore = -1;
else
    % construct a complete hits sequence
    IndFrame = 1;
    FrameSequence = zeros(1, 10);
    IndHit = 1;
    HitsSequence = zeros(1, PinsSequenceLengthMax);
    IndPin = 1;
    FinalScore = 0;
    while IndFrame < 10
        if PinsSequence(IndPin) == 10 % a 'strike' in this frame
            FrameSequence(IndFrame) = 2; % 2 is 'strike'
            FinalScore = FinalScore + 10 + PinsSequence(IndPin+1) + PinsSequence(IndPin+2);
            IndFrame = IndFrame + 1;
            HitsSequence(IndHit) = 10;
            HitsSequence(IndHit+1) = -1;
            IndHit = IndHit + 2;
            IndPin = IndPin + 1;
        elseif PinsSequence(IndPin) + PinsSequence(IndPin+1) == 10 % a 'spare' in this frame
            FrameSequence(IndFrame) = 1; % 1 is 'spare'
            FinalScore = FinalScore + 10 + PinsSequence(IndPin+2);
            IndFrame = IndFrame + 1;
            HitsSequence(IndHit) = PinsSequence(IndPin);
            HitsSequence(IndHit+1) = PinsSequence(IndPin+1);
            IndHit = IndHit + 2;
            IndPin = IndPin + 2;
        elseif PinsSequence(IndPin) + PinsSequence(IndPin+1) < 10 % an 'open' in this frame
            FrameSequence(IndFrame) = 0; % 0 is 'open'
            FinalScore = FinalScore + PinsSequence(IndPin) + PinsSequence(IndPin+1);
            IndFrame = IndFrame + 1;
            HitsSequence(IndHit) = PinsSequence(IndPin);
            HitsSequence(IndHit+1) = PinsSequence(IndPin+1);
            IndHit = IndHit + 2;
            IndPin = IndPin + 2;
        else
            FinalScore = -1;
            break;
        end
    end
% At this moment, IndFrame should be 10.
% Check the length of PinsSequence is valid.
    if FinalScore ~= -1
        if length(PinsSequence) == IndPin + 2
            if PinsSequence(IndPin) == 10 % a 'strike' in frame 10
                FrameSequence(IndFrame) = 2; % 2 is 'strike'
                FinalScore = FinalScore + 10 + PinsSequence(IndPin+1) + PinsSequence(IndPin+2);
                HitsSequence(IndHit) = 10;
                HitsSequence(IndHit+1) = PinsSequence(IndPin+1);
                HitsSequence(IndHit+2) = PinsSequence(IndPin+2);
            elseif PinsSequence(IndPin) + PinsSequence(IndPin+1) == 10 % a 'spare' in this frame
                FrameSequence(IndFrame) = 1; % 1 is 'spare'
                FinalScore = FinalScore + 10 + PinsSequence(IndPin+2);
                HitsSequence(IndHit) = PinsSequence(IndPin);
                HitsSequence(IndHit+1) = PinsSequence(IndPin+1);
                HitsSequence(IndHit+2) = PinsSequence(IndPin+2);
            else
                FinalScore = -1;
            end
        elseif length(PinsSequence) == IndPin + 1
            if PinsSequence(IndPin) ~= 10 && PinsSequence(IndPin) + PinsSequence(IndPin+1) ~= 10 % an 'open' in this frame
                FrameSequence(IndFrame) = 0; % 0 is 'open'
                FinalScore = FinalScore + PinsSequence(IndPin) + PinsSequence(IndPin+1);
                HitsSequence(IndHit) = PinsSequence(IndPin);
                HitsSequence(IndHit+1) = PinsSequence(IndPin+1);
            else
                FinalScore = -1;
            end
        else
            FinalScore = -1;
        end
    end

end

end
