%%archimedes sum
%actual value
clear;
a = 1;
r = 1/8;
convergence = a/(1-r);
%building the series
series_terms = ones(20);
for index = 1:20
    series_terms(index) = series_terms(index) * (a * r)^(index - 1);
end
%summing the series
out = ones(20);
for index = 1:20
    out(index) = sum(series_terms(1:index));
end
x = 1:20;
yline(convergence);
hold on;
scatter(x, out(:, 1), '*');
legend("Archimedes Series Sums", "Convergence Value", "Location", "Southeast");
xlabel("Number of Terms");
ylabel("Sum of Series");
title("Archimedes Quadrature Approximations with Geometric Series");
hold off;
    
%riemann sums
clear;
n_vec = 1:1000;
size = size(n_vec);
left_sum = zeros(size(2), 1);
right_sum = zeros(size(2), 1);
for n = 1:1000
    delta_x = 3/n;
    x_left = (0: delta_x :3 - delta_x);
    x_right = (0 + delta_x: delta_x :3);
    left_sum(n) = sum(sqrt(x_left + 1).* delta_x);
    right_sum(n) = sum(sqrt(x_right + 1) .* delta_x);
end
scatter(n_vec, left_sum, "*");
hold on;
scatter(n_vec, right_sum, "*");
yline(4.66666666);
title("Riemann Sum Approximation for Integration");
xlabel("Number of Partitions");
ylabel("Summation Approximation");
legend("Left Handed Sum", "Right Handed Sum", "Exact Solution");

