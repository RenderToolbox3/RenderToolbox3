%%% RenderToolbox3 Copyright (c) 2012-2013 The RenderToolbox3 Team.
%%% About Us://github.com/DavidBrainard/RenderToolbox3/wiki/About-Us
%%% RenderToolbox3 is released under the MIT License.  See LICENSE.txt.
%
% Convert a relative working path to a local absoute path.
%   @param originalPath string relative working path to convert
%   @param hints struct of RenderToolbox3 options, see rtbDefaultHints()
%
% @details
% Converts the given @a originalPath to a local absolute path.  Assumes
% that @a originalPath is a relative path relative to the working folder
% specified by the given @a hints.  See rtbWorkingFolder().
%
% @details
% Usage:
%   absolutePath = rtbWorkingAbsolutePath(originalPath, hints)
%
% @ingroup Utilities
function absolutePath = rtbWorkingAbsolutePath(originalPath, hints)

if nargin < 2
    hints = rtbDefaultHints();
else
    hints = rtbDefaultHints(hints);
end

workingFolder = rtbWorkingFolder('', false, hints);
absolutePath = fullfile(workingFolder, originalPath);