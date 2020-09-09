function createfigure1(x,y,figure1)
red=[1 0 0];
green=[0 1 0];
yellow=[1 .8 0];
% drawnow
if y(1)==1
    light1=green;
elseif y(1)==0.5
    light1=yellow;
else
    light1=red;
end

if y(2)==1
    light2=green;
elseif y(2)==0.5
    light2=yellow;
else
    light2=red;
end

if y(3)==1
    light3=green;
elseif y(3)==0.5
    light3=yellow;
else
    light3=red;
end

if y(4)==1
    light4=green;
elseif y(4)==0.5
    light4=yellow;
else
    light4=red;
end


annotation(figure1,'textbox',...
    [0.38 0.46 0.03 0.067],...
    'String',{x(1)},...
    'FitBoxToText','on','FontWeight','bold',...
    'EdgeColor','none','BackgroundColor',[1 1 1],'Color',light1);
annotation(figure1,'textbox',...
    [0.48 0.35 0.03 0.067],...
    'String',{x(2)},...
    'FitBoxToText','on','FontWeight','bold',...
    'EdgeColor','none','BackgroundColor',[1 1 1],'Color',light2);
annotation(figure1,'textbox',...
    [0.58 0.46 0.03 0.067],...
    'String',{x(3)},...
    'FitBoxToText','on','FontWeight','bold',...
    'EdgeColor','none','BackgroundColor',[1 1 1],'Color',light3);
annotation(figure1,'textbox',...
    [0.48 0.57 0.03 0.067],...
    'String',{x(4)},...
    'FitBoxToText','on','FontWeight','bold',...
    'EdgeColor','none','BackgroundColor',[1 1 1],'Color',light4);