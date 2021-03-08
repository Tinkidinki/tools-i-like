# Quantinf

`quantinf` is a library that contains very useful functions for quantum information processing in both MATLAB and R. 

It was written by Dr. Qubit, or Tony Cubitt, and can be obtained from [here](https://www.dr-qubit.org/matlab.html).

## Important Issue:
There is a function called `flip.m` in the library. This interferes with a MATLAB library function `flip.m`, and this interference somehow results in legends not showing up on plots in MATLAB. 

I have changed the function `flip.m` to `spin_flip.m`, and also all the corresponding calls to this function to the same name.
