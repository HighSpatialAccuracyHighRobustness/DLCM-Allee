for i=1:72
    u = Usave{i};
    C=u;
    S=50*ones(size(u,1),1);
    scatter3(X(C~=0),Y(C~=0),Z(C~=0),S(C~=0),C(C~=0),'filled')
    %scatter3(X,Y,Z,S,C,'filled')
%          aXis([-2e-3, 2e-3, -2e-3, 2e-3]);
     axis([min(X), max(X), min(Y), max(Y), min(Z), max(Z)]);
    colorbar;
    cool;
    view([135,135,45]);
    %set(gcf,'menubar','none')
    figure_FontSize=20;
    set(get(gca,'XLabel'),'FontSize',figure_FontSize,'FontWeight','bold','FontName','Arial');
    set(get(gca,'YLabel'),'FontSize',figure_FontSize,'FontWeight','bold','FontName','Arial');
    set(get(gca,'YLabel'),'FontSize',figure_FontSize,'FontWeight','bold','FontName','Arial');
    set(findobj('FontSize',10),'FontSize',figure_FontSize);



    set(gca,'linewidth',3)
    if i==1
        pause
    end
    pause(0.1)
    
end