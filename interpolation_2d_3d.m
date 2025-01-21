%2D to New 2D grid

% old grid x,y and variable um to be interpolated on 
% new grid xq(il,jl), yq as uq

xnn = (reshape(x,[],1));
ynn = (reshape(y,[],1));
dum = (reshape(um,[],1));
F = scatteredInterpolant(xnn,ynn,dum);

dxn = (reshape(xq,[],1));
dyn = (reshape(yq,[],1));


   dm1 = F(dxn,dyn);
   dm2 = reshape(dm1,[il,jl]);
   uq(:,:) = dm2(:,:);



%3D to New 3D grid

% old grid x,y,z and variable um to be interpolated on 
% new grid xq(il,jl,kl), yq, zq as uq
xnn = (reshape(x,[],1,1));
ynn = (reshape(y,[],1,1));
znn = (reshape(z,[],1,1));
dum = (reshape(um,[],1,1));
F = scatteredInterpolant(xnn,ynn,znn,dum);

dxn = (reshape(xq,[],1,1));
dyn = (reshape(yq,[],1,1));
dzn = (reshape(zq,[],1,1));

 dm1 = F(dxn,dyn,dzn);
 dm2 = reshape(dm1,[il,jl,kl]);
 uq(:,:,:) = dm2(:,:,:);

 
