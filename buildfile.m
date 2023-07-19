function plan = buildfile
%

% Copyright 2023 The MathWorks, Inc.

%import matlab.buildtool.tasks.*;

plan = buildplan(localfunctions);
plan("dummy1") = Task(Actions=@(~) disp('This is a dummy task'));

% lint, mex, pcode, test

% plan("lint") = CodeIssuesTask(["src","tests"], WarningThreshold=4, Results="issues.mat");
% plan("mex") = MexTask("mex/*.c", "mex");

% plan("pcode") = PcodeTask("src/*.m", pwd);
% pcode task depends on lint and mex tasks
% plan("pcode").Dependencies = ["lint", "mex"];

% plan("test") = TestTask("tests", TestResults="test-results/report.pdf", SourceFiles="src");

% plan("clean") = CleanTask();
% plan.DefaultTasks = ["lint" "mex" "pcode" "test"];
plan.DefaultTasks = ["dummy1"];

end
