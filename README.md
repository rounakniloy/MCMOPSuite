# MCMOP Suite
**Multi-Concept Multi Objective Optimization Problem Suite (MCMOP Suite)**

Copyright (c) MDO Lab (http://www.mdolab.net), UNSW, Australia. 

You are free to use the MCMOP Suite for research purposes. 
All publications which use this code should acknowledge the use of "MCMOP Suite" and references: 

R. S. Niloy, H. K. Singh, and T. Ray, "A benchmark test suite for evolutionary multi-objective multi-concept optimization," Swarm and Evolutionary Computation, vol. 84, p. 101429, Feb. 2024, https://doi.org/10.1016/j.swevo.2023.101429

Content of each .mat file

Each .mat file contains (N+1) structs where N is the number of concepts of that particular problem.
Except the last struct, rest of the structs contain the following information corresponding to each concept:

	name:			Name of the Concept
	nx:			No. of Design Variables
	nf:			No. of Objective Functions
	scaling_factor:		Scaling factor of that concept
	PF:			Pareto-optimal front of that concept
	range:			Upper bounds and Lower bounds of the design variables
	ng:			No. of Constraints [0 in this case]
	shifting_factor:	Shifting factor of that concept
	
	The last struct contains the following information:
	ideal:			Ideal Point based on the overall PF of the problem
	nadir:			Nadir Point based on the overall PF of the problem
	PF:			The combined PF or the overall PF of the problem
	f:			Concept-wise optimum values of the objective functions

**Steps to use the .mat file**

The MATLAB representation of the problems calls PlatEMO libraries for evaluation of the objective functions.
To do that the following steps are to be done: 

	1. Download PlatEMO from https://github.com/BIMK/PlatEMO/archive/refs/heads/master.zip

	2. Extract the downloaded ZIP file to a desired location on your computer

	3. Copy the "Multi-objective optimization" folder located at `C:~\PlatEMO-master\PlatEMO\Problems\Multi-objective optimization`. Note: Replace `C:\~` with the actual path where you extracted PlatEMO.

	4. Paste the copied folder to `C:~\MCMOPSuite`. Note: Replace `C:\~` with the location where you have downloaded and extracted 'MCMOPSuite' folder.

	5. In MATLAB, add the path to the "Multi-objective optimization" folders, including all folders and subfolders by running the following command:

		platemoPath = 'C:\~\MCMOPSuite\Multi-objective optimization';  % Replace with the actual path
		addpath(genpath(platemoPath));

	6. Now you can use the PlatEMO functions to evaluate the objective functions of the problems of MCMOPSuite. "Driver.m" file contains sample code snippets on how to Initialize Population and Evaluate the Objective functions using PlatEMO.



**Acknowledgment**

We would like to acknowledge the creators of PlatEMO for providing a powerful MATLAB platform for evolutionary multi-objective optimization.

PlatEMO: https://github.com/BIMK/PlatEMO

If you use PlatEMO in your research or work, please cite the following reference:

Ye Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, "PlatEMO: A MATLAB Platform for Evolutionary Multi-Objective Optimization" [Educational Forum], IEEE Computational Intelligence Magazine, 2017, 12(4): 73-87.

