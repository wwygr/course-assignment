% cos(x) = 1 - x^2 / 2! + x^4 / 4! + …?

function Result= Cos(Input)
	Angle = pi * (Input / 180);	%输入转换为角庿    
	Result = 0;  			
	Symbol = 1;			%符号			
	Sub_Result = 1;				
	Denominator = 0;		%展开项中各项皿k
	i=1;	
	
while abs(Sub_Result) >= 1e-6
    Result = Result + Sub_Result;			
    Symbol = -Symbol;
    Denominator = Denominator + 2;	
    Sub_Result = Symbol * Angle ^ Denominator / factorial(Denominator);
end

Result = roundn(Result,-2);


