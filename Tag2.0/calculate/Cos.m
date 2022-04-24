% cos(x) = 1 - x^2 / 2! + x^4 / 4! + ��?

function Result= Cos(Input)
	Angle = pi * (Input / 180);	%����ת��Ϊ�ǎ�    
	Result = 0;  			
	Symbol = 1;			%����			
	Sub_Result = 1;				
	Denominator = 0;		%չ�����и�����k
	i=1;	
	
while abs(Sub_Result) >= 1e-6
    Result = Result + Sub_Result;			
    Symbol = -Symbol;
    Denominator = Denominator + 2;	
    Sub_Result = Symbol * Angle ^ Denominator / factorial(Denominator);
end

Result = roundn(Result,-2);


