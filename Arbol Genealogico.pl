%Primera generacion

padreDe('adelfa','patsy').
padreDe('adelfa','danilo').
padreDe('manlio','patsy').
padreDe('manlio','danilo').

padreDe('jezebel','edgar').
padreDe('jezebel','serapio').
padreDe('jezebel','keila').
padreDe('juan','edgar').
padreDe('juan','serapio').
padreDe('juan','keila').

padreDe('lilibet','helen').
padreDe('manuel','helen').

%Segunda generacion

padreDe('helga','adelfa').
padreDe('helga','valente').
padreDe('cain','adelfa').
padreDe('cain','valente').

padreDe('ibel','manlio').
padreDe('ibel','jezebel').
padreDe('azrael','manlio').
padreDe('azrael','jezebel').

padreDe('adena','juan').
padreDe('adena','maya').
padreDe('adena','leonarda').
padreDe('adena','lilibet').
padreDe('ivany','juan').
padreDe('ivany','maya').
padreDe('ivany','leonarda').
padreDe('ivany','lilibet').

padreDe('delma','manuel').
padreDe('sabacio','manuel').

%Tercera generacion

padreDe('maricruz','helga').
padreDe('calquin','helga').

padreDe('liora','cain').
padreDe('liora','aluhe').
padreDe('liora','ibel').
padreDe('josias','cain').
padreDe('josias','aluhe').
padreDe('josias','ibel').

padreDe('zuleika','azrael').
padreDe('zuleika','uriel').
padreDe('zuleika','julia').
padreDe('zuleika','maria').
padreDe('zuleika','adena').
padreDe('laurencio','azrael').
padreDe('laurencio','uriel').
padreDe('laurencio','julia').
padreDe('laurencio','maria').
padreDe('laurencio','adena').

padreDe('alfonsa','ivany').
padreDe('cencio','ivany').

padreDe('iguazel','cecilia').
padreDe('iguazel','delma').
padreDe('albino','cecilia').
padreDe('albino','delma').

padreDe('laia','sabacio').
padreDe('laia','victor').
padreDe('laia','francisco').
padreDe('laia','narcisa').
padreDe('rafel','sabacio').
padreDe('rafel','victor').
padreDe('rafel','francisco').
padreDe('rafel','narcisa').

%Cuarta Generacion

padreDe('evalina','naira').
padreDe('evalina','maricruz').
padreDe('madison','naira').
padreDe('madison','maricruz').

padreDe('wayca','calquin').
padreDe('wayca','sabine').
padreDe('wayca','liora').
padreDe('marcio','calquin').
padreDe('marcio','sabine').
padreDe('marcio','liora').

padreDe('maitena','josias').
padreDe('maitena','zuleika').
padreDe('agus','josias').
padreDe('agus','zuleika').

padreDe('lissa','laurencio').
padreDe('lissa','cid').
padreDe('emerio','laurencio').
padreDe('emerio','cid').

padreDe('sol','marana').
padreDe('sol','alfonsa').
padreDe('arnoldo','marana').
padreDe('arnoldo','alfonsa').

padreDe('valerie','cencio').
padreDe('valerie','iguazel').
padreDe('apolo','cencio').
padreDe('apolo','iguazel').

padreDe('manon','albino').
padreDe('manon','laia').
padreDe('amelio','albino').
padreDe('amelio','laia').

padreDe('barbea','rafel').
padreDe('barbea','erik').
padreDe('barbea','hermalindo').
padreDe('barbea','selemias').
padreDe('falco','rafel').
padreDe('falco','erik').
padreDe('falco','hermalindo').
padreDe('falco','selemias').

hijoDe(A,B) :- padreDe(B,A).
abueloDe(A,B) :- padreDe(A,C), padreDe(C,B).
bisAbueloDe(A,B) :- padreDe(A,C), padreDe(C,D),padreDe(D,B).
tatarAbueloDe(A,B) :- padreDe(A,C), padreDe(C,D),padreDe(D,E),padreDe(E,B).
nietoDe(A,B):- abueloDe(B,A).
bisNietoDe(A,B):- bisAbueloDe(B,A).
tataraNietoDe(A,B):- tatarAbueloDe(B,A).

hermanoDe(A,B) :- padreDe(C,A), padreDe(C,B), A \== B.

tioDe(A,B):- hermanoDe(A,C),padreDe(C,B).
sobrinoDe(A,B):- tioDe(B,A).
tioAbueloDe(A,B):-hermanoDe(A,C),abueloDe(C,B).
sobrinoNietoDe(A,B):-tioAbueloDe(B,A).
bisTioDe(A,B):-hermanoDe(A,C),bisAbueloDe(C,B).
bisSobrinoDe(A,B):-bisTioDe(B,A).
primoDe(A,B):- padreDe(C,A), padreDe(D,B),hermanoDe(C,D).

familiarDe(A,B) :- padreDe(A,B).
familiarDe(A,B) :- abueloDe(A,B).
familiarDe(A,B) :- hermanoDe(A,B).
familiarDe(A,B) :- hijoDe(A,B).

esFeliz(A):- padreDe(A,_).







