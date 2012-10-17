function commitMessageEditor()
    
    dummyMessage = sprintf('%s\n%s\n%s', ...
    '# Please enter the commit message for your changes. Lines starting', ...
    '# with "#" will be ignored, and an empty message aborts the commit.', ...
    '# On branch master');

    dummyMessage = regexp(dummyMessage,'\n', 'split');

    %Setup the UI of the simple editor
    figure('Menubar', 'none', 'Position', [300 185 675 365], 'Color', [.9 .9 .9]);
    
    %create the text boxes
    inputBox = uicontrol('Style', 'Edit', 'Units', 'Normal', 'Position', [.01 .51 .98 .42]);
    statusBox = uicontrol('Style', 'Edit', 'Units', 'Normal', 'Position', [.01 .01 .98 .42]);
    boxes = [inputBox statusBox];
    set(boxes, 'Max', 200, 'HorizontalAlignment', 'left', 'BackgroundColor', [1 1 1], ...
        'FontSize', 14, 'FontName', 'Monospaced');
    
    %add labels for the textboxes
    lbl(1) = uicontrol('Style', 'Text', 'Units', 'Normalized', 'Position', [.0125 .93 .5 .05] ,...
        'String', 'Commit Message');
    lbl(2) = uicontrol('Style', 'Text', 'Units', 'Normalized', 'Position', [.0125 .4375 .5 .05] ,...
        'String', 'Status Message');
    set(lbl, 'HorizontalAlignment', 'left', 'BackgroundColor', [.9 .9 .9], 'FontSize', 13);
      
    
    % Setup the buttons
    finishBtn = uicontrol('Style', 'PushButton', 'Units', 'Normalized', 'Position' , [.75 .935 .115, .05], ...
        'String', 'Cancel', 'FontSize', 13);
    cancelBtn = uicontrol('Style', 'PushButton', 'Units', 'Normalized', 'Position' , [.875 .935 .115, .05], ...
        'String', 'Commit', 'FontSize', 13);

    % Display the current commit message in the statusBox 
    set(statusBox, 'String', dummyMessage);
    
    uicontrol(inputBox);
       

end