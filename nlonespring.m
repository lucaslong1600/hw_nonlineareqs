%% nlonespring.m
clear all;

k=500;
g=9.8;

x=input('Enter initial guess [x0 y0] ');
dx=[1 1];

iit=0;
while(  )
    iit=iit+1;
    % Save current estimate for plotting
    xp(:,iit) = x(:); 
    
    % Calculate forces in the x and y directions
    Fx = ;
    Fy = ;

    % Calculate the partial derivatives



    
    % Calculate the Jacobian matrix
    J11 = ;
    J12 = ;
    J21 = ;
    J22 = ;
   
    F=[Fx Fy];
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

%% * Plot the iterations from initial guess to final estimate
figure(1); clf;  % Clear figure 1 window and bring forward
plot(xp(1,:),xp(2,:),'o-',x(1),x(2),'*');
grid; drawnow;
