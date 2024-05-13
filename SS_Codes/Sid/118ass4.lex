%{
        #include<stdio.h>
        #include"y.tab.h"
        
%}

%%
and|AND|or|OR|but|BUT {return Connectives;}
[a-zA-Z0-9_]+ {return Word;}
[\.] {return Fullstop;}
%%
