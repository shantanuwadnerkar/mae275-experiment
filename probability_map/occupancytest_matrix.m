plume4occupancy;

P_uav = [
    %     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%    200 -300
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%     500 -200
%    
%     500 0
%     500 10
%     500 20
%     500 30
%     500 40
%     500 50
%     500 100
%     500  120
%     500 0
%     490 0
%     480 0
%     490 0
%     480 0
%     480 0
%     480 0
%     480 0

      1320 80
      1320 70
      1320 60
      1320 50
      1320 40
      1320 30
      1320 20
      1320 80
      1320 80
      1320 80
      1320 80
      1320 80
      10 80
      10 80
      10 80
      10 80
      10 80
      10 80
      10 80
      10 80
      10 80
      10 80
      10 80
      10 80
      
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80
%       1000 80     
    
    ];    

Duration   = length(P_uav); %800;
dt         = 1;             % Time step
N          = length(0:dt:Duration);

Vwind      = [10*props.U+0.01,0.01];  % Constant wind vector
Wind       = zeros(N,2);  % Wind vector

Lx         = 40;    % Length of probability cells
Ly         = 20;    % Length of probability cells
m          = 51;    % number of cells in x-direction 
n          = 51;    % number of cells in y-direction     
M          = m*n;   % Total cells

x          = gridMap.xlims(1):Lx:gridMap.xlims(2);
y          = gridMap.ylims(1):Ly:gridMap.ylims(2);
[Y,X]      = meshgrid(y,x);
xcell      = X(:); % 
ycell      = Y(:); %

sx         = 10;   % Standard deviations may have to be modified
sy         = 10;   % Standard deviations may have to be modified  
mu         = 0.9;  % Sensor accuracy


