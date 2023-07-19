classdef tDemoSmokeTest < matlab.unittest.TestCase

    methods (TestClassSetup)
        % Close any new figures created by doc
        function saveExistingFigures(testCase)
            existingfigs = findall(groot,'Type','Figure');
            testCase.addTeardown(@()delete(setdiff(findall(groot,'Type','Figure'), existingfigs)))
        end
    end

    methods (Test, TestTags={'Demo'})
        % Verify demo runs warning free
        function demoShouldNotWarn(testCase)
            testCase.verifyWarningFree(@shortest_path_demo);
        end
    end

end