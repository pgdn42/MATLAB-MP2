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

for i = 1:numel(testNr)
    if (testNr(i) >= 0.5)
        testNr(i) = 1;
    else
        testNr(i) = 0;
    end
end
ima(testNr)
