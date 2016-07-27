%% Declare RenderToolbox3 version 3 toolbox configuration.
%
% This script generates a JSON file which allows the Toolbox Toolbox to
% automatically install RenderToolbox3.

config = [ ...
    tbToolboxRecord( ...
    'name', 'mMitsuba', ...
    'url', 'https://github.com:RenderToolbox3/mMitsuba.git'), ...
    tbToolboxRecord( ...
    'name', 'mPbrt', ...
    'url', 'https://github.com:RenderToolbox3/mPbrt.git'), ...
    tbToolboxRecord( ...
    'name', 'mexximp_binary', ...
    'type', 'webget', ...
    'url', 'https://github.com/RenderToolbox3/mexximp/releases/download/v0.1.1/build.zip'), ...
    tbToolboxRecord( ...
    'name', 'mexximp', ...
    'url', 'https://github.com:RenderToolbox3/mexximp.git'), ...
    tbToolboxRecord( ...
    'name', 'SphereRendererToolbox', ...
    'url', 'https://github.com/RenderToolbox3/SphereRendererToolbox.git'), ...    
    tbToolboxRecord( ...
    'name', 'Psychtoolbox', ...
    'url', 'https://github.com:Psychtoolbox-3/Psychtoolbox-3.git', ...
    'subfolder', 'Psychtoolbox'), ...
    tbToolboxRecord( ...
    'name', 'RenderToolbox3_binary', ...
    'type', 'webget', ...
    'url', 'https://github.com/RenderToolbox3/RenderToolbox3/releases/download/test-build-2/build.zip'), ...
    tbToolboxRecord( ...
    'name', 'RenderToolbox3', ...
    'url', 'https://github.com:RenderToolbox3/RenderToolbox3.git', ...
    'flavor', 'version3', ...
    'hook', 'rtbDeployHook'), ...
    ];

pathHere = fileparts(mfilename('fullpath'));
configFile = fullfile(pathHere, 'rtbToolboxConfig.json');
tbWriteConfig(config, 'configPath', configFile);