function [tVec, popVec, newHpvVax, newHpvNonVax, newHiv] = runScenario()
    % ---- FIXED SETTINGS ----
    calibBool    = 0;
    pIdx         = 1;
    paramsSub    = [];
    paramSet     = [];
    paramSetIdx  = 1;
    tstep_abc    = 0;
    date         = 0;

    % ---- RUN SIMULATION ----
    futureSimS1(calibBool , pIdx , paramsSub , paramSet , paramSetIdx , tstep_abc , date);

    % ---- OUTPUT FILENAME ----
    outname = sprintf('vaxSimResult%d.mat', paramSetIdx);

    % ---- LOAD RESULTS ----
    results = load(outname);

    % ---- EXTRACT ONLY WHAT YOU NEED ----
    tVec        = results.tVec;
    popVec      = results.popVec;
    newHpvVax   = results.newHpvVax;
    newHpvNonVax = results.newHpvNonVax;
    newHiv      = results.newHiv;
end
