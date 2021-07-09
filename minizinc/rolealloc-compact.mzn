include "globals.mzn";
% ----------------------------------------
% input data 
% ----------------------------------------
int: nCaps;
set of int: CAP = 1..nCaps; 

% task specification
array[int] of CAP: task;
int: size = length(task);
set of int: taskLen = 1..size;

% agent specification
int: noAgents;
set of int: AGENT = 1..noAgents;
set of int: AGENTx = 0..noAgents;
array[AGENT] of set of CAP: capabilities;

array[AGENT,AGENT] of bool: isConnected;

% ----------------------------------------
% decision variables
% ----------------------------------------
array[taskLen] of var AGENT: agent;
array[taskLen] of var AGENTx: carts;

% ----------------------------------------
% constraints
% ----------------------------------------
constraint forall(a in taskLen) (task[a] in capabilities[agent[a]]);

constraint forall(a in 1..size-1) (
  agent[a] = agent[a + 1] \/ % The next agent is the same agent
  isConnected[agent[a], agent[a + 1]] \/ % The current and the next agents are connected
  (isConnected[agent[a], carts[a]] /\ isConnected[carts[a], agent[a + 1]]) % Connection via a cart
);

constraint alldifferent_except_0(carts);

constraint forall(a in 2..size) (
    agent[a] = agent[a - 1] \/
    forall(a2 in 1..a - 1)(
        agent[a2] != agent[a]
    )
);

solve satisfy;

output [
"agent = \([agent[i] | i in 1..size] )\n"++
"carts = \([carts[i] | i in 1..size] )\n"
];
