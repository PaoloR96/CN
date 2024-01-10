coloreLuce =[1 1 1];

tipoSuperfice = 'metal';
ka = 0.1;
kd = 0.1;
ks = 1.0;
ke = 5.0;
scr = 0.5;


PhongModel_function(tipoSuperfice, coloreLuce, ka, kd, ks, ke, scr);
title('Metal');

tipoSuperfice = 'shiny';
ka = 0.1;
kd = 0.6;
ks = 0.7;
ke = 5.0;
scr = 1.0;

PhongModel_function(tipoSuperfice, coloreLuce, ka, kd, ks, ke, scr);
title('Shiny');

tipoSuperfice = 'diffuse';
ka = 0.1;
kd = 0.7;
ks = 0.0;
ke = 1.0;
scr = 1.0;


PhongModel_function(tipoSuperfice, coloreLuce, ka, kd, ks, ke, scr);
title('diffuse');

tipoSuperfice = 'ambient';
ka = 1.0;
kd = 0.0;
ks = 0.0;
ke = 1.0;
scr = 1.0;


PhongModel_function(tipoSuperfice, coloreLuce, ka, kd, ks, ke, scr);
title('ambient');
