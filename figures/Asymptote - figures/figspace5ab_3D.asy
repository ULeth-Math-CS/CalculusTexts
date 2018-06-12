import graph3;

//ASY file for figspace5ab.pdf in Chapter 10.1

size(200,200,IgnoreAspect);
//currentprojection=perspective(7,2,1);
currentprojection=orthographic(4,4,2);
defaultrender.merge=true;

// setup and draw the axes
real[] myxchoice={-4,4};
real[] myychoice={1,2};
real[] myzchoice={-4,4};
defaultpen(0.5mm);
pair xbounds=(-4.5,4.5);
pair ybounds=(-0.5,2.5);
pair zbounds=(-4.5,4.5);

xaxis3("",xbounds.x,xbounds.y,black,OutTicks(myxchoice),Arrow3(size=3mm));
yaxis3("",ybounds.x,ybounds.y,black,OutTicks(myychoice),Arrow3(size=3mm));
zaxis3("",zbounds.x,zbounds.y,black,OutTicks(myzchoice),Arrow3(size=3mm));

label("$x$",(xbounds.y+0.05*(xbounds.y-xbounds.x),0,0));
label("$y$",(0,ybounds.y+0.05*(ybounds.y-ybounds.x),0));
label("$z$",(0,0,zbounds.y+0.05*(zbounds.y-zbounds.x)));

//Draw the surface y=x^2/4+z^2/16
//triple f(pair t) {
//	return (1.5*cos(t.y)*cos(t.x),cos(t.y)*sin(t.x),sin(t.y));//({cos(x)*1.5*cos(y)},{sin(x)*cos(y)},{sin(y)})
//}
//surface s=surface(f,(0,-2),(2*pi,2),32,16,Spline);
//pen p=rgb(0,0,.7);
//draw(s,rgb(.6,.6,1)+opacity(.7),meshpen=p);

//Draw the traces for x=0 in red
triple g(real t) {return (0,t^2/16,t);}
path3 mypath=graph(g,-4,4,operator ..); draw(mypath,red);

//Draw the traces for z=0 in red
triple g(real t) {return (t,t^2/4,0);}
path3 mypath=graph(g,-2,2,operator ..); draw(mypath,red);

//Add labels
//label("In plane $y=0$",(0,4,1.5),E);
//draw((0,4,1.5)--(3,0,2),linewidth(.75),Arrow3);
//draw((0,5,1.75)--(-3,0,2),linewidth(.75),Arrow3);
//label("In plane $z=d$",(4,0,-1),W);
//draw((-1,3,1.75)--(-2.1,1.1,2),linewidth(.75),Arrow3);



// ////////////////////////////////////
//    SAMPLE CODE

// defaultpen(fontsize(10pt));

//real f(pair z) {return -z.x^4+2*z.x^2-z.y^4+2*z.y^2;}
//surface s=surface(f,(-1.5,-1.5),(1.5,1.5),Spline);

//triple f(pair t) {
//  return (cos(t.x)*1.5*cos(t.y),sin(t.x)*cos(t.y),sin(t.y));
//}
//surface s=surface(f,(0,0),(pi,2*pi),8,8,Spline);

//triple g(real t) {return (t,t,-2*t^4+4*t^2);}
//path3 mypath=graph(g,-2,2,operator ..);

//pen p=rgb(0,0,1);
//draw(s,paleblue+opacity(.5),meshpen=p,render(merge=true));

//draw(s,paleblue);
//draw(s,lightblue,meshpen=black+thick(),nolight,render(merge=true));
//draw(mypath,2bp+blue);