function createfigure1(X1, Y1, figure1)

% Create axes
axes1 = axes('Parent',figure1,...
    'Position',[0 0 1 1]);
xlim([0 3.5])
ylim([0 3.5])
%%
hold(axes1,'all');

% Create rectangle right bottom
annotation(figure1,'rectangle',...
    [4.5/7 0 3/7 2.5/7],...
    'LineWidth',1,...
    'FaceColor',[0.9 0.9 0.8]);

% Create rectangle right top
annotation(figure1,'rectangle',...
    [4.5/7 4.5/7 3/7 3/7],...
    'LineWidth',1,...
    'FaceColor',[0.9 0.9 0.8]);

% Create rectangle left top
annotation(figure1,'rectangle',...
    [0 4.5/7 2.5/7 3/7],...
    'LineWidth',1,...
    'FaceColor',[0.9 0.9 0.8]);

% Create rectangle left bottom
annotation(figure1,'rectangle',...
    [0 0 2.5/7 2.5/7],...
    'LineWidth',1,...
    'FaceColor',[0.9 0.9 0.8]);

%Create line 1 top
annotation(figure1, 'line',...
    [3.5/7,3.5/7],[1,4.5/7],...
    'LineStyle','--')

%Create line 2 bottom
annotation(figure1, 'line',...
    [3.5/7,3.5/7],[0,2.5/7],...
    'LineStyle','--')

%Create line 3 left
annotation(figure1, 'line',...
    [0,2.5/7],[3.5/7,3.5/7],...
    'LineStyle','--')

%Create line 4 right
annotation(figure1, 'line',...
    [1,4.5/7],[3.5/7,3.5/7],...
    'LineStyle','--')


hold off

