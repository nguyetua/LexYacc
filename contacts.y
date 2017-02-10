%code top {
#include <stdio.h>
}

%union {
	
	int iValue;
	char *sValue;
}

%start file
%token BEGIN_CONTACTS
%type<sValue> BEGIN_CONTACTS
%token NAME
%type<sValue> NAME
%token PHONE
%type<sValue> PHONE
%token EMAIL
%type<sValue> EMAIL
%token STREET_NUM
%type<iValue> STREET_NUM
%token STREET_NAME
%type<sValue> STREET_NAME
%token STREET_TYPE
%type<sValue> STREET_TYPE
%token ZIPCODE
%type<iValue> ZIPCODE
%type<sValue> contact

%%

file :	contact
|	contact file
;
contact:	NAME NAME STREET_NUM STREET_NAME STREET_TYPE ZIPCODE
;

%%
int main(void){
	yyparse();
}

int yyerror(char *msg) {
	return fprintf(stderr, "YACC: %s\n", msg);
}

