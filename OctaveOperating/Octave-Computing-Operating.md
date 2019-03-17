# Octave Computational Operations

BRICKEA
2019/3/9

## Matrix Related

```octave

A * B       % Matrix-Matrix multiplication
A .* B      % A will multiply it by the corresponding elements B
A .^ number      % '.' means element-wise

```

---

```octave

log()       % base 2
exp()       % base e
abs()       % absolute value
```

---

```octave
[val,ind] = max(A)      %Or min(), you know

find( a<3 )     % Show all values that match the statement
[row,col] = find(A<0.5)

magic(n)        % Create a N-by-N matrix that is magic matrix, which means elements sum along all rows, columns, diagonals are same.

```

---

```octave

sum(,value)       % Sum up
prod(,value)      % Multiply up
floor(,value)     % Round down
ceil(,value)      % Round up

% when value equals to 1, means every columns
% when value equals to 2, means every rows

flipud(Matrix)      % Flip up and down

```