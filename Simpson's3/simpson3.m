function I = simpson3_f ( f )
f = @(x) 2 + cos (2*sqrt(2)) 
% for calculating integrals using Simpson's 1/3 rule when function is known
 
%asking for the range and desired accuracy
 
 R= input( 'Enter the limits of integrations [ x_min, x_max]   :\n');
 tol = input('Error allowed in the final answer: \n');
 a= R(1,1); b = R(1,2);
 %intial h and n
 n = 100;
 h = (b -a)/100;
%for calculating maximum of f''''(x) in the given region
 
 for k = 0:100
        x( 1, k+1 ) = a +  k*h ;
        y4( 1, k+1) =    feval ( f, x(1,k+1) + 4*h ) - 4*feval( f, x(1,k+1) + 3*h )...
                                + 6*feval( f, x(k+1) + 2*h ) - 4* feval ( f, x(1,k+1) + h ) ...
                                + feval( f, x(k+1) );% fourth order difference
 end 
 [ y i ] =  max( y4);
 x_opt = x(1,i);
 
 % for calculating the desired value of h
 m=0;
 ddf = feval ( f, x_opt + 4*h ) - 4*feval( f, x_opt + 3*h )...
        + 6*feval( f, x_opt + 2*h ) - 4* feval ( f, x_opt + h ) ...
        + feval( f, x_opt ); % fourth order difference
    % ddf defined outside bracket just for convenience
 while ddf * ( b -a )/180 > tol % error for Simpson's 1/3  rule
                m = m +1;
                h = h*10^-m;
                 ddf = feval ( f, x_opt + 4*h ) - 4*feval( f, x_opt + 3*h )...
                           + 6*feval( f, x_opt + 2*h ) - 4* feval ( f, x_opt + h ) ...
                           + feval( f, x_opt );% defined here for looping
 end
 
 %calculating  n
 n = ceil(  (b-a)/h );
 if rem( n,2) == 0 
     n = n+1;
 end
 h = ( b-a )/n;
% calculating matrix X
 
 for k = 1:(n+1)
    X(k,1) = a + (k-1)*h;
    X(k,2) =feval ( f, X(k,1));
 end
%calculating integration
 
i= 1; I1 = 0; 
while ( 2*i ) < (n+1)
    I1 =  I1 + X ( ( 2*i) , 2 );
    i = i +1;
end
j=1; I2 =0;
while (2*j + 1) < (n+1)
    I2 = I2 + X ( ( 2*j + 1)  , 2);
    j = j + 1;
end
I = h/3 * (  X( 1,2) +  4*I1  +  2*I2 +  X(n,2)  );% Simpson's 1/3 rule
% Display final result
 
h
n
disp(sprintf(' Using this integration for the given function in the range ( %10f , %10f )  is %10.6f .',a,b,I))