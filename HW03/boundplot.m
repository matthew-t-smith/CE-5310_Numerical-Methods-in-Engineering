function [] = boundplot(windSpeeds,anemHeight,speedUnits)
% boundplot   Plots boundary layer with mean wind speed on X
%             (linearly) and anemometer height on Y (logarithmically)
%
% Synopsis:   [] = boundplot(windSpeeds,anemHeight)
%
% Input:      windSpeeds = mean wind speeds vector (in desired units)
%             anemHeight = vector of heights of anemometers (in ft)
%             speedUnits = string of desired wind speed units
%
% Output:     a figure displaying mean wind speeds and anemometer heights
%             in a semilogy fashion

semilogy(windSpeeds,anemHeight, '-+m');
title('Mean Wind Speeds vs. Anemometer Heights');
xlabel(['Wind Speed, ' speedUnits]);
ylabel('Height, ft');
end