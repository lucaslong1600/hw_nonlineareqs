# hw_nonlineareqs
Nonlinear equations, Garcia Section 4.3

<div>
  
*   [Problem 1 (in-class)](#2)
*   [Problem 2 (in-class)](#3)
*   [Problem 3 (homework)](#4)
*   [Problem 4 (homework)](#5)

</div>

## Problem 1 (in-class)<a name="2"></a>
Write a short <tt>MATLAB</tt> program to find the three roots of this single-variable nonlinear equation. Prompt the user for an initial guess.  Can you find all 3 roots?

<img src="NLeq1.PNG" width="250">

## Problem 2 (in-class)<a name="3"></a>
Write a short program to find the steady-state solutions to the Lorenz atmospheric model.

<img src="NLeq2.PNG" height="100">

 *  Define the Jacobian matrix
 *  Use the following initial guesses: (50,50,50), (2,2,2), (5,5,5), (4,4,15)
 *  Set the program to run for 10 iterations.

## Problem 3 (homework)<a name="4"></a>
A spring with constant *k* = 500 N/m is attached at the origin and supports a mass *m* = 5 kg as shown in the image below. The spring has a natural (unstretched) length of *L*,sub>0</sub> = 1.00 m. The mass experiences three forces:
 * Spring force: *F*<sub>S</sub> = *k(L-L*<sub>0</sub>).  The direction of the spring force is nonlinear with respect to the mass position <tt>[x y]</tt>. 
 * Gravitational force: *W*<sub>y</sub> = *mg*.
 * Horizontal drag force: *D*<sub>x</sub> = 7.5*y*<sup>2</sup>, where *D*<sub>x</sub> is in Newtons and *y* is in meters.

<img src="NLspring1.png" height="400">

Complete the <tt>nlonespring.m</tt> program to solve for the equilibrium position of the 5-kg mass. Use the Newton Raphson method with the following requirements.
 *  Prompt the user for the initial guess for the equilibrium position <tt>[x y]</tt> of the mass.
 *  Update the solution for the equilibrium position using a Newton-Raphson iteration with a while loop.
 *  End the loop when the update in position is less than 10<sup>-6</sup> meters OR after the 10th iteration, whichever comes first.
 *  Display the equilibrium position and <tt>norm(dx)</tt> each iteration.
 *  Demonstrate that the program works, for an initial guess of <tt>[x y] = [0.1 -1.1]</tt>.

## Problem 4 (homework)<a name="5"></a>
Two springs support a mass *m* = 5 kg as shown in the image below. 
 *  Spring 1 is attached at coordinate (-1,0) and has a spring constant of *k*<sub>1</sub> = 100 N/m.
 *  Spring 2 is attached at coordinate (1,0) and has a spring constant of *k*<sub>2</sub> = 150 N/m. 
All coordinate positions are in meters. Both of the springs have a natural (unstretched) length of 1.0 meter.   

<img src="NLspring2.png" height="400">

Complete the <tt>nltwospring.m</tt> program to solve for the equilibrium position of the 5-kg mass.  Use the Newton Raphson method with the following requirements:
 *  Prompt the user for the initial guess for the equilibrium position <tt>[x y]</tt> of the mass.
 *  Update the solution for the equilibrium position using a Newton Raphson iteration with a while loop.
 *  End the loop when the update in position is less than 10<sup>-6</sup> meters OR after the 10th iteration, whichever comes first.
 *  Display the equilibrium position and <tt>norm(dx)</tt> each iteration.
 *  Demonstrate that the program works, for an initial guess of <tt>[x y] = [0 0]</tt>.
