clc; clear; close all;  %clean screen and variables to initial preparation
fuzzyselect=readfis('fuzzyselect.fis'); % import fuzzy controller for select of green light
fuzzygreentime=readfis('fuzzygreentime.fis'); % import fuzzy controller for determine the time that light will be green
figure1=figure;
x=[0 30 5 40];          % initial condition (#cars at first time)
y=[0 0 0 0];            % y is a matrix that contain light state (0=Red, 1=Green, 0.5=Yellow)
it=10;                  % #loops
timefactor=ones(1,4);   % each light must be green after 4 or 5 step (default is 5)
b=zeros(0,it);          % an auxiliary matrix for determine which light must be green

yellowtime=1;            % times (in second) for yellow light
exittime=0.3;           % times (in second) for each exit cars

entercar=2;             % #average of cars that enter to each street
exitcar=12;              % #cars that exit in each step from green light
coeff=[1 2 1 2];        % determine coefficient for entercar for each street

for ii=2:it
   
    clf('reset');  
    createfigure1(x,y,figure1);                % creatfigure1 is a function that builds 4 streets
    xrand=round(abs(rand(1,4)).*entercar);     % #Cars that enter
    x=x+xrand;

% fuzzy controller determine witch street must be green
if x<[60 60 60 60]      % domain of fuzzy controller (if x>[60 60 60 60] control is out of fuzzy controller and control will be by MAX function)
    
    ytemp=evalfis(x,fuzzyselect); %run fuzzy controller
        
        if ytemp<=3
           b(ii)=1;     %street 1

        elseif ytemp<=6
           b(ii)=2;      %street 2

        elseif ytemp<9
           b(ii)=3;    %street 3

        elseif ytemp<12
           b(ii)=4;    %street 4

        else
           [a,b(ii)]=max(x);   % if no-differ use MAX 

        end
else
    [a,b(ii)]=max(x);    %if out of range use MAX
end

  
    for m=1:4           % each light must be green after 4 or 5 step (default is 5)
        if timefactor(m)>=5
        y=zeros(1,4);
        timefactor(m)=0;
        b(ii)=m;
        end
    end
    
    y=zeros(1,4); y(b(ii))=1;       
    timefactor=timefactor+ones(1,4);
    timefactor(b(ii))=0;

    
% Yello Light
if b(ii)~=b(ii-1) & ii~=2
    y(b(ii-1))=0.5;  % yellow light
    y(b(ii))=0;      % red
    createfigure2(x,y,figure1);         % creatfigure2 is a function that shows number of cars and lights
    pause(yellowtime);
    y(b(ii-1))=0;    %red
    y(b(ii))=1;      %green
end
        

% fuzzy controller determine green time
if x<[60 60 60 60]    
greentimetemp=evalfis(x,fuzzygreentime);
    if greentimetemp<=2         %if green time was low
        timeconstantfuzzy=.8;
    elseif greentimetemp<=5     %if green time was medium
        timeconstantfuzzy=.9;
    else
        timeconstantfuzzy=1;    %if green time was high
    end
else
    timeconstantfuzzy=0.8;
end

greentime(ii)=ceil(((x(b(ii))+(.7*entercar))/exitcar)*timeconstantfuzzy);     % time that is sufficient for all cars (with estimation)


for j=1:greentime(ii)+1
        
    x(b(ii))=x(b(ii))-exitcar;                        % #Cars that exit
    xrand=round(abs(rand(1,4)).*entercar.*coeff);         % #Cars that enter
    x=x+xrand;
      if x(b(ii))<=0
        x(b(ii))=0;
        createfigure2(x,y,figure1);
        pause(exittime);
          break
          break
    end     
                                  
    createfigure2(x,y,figure1);
    pause(exittime); 


end
end

%statistics
[aa1 bb1]=find(b==1);
[aa2 bb2]=find(b==2);
[aa3 bb3]=find(b==3);
[aa4 bb4]=find(b==4);



CarsCounter=exitcar.*greentime;
CarsCounter1=0;
CarsCounter2=0;
CarsCounter3=0;
CarsCounter4=0;

for n=1:length(bb1)
    CarsCounter1=CarsCounter1+CarsCounter(bb1(n));
end

for n=1:length(bb2)
    CarsCounter2=CarsCounter2+CarsCounter(bb2(n));
end

for n=1:length(bb3)
    CarsCounter3=CarsCounter3+CarsCounter(bb3(n));
end

for n=1:length(bb4)
    CarsCounter4=CarsCounter4+CarsCounter(bb4(n));
end

GreenCounter1=sum(aa1)
CarsCounter1

GreenCounter2=sum(aa2)
CarsCounter2

GreenCounter3=sum(aa3)
CarsCounter3

GreenCounter4=sum(aa4)
CarsCounter4
