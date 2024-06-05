%%%%%%%%% Test Problem Suite Name: Multi-Concept Multi Objective Optimization Problem Suite (MCOP Suite) %%%%%%%%%

% Please cite the following paper if you use this test problem suite.

%------------------------------- Copyright ------------------------------------
% Copyright (c) MDO Group, UNSW, Australia. You are free to use the MCOP 
% Suite for research purposes. All publications which use this code 
% should acknowledge the use of "MCOP Suite" and references: 
%
% "R. S. Niloy, H. K. Singh, T. Ray, A benchmark test suite for evolutionary 
% multi-objective multi-concept optimization, Swarm and Evolutionary 
% Computation, 2023 (Under review)"
%------------------------------------------------------------------------------ 


clc; clear all; close all;

%% Load Problem File
load("MCOP_I1.mat");


for i=1:size(prob,2)-1
    % Initialize Population
    PopSize(i)=10*prob{1,i}.nx; % Initial Population Size of Each concept is 10*No. of Design Variables
    X{1,i}=repmat(prob{1,i}.range(:,1)',PopSize(i),1) + repmat((prob{1,i}.range(:,2)'-prob{1,i}.range(:,1)'),PopSize(i),1).*lhsdesign(PopSize(i),prob{1,i}.nx);
    X{1,i}= round(X{1,i},4);

    % Evaluate
    funh=str2func(char(prob{1,i}.name));
    F{1,i}=CalObj(feval(funh,'M',prob{1,i}.nf,'D',prob{1,i}.nx),X{1,i});
    F{1,i}=F{1,i}.*prob{1,i}.scaling_factor;
    F{1,i}=F{1,i}+prob{1,i}.shifting_factor;
end