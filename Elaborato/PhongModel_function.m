function PhongModel_function(tipoSuperfice, coloreLuce, ka, kd, ks, ke, scr)

figure;

[x_Sfera, y_Sfera, z_Sfera] = sphere(180);

handle_Sfera1 = surf(x_Sfera, y_Sfera, z_Sfera);
hold on;

handle_Sfera2 = surf(x_Sfera-2, y_Sfera-2, z_Sfera);


posizione_L1 = light('Position', [1 -1 1], 'Color', coloreLuce);
posizione_L2 = light('Position', [-3 0 3], 'Color', coloreLuce);

set(handle_Sfera1, 'FaceLighting', 'phong', 'FaceColor', 'b', 'EdgeColor', 'none', 'AmbientStrength', ka, 'DiffuseStrength', kd, 'SpecularStrength', ks, 'SpecularExponent', ke, 'SpecularColorReflectance', scr);
set(handle_Sfera2, 'FaceLighting', 'phong', 'FaceColor', 'r', 'EdgeColor', 'none', 'AmbientStrength', ka, 'DiffuseStrength', kd, 'SpecularStrength', ks, 'SpecularExponent', ke, 'SpecularColorReflectance', scr);

axis equal vis3d;
view([100 15]);
axis off;
set(gca, 'FontSize', 20);