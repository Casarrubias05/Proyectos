access graph;

unitsize(3cm);


graph.xaxis(xmin=-.5, xmax=2.5, L="$x$",arrow=Arrow());
graph.yaxis(ymin=-1.3, ymax=1.3, L="$y$",arrow=Arrow());

real a1 = 1;
real a2 = 2;
real b = 1.7;
real theta = 50;
real delta = .1;

pair P = (0, a1/2);
pair Q = (b, -a2/2);
pair R = (Tan(theta), 0);

path b_line = (0, Q.y) -- Q;

path light_ray = P -- R -- Q;

path angle_i = arc(R, (R.x, (R.y + a1/2)/1.5), P);
Label i_label = Label("$\theta_i$", align=N, position=MidPoint);

path angle_t = arc(R, (R.x, (R.y - a1/2)/1.2), Q);
Label t_label = Label("$\theta_t$", align=S, position=MidPoint);

dot((0,0), L=Label("$O$"), align=SW);
label("$n_i$", (0,0), align=NE);
label("$n_t$", (0,0), align=SE);

dot(P, L=Label("$P$", align=NE));
dot(Q, L=Label("$Q$"), align=SE);
dot(R, L=Label("$R$", align=NE));

draw(light_ray, linewidth(1));
add(arrow(HookHead, light_ray, relative(.35)));
add(arrow(HookHead, light_ray, relative(.75)));
//draw(a1_line, arrow=Arrows(), L=a1_label, dotted);
//draw(shift(0,-a/2)*a1_line, arrow=Arrows(), dotted);
draw(b_line, L=Label("$A$", position=BeginPoint), dotted);

draw((R.x, R.y - a2/2) -- (R.x, R.y + a2/2), L=Label("$B$", position=BeginPoint),dashed);
draw(angle_i, arrow=ArcArrow(HookHead, size=3), L=i_label, linewidth(.6));
draw(angle_t, arrow=ArcArrow(HookHead, size=3), L=t_label,linewidth(.6));
