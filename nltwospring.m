%% nltwospring.m
k1=100; 
k2=150; 
m=5; 
g=9.8;
L0=1;
 
x=input('Enter initial guess [x0 y0] '); 
dx=[1 1];

iit=0;
eps=1e-8;

while(    )
    iit=iit+1;
    % Save current estimate for plotting
    xp(:,iit) = x(:); 
    
    % Use a function to calculate the force (go edit this)
    F=fspring(k1,k2,m,g,L0,x);    

    % Move x and y by tiny amounts epsilon and recalculate force
    xplus=[x(1)+eps x(2)];
    Fxplus=fspring(k1,k2,m,g,L0,xplus);

    yplus=[x(1) x(2)+eps];
    Fyplus=fspring(k1,k2,m,g,L0,yplus);

    % Use numerical derivatives (delta-F/delta-x) to find the Jacobian elements
    J11 = ;
    J21 = ;
    J12 = ;
    J22 = ;
   
    J=[J11 J12;
       J21 J22];
    
    % Update the position using the Jacobian matrix
    


    % Display things
    format shorte
    disp(  );
    pause
    
end

%% * Plot the iterations from initial guess to final estimate
figure(1); clf;  % Clear figure 1 window and bring forward
plot(xp(1,:),xp(2,:),'o-',x(1),x(2),'*');
grid; drawnow;
