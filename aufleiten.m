function [calculatedVar] = aufleiten(h,punkte,functionIndex,categoryArray,index,MatrixB)

switch functionIndex
    case 0
        syms b positive
        equation = 3*((2*MatrixB(index+1)-2*b)/(6*h))*(h)^2+2*b*(h)+((punkte(index+1)-punkte(index))/h)-((2*MatrixB(index+1)-2*b)/(6*h))*(h)^2-b*h == categoryArray(index);
        b = double(solve(equation,b));
        a = (2*b-2*b)/(6*h);
        c = ((punkte(index+1)-punkte(index))/h)-a*(h)^2-b*h;
        calculatedVar = [a b c];

    case 1
       syms b positive
       disp(MatrixB);
       equation = 6*(((2*MatrixB(index + 1)-2*b)/(6*h)))+2*b == categoryArray(index);
       b = double(solve(equation,b));
       a = (2*MatrixB(index+1)-2*b)/(6*h);
       calculatedVar = [a b];
       disp(calculatedVar)
    case 2
        a = categoryArray(index)/6;
        calculatedVar = a;
    
end

end