# Octave Control Operating

BRICKEA
2019/3/10

```octave

    for i = 1:10,
        orders;
    end;

    while i <= 8,
        orders;
    end;

    if i == 1,
        break;
    end;

    % Self-defined function. Save in a file path
    --------------------------------------
    function y = squareThisNumber(x)

    y = x^2;
    --------------------------------------

    % We can use our self-defined function by 
    % change the file path or use addpath('file 
    % path')