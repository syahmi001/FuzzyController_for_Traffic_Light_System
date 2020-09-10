function createfigure1(x,y,figure1)
red=[1 0 0];
green=[0 1 0];
yellow=[1 .8 0];
grey = [0.5 0.5 0.5];
%colour = [red green yellow grey];

% deciding the colour of traffic light based on the Y matrix
if y(1)==1
    light1=green;
    light11=green;
    light12=grey;
    light13=grey;

elseif y(1)==0.5
    light1=yellow;
    light11=grey;
    light12=yellow;
    light13=grey;

else
    light1=red;
    light11=grey;
    light12=grey;
    light13=red;
 
end

if y(2)==1
    light2=green;
    light21=green;
    light22=grey;
    light23=grey;
elseif y(2)==0.5
    light2=yellow;
    light21=grey;
    light22=yellow;
    light23=grey;
else
    light2=red;
    light21=grey;
    light22=grey;
    light23=red;
end

if y(3)==1
    light3=green;
    light31=green;
    light32=grey;
    light33=grey;
elseif y(3)==0.5
    light3=yellow;
    light31=grey;
    light32=yellow;
    light33=grey;
else
    light3=red;
    light31=grey;
    light32=grey;
    light33=red;
end

if y(4)==1
    light4=green;
    light41=green;
    light42=grey;
    light43=grey;
elseif y(4)==0.5
    light4=yellow;
    light41=grey;
    light42=yellow;
    light43=grey;
else
    light4=red;
    light41=grey;
    light42=grey;
    light43=red;
end

%text for left
annotation(figure1,'textbox',...
    [0.38 0.46 0.03 0.067],...
    'String',{x(1)},...
    'FitBoxToText','on','FontWeight','bold',...
    'EdgeColor','none','BackgroundColor',[1 1 1],'Color',light1);

%text for bottom
annotation(figure1,'textbox',...
    [0.48 0.35 0.03 0.067],...
    'String',{x(2)},...
    'FitBoxToText','on','FontWeight','bold',...
    'EdgeColor','none','BackgroundColor',[1 1 1],'Color',light2);

%text for right
annotation(figure1,'textbox',...
    [0.58 0.46 0.03 0.067],...
    'String',{x(3)},...
    'FitBoxToText','on','FontWeight','bold',...
    'EdgeColor','none','BackgroundColor',[1 1 1],'Color',light3);

%text for top
annotation(figure1,'textbox',...
    [0.48 0.57 0.03 0.067],...
    'String',{x(4)},...
    'FitBoxToText','on','FontWeight','bold',...
    'EdgeColor','none','BackgroundColor',[1 1 1],'Color',light4);


%traffic light top green
annotation (figure1, 'ellipse', ...
    'Position',[4.5/7, 5.2/7, 0.05, 0.05],...
    'FaceColor',light41,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light top yellow
annotation (figure1, 'ellipse', ...
    'Position',[4.5/7, 5.6/7, 0.05, 0.05],...
    'FaceColor',light42,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light top red
annotation (figure1, 'ellipse', ...
    'Position',[4.5/7, 6/7, 0.05, 0.05],...
    'FaceColor',light43,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light bottom red
annotation (figure1, 'ellipse', ...
    'Position',[2.15/7, 1.6/7, 0.05, 0.05],...
    'FaceColor',light23,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light bottom yellow
annotation (figure1, 'ellipse', ...
    'Position',[2.15/7, 1.2/7, 0.05, 0.05],...
    'FaceColor',light22,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light bottom green
annotation (figure1, 'ellipse', ...
    'Position',[2.15/7, 0.8/7, 0.05, 0.05],...
    'FaceColor',light21,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light right red
annotation (figure1, 'ellipse', ...
    'Position',[5/7 2.25/7, 0.05, 0.05],...
    'FaceColor',light33,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light right yellow
annotation (figure1, 'ellipse', ...
    'Position',[5/7 1.85/7, 0.05, 0.05],...
    'FaceColor',light32,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light right green
annotation (figure1, 'ellipse', ...
    'Position',[5/7 1.45/7, 0.05, 0.05],...
    'FaceColor',light31,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light left green
annotation (figure1, 'ellipse', ...
    'Position',[1.75/7, 4.4/7, 0.05, 0.05],...
    'FaceColor',light11,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light left yellow
annotation (figure1, 'ellipse', ...
    'Position',[1.75/7, 4.8/7, 0.05, 0.05],...
    'FaceColor',light12,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')

%traffic light left red
annotation (figure1, 'ellipse', ...
    'Position',[1.75/7, 5.2/7, 0.05, 0.05],...
    'FaceColor',light13,...  %change colour
    'LineWidth',4,...
    'LineStyle','-')




