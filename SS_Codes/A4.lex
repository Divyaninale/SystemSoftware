%{ 
#include"y.tab.h"
%}
%%
[a-zA-Z0-9_]+ {return Word;}
(""[aA][nN][dD]"") {return Compound;}
\. {return Dot;}
\t\n "" ;

%%

