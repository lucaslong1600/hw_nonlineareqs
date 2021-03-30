%% nlonespring.m
clear all;

k=500;
g=9.8;
m = 5;
L0 = 1;

x = input('Enter initial guess [x0 y0] ');
dx=[1 1];

iit=0;
while( or (dx > 10^(-6) , iit < 10) )
    iit=iit+1;
    % Save current estimate for plotting
    xp(:,iit) = x(:); 
    
    % Calculate forces in the x and y directions
    L = sqrt( x(1)*x(1) + x(2)*x(2) ); 
    Fx = (-k*(L-L0))*(x(1)/L)+(7.5*x(2)*x(2));
    Fy = (-k*(L-L0))*(x(2)/L)-m*g;

    % Calculate the partial derivatives



    
    % Calculate the Jacobian matrix
    J11 = -((2*k * x(1)^2)/(x(1)^2 + x(2)^2)) + (2*k * x(1)^2 * (-1 + sqrt (x(1)^2 + x(2)^2)))/(sqrt (x(1)^2 + x(2)^2)^2) - (k * (-1 + sqrt (x(1)^2 + x(2)^2)))/(sqrt (x(1)^2 + x(2)^2));
    J12 = -((2*k * x(1) * x(2))/(x(1)^2 + x(2)^2)) + (2*k * x(1) * x(2) * (-1 + sqrt (x(1)^2 + x(2)^2)))/(sqrt(x(1)^2 + x(2)^2)^2);
    J21 = -((2*k * x(1) * x(2))/(x(1)^2 + x(2)^2)) + (2*k * x(1) * x(2) * (-1 + sqrt (x(1)^2 + x(2)^2)))/(sqrt (x(1)^2 + x(2)^2)^2);
    J22 = -((2*k * x(2)^2)/(x(1)^2 + x(2)^2)) + (2*k * x(2)^2 * (-1 + sqrt (x(1)^2 + x(2)^2)))/(sqrt (x(1)^2 + x(2)^2)^2) - (k * (-1 + sqrt (x(1)^2 + x(2)^2)))/(sqrt (x(1)^2 + x(2)^2));
   
    F=[Fx Fy];
    J=[J11 J12;
       J21 J22];
    
    % Optional matrix display for checks
    %disp(F)
    %disp(J)
    %pause

    % Update the position using the Jacobian matrix
    dx = F/J;
    x = x - dx;
    
    
    % Display things
    format shorte
    disp(x);
    disp(norm(dx));
    pause(.1)
end

%% * Plot the iterations from initial guess to final estimate
figure(1); clf;  % Clear figure 1 window and bring forward
plot(xp(1,:),xp(2,:),'o-',x(1),x(2),'*');
grid; drawnow;
