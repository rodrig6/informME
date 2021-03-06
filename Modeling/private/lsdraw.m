%
% Permission was provided by the author, Arnold Neumaier, to 
% modify and distribute this MATLAB code with the informME 
% package. Contact the original author directly for use outside 
% this package. 
%
% Author's website:
% http://www.mat.univie.ac.at/~neum/
%
% Author's source websites:
% http://www.mat.univie.ac.at/~neum/software/mcs/
% http://www.mat.univie.ac.at/~neum/software/minq/
% http://www.mat.univie.ac.at/~neum/software/ls/
%
% lsdraw;		
% draw progress along the line
%

if prt>4, disp([alist;flist]); end;
if prt, 
  figure(1);
  plot(alist,flist,'o');
  if prt>3,
    set(gca,'xlim',[min(alist),max(alist)]);
    range=max(flist)-min(flist);
    if range>0, set(gca,'ylim',min(flist)+[-0.5,1.5]*range); end;
  end;
  drawnow; 
  if prt>2, 
    s=size(alist,2);
    input(['lsdraw: s= ',num2str(s),'>']); 
  end;	
end;

