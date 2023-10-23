function koordinate_rezultat = mcc_pi(tocke)
    xx = 2*rand(tocke, 1) - 1;
    yy = 2*rand(tocke, 1) - 1;
    koordinate = zeros(tocke, 2);
    seznam_radijev = zeros(tocke, 1);
    

    for i = 1:tocke
        seznam_kordinat = [xx, yy];
        radij = sqrt(seznam_kordinat(i, 1)^2 + seznam_kordinat(i, 2)^2);
        seznam_radijev(i) = radij;
        if seznam_radijev(i) <= 1
            koordinate(i, :) = seznam_kordinat(i, :);
        end    
    end    
   
    koordinate_rezultat = [koordinate, seznam_kordinat];
 
end