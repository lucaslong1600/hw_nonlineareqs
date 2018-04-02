%% nlonespring.m
clear all;

k=500;
g=9.8;

x=input('Enter initial guess [x0 y0] ');
x=x';
dx=[1 1];

iit=0;
while(  )
    iit=iit+1;
 
    % Calculate forces in the x and y directions
    Fx = ;
    Fy = ;

    % Calculate the partial derivatives



    
    % Calculate the Jacobian matrix
    J11 = ;
    J12 = ;
    J21 = ;
    J22 = ;
   
    F=[Fx;
       Fy];
    J=[J11 J12;
       J21 J22];
    
    % Optional matrix display for checks
    %disp(F)
    %disp(J)
    %pause

    % Update the position using the Jacobian matrix
    
    
    % Display things
    format shorte
    disp( );
    pause
    
end
