load uspsDigits.mat

prompt = "nr";
testInt = input(prompt);

testNr = trainDigits(:,:,testInt);
testAns = trainAns(testInt);

ima(testNr)
figure()

%16 x 16 matriser med nummer. 0 för vit pixel och 1 för svart.
%vi ska ta och göra en algoritm för att hitta alla tex 7or när vi 
%loopar igenom alla nummer.

%Centroid metoden --> medelvärde av alla 7or som en standard.

%Närmaste granne metoden --> ???
testNr2 = testNr;
testNr3 = testNr;

for i = 1:numel(testNr2)
    if (testNr2(i) > 0.5)
        testNr2(i) = 1;
    else
        testNr2(i) = 0;
    end
end
ima(testNr2)
figure()

for i = 1:numel(testNr3)
    if (testNr3(i) < 0.5)
        testNr3(i) = 1;
    else
        testNr3(i) = 0;
    end
end
ima(testNr3)
