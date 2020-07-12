function dydt = neuronODE(t, y)
    n = y(1);
    m = y(2);
    h = y(3);
    V = y(4);
    C = 1;
    GK = 36;
    GNa = 120;
    GL = 0.3;
    EK = -72;
    ENa = 55;
    EL = -49.4;
    dndt = (1-n)*alphan(V) - n*betan(V);
    dmdt = (1-m)*alpham(V) - m*betam(V);
    dhdt = (1-h)*alphah(V) - h*betah(V);
    dVdt = -1/C*(GK*(n^4)*(V-EK) + GNa*(m^3)*h*(V-ENa) + GL*(V-EL));
    dydt = [dndt; dmdt; dhdt; dVdt];
end