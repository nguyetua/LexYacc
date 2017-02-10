
%{

#include <stdio.h>


%}


%%

[A-Z][a-z]+       	 { printf("here1"); /* NAME */      }
[0-9]{3}-[0-9]{4} 	 { printf("here2"); /* PHONE NUM */ }
[A-z]+@[.A-z]+\.[a-z]{3}     { printf("here3"); /* EMAIL   */    }
[0-9]{4}		 { printf("here4"); /* ST NUM */   }
[A-Z]+			 { printf("here5");/*ST_NAME;*/    }
(.Av)|(.Rd)|(.dr)        { printf("here6");/* ST_TYPE;*/    }
[0-9]{5}          	 { printf("here7");/*ZIP_CODE*/   }

%%
/* Chris Gonzalez / Tuan Nguyen */

int main(void){
	yylex();
}
