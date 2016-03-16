/*
   unit test 1 for chapel-plplot bindings
*/
use plplot;

proc main() {

   plsdev("xwin"); // tell plplot to use the xwin plot-device
   plinit(); // init plplot

   plenv(0.0, 10.0, 0.0, 10.0, 1, 0); // define the axis (x0,x1) (y0,y1)

   var n = 10;
   var x : [1..n] real = 1..10;

   plline(10, x, x); // plot ploints

   plend(); // turn off plplot
}

