

#Mapping of Event-B Book Rules to RODIN Rules


## References 
* Event-B Book : 
	http://www.event-b.org/A_ch2.pdf
	
* Rodin Rules:
	http://wiki.event-b.org/index.php/Inference_Rules
	http://wiki.event-b.org/index.php/All_Rewrite_Rules
	

## Notation
Book Rule names are prefixed with "b:".
RODIN rule names have no prefix

## Mapping 
### Logic Rules

Event-B Book Rule | RODIN Rule |Comments
---------------	|---------- |---------
b:MON		| ??  		| UI : sl/ds
b:OR_R1 	| ??
b:OR_R2 	| ??
b:OR_L		| [COMPOSITE_OR_L](#user-content-composite_or_l)
b:HYP 		| HYP
b:FALSE_L	| FALSE_HYP
b:EQ_LR		| EQL_LR
b:EQ_RL		| EQL_RL
b:EQL		| SIMP_MULTI_EQUAL ; TRUE_GOAL
b:OR_R    	| ??
b:AND_L  	| AND_L
b:AND_R  	| AND_R
b:IMP_L		| ??
b:IMP_R 	| IMP_R
b:NOT_L		| ??

#### COMPOSITE_OR_L
``` 
	H |- P or Q      
	“CONTRADICT_R"  H, not(P or Q)  |- false
	“Automatic simplification”   H, not(P), not(Q) |-> false
  	“CONTRADICT_L on not(P)”    H, not(Q), not(false) |-> P  
  	“Automatic simplification”  H, not(Q) |- P
```  
NOTE: 
If P or Q are complex expressions, then we have to use 'ah' for those expressions
	in order to treat them as a single term

### Arithmetic rules 

In RODIN, the arithmetic rules are implemented by 
- Some of the [simplification rewrite rules](http://wiki.event-b.org/index.php/All_Rewrite_Rules#Arithmetic_Rewrite_Rules)
- autoprovers (eg. ML, PP)

Event-B Book Rule | RODIN Rule |Comments
---------------	|---------- |---------
b:P1	|
b:P2	|
b:P3	|
b:INC	|
b:DEC	|
b:ARI |    | generic arithmetic rule

	
	