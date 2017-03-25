function [y1,xf1] = NGPF_NARFunction(x1,xi1)
%NGPF_NARFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 26-Apr-2016 08:56:18.
% 
% [y1,xf1] = NGPF_NARFunction(x1,xi1) takes these arguments:
%   x1 = 1xTS matrix, input #1
%   xi1 = 1x10 matrix, initial 10 delay states for input #1.
% and returns:
%   y1 = 1xTS matrix, output #1
%   xf1 = 1x10 matrix, final 10 delay states for input #1.
% where TS is the number of timesteps.

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = 1.72;
x1_step1_gain = 0.170940170940171;
x1_step1_ymin = -1;

% Layer 1
b1 = 0.31633411385055715;
IW1_1 = [0.83614582057702735 -0.052917599088046996 0.076978933868737304 0.018831120041715013 -0.19823539236123824 0.15406338118207766 -0.099400299259589583 0.093762439367917796 -0.17849390596472126 0.13398245911274254];

% Layer 2
b2 = -0.39201284821296978;
LW2_1 = 1.3485378592165447;

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.170940170940171;
y1_step1_xoffset = 1.72;

% ===== SIMULATION ========

% Dimensions
TS = size(x1,2); % timesteps

% Input 1 Delay States
xd1 = mapminmax_apply(xi1,x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
xd1 = [xd1 zeros(1,1)];

% Allocate Outputs
y1 = zeros(1,TS);

% Time loop
for ts=1:TS

    % Rotating delay state position
    xdts = mod(ts+9,11)+1;
    
    % Input 1
    xd1(:,xdts) = mapminmax_apply(x1(:,ts),x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
    
    % Layer 1
    tapdelay1 = reshape(xd1(:,mod(xdts-[1 2 3 4 5 6 7 8 9 10]-1,11)+1),10,1);
    a1 = tansig_apply(b1 + IW1_1*tapdelay1);
    
    % Layer 2
    a2 = b2 + LW2_1*a1;
    
    % Output 1
    y1(:,ts) = mapminmax_reverse(a2,y1_step1_gain,y1_step1_xoffset,y1_step1_ymin);
end

% Final delay states
finalxts = TS+(1: 10);
xits = finalxts(finalxts<=10);
xts = finalxts(finalxts>10)-10;
xf1 = [xi1(:,xits) x1(:,xts)];
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
y = bsxfun(@minus,x,settings_xoffset);
y = bsxfun(@times,y,settings_gain);
y = bsxfun(@plus,y,settings_ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings_gain,settings_xoffset,settings_ymin)
x = bsxfun(@minus,y,settings_ymin);
x = bsxfun(@rdivide,x,settings_gain);
x = bsxfun(@plus,x,settings_xoffset);
end
