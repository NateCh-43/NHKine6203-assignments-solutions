function gradeCalcGUI
    % Create a figure
    fig = uifigure('Name','Grade Calculator','Position',[100 100 500 400]);

    % Panel for data inputs
    inputPanel = panel(fig,'Title','Enter Assignment Scores',...
        'FontSize',14,'BackgroundColor',[0.9 0.9 1],...
        'Position',[25 150 450 220]);
    %title screen for grade calculater 

    % Text + input spaces for the 5 assignments
    labels = ["Assignment 1","Assignment 2","Assignment 3","Assignment 4","Assignment 5"];
    yPos = 160;
    for i = 1:5
        label(inputPanel,'Text',labels(i),...
            'Position',[20 yPos 100 22],'FontSize',12,'FontColor',[0 0 0.5]);
        scoreInputs(i) = editfield(inputPanel,'numeric',...
            'Position',[140 yPos 100 22],'Limits',[0 100]);
        yPos = yPos - 30;
    end
%only will accept scores between 0 and 100
    % Pushbutton to calculate grade
    calcButton = uibutton(fig,'Text','Calculate Grade',...
        'Position',[180 100 150 40],'FontSize',14,...
        'BackgroundColor',[0.7 0.9 0.7],'ButtonPushedFcn',@(btn,event) calculateGrade());
%if calc button doesnt press restart and make sure correct location has
%been clicked
%this fuction will run the function calculate grade
    % Output panel
    outputPanel = uipanel(fig,'Title','Results',...
        'FontSize',14,'BackgroundColor',[1 0.9 0.9],...
        'Position',[25 25 450 60]);
%if resulting values are not as expected check inputs then try again
    % Dynamic output labels
    percentLabel = label(outputPanel,'Text','Percentage: --',...
        'Position',[20 10 200 22],'FontSize',12,'FontColor',[0.5 0 0]);
    gradeLabel = label(outputPanel,'Text','Letter Grade: --',...
        'Position',[250 10 200 22],'FontSize',16,'FontColor',[0 0.4 0]);
%positioning for grade and percent label will be next to eachother
    % Callback function that calculates grades and will update the given
    % labels 
    function calculateGrade()
        scores = zeros(1,5);
        for j = 1:5
            scores(j) = scoreInputs(j).Value;
        end
        avgScore = mean(scores); 
        %if number is not between 0 and 100 then value will not be correct 

        % Determine letter grade for input data
        if avgScore >= 90
            letter = 'A';
        elseif avgScore >= 80
            letter = 'B';
        elseif avgScore >= 70
            letter = 'C';
        elseif avgScore >= 60
            letter = 'D';
        else
            letter = 'F';
        end

        % Update labels indiviudally and changes with each input
        percentLabel.Text = printf('Percentage: %.2f%%',avgScore);
        gradeLabel.Text = printf('Letter Grade: %s',letter);
    end
end