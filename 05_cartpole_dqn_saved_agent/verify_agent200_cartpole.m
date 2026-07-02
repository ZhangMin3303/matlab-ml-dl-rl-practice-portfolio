% Verify that the saved CartPole DQN agent can be loaded and simulated.
% This is a verification script, not the original training script.

clear; clc;
rng(1);

projectDir = fileparts(mfilename('fullpath'));
agentFile = fullfile(projectDir, 'savedAgents', 'Agent200.mat');
resultsDir = fullfile(projectDir, 'results');

if ~exist(resultsDir, 'dir')
    mkdir(resultsDir);
end

if ~isfile(agentFile)
    error('Agent file not found: %s', agentFile);
end

loadedData = load(agentFile);
agent = loadedData.saved_agent;

env = rlPredefinedEnv('CartPole-Discrete');
simOptions = rlSimulationOptions('MaxSteps', 500);
experience = sim(env, agent, simOptions);

steps = numel(experience.Reward.Data);
totalReward = sum(experience.Reward.Data(:));

fprintf('Loaded agent: %s\n', class(agent));
fprintf('Simulation steps: %d\n', steps);
fprintf('Simulation total reward: %.4f\n', totalReward);

save(fullfile(resultsDir, 'agent200_sim_check.mat'), ...
    'steps', 'totalReward', 'agentFile');
