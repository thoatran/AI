F=@(x)(x(1)^2+x(2)^2);
options=gaoptimset('Generations',20,'PopulationSize',20,'PlotFcns',@gaplotbestf);
lb=[-20, -20]; % lower bound of (x1,x2)
up=[20, 20]; % upper bound of (x1,x2)
x=ga(F,2,[],[],[],[],lb,up,[],options);
fprintf('Optimal point: (%f, %f)\n',x(1),x(2));
fprintf('Optimal function value: %f\n',F(x));
