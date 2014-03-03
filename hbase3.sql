asds
scan 't3',{COLUMNS => 'f2:cq', VERSIONS => 4};

get 't3', 'r1', {COLUMN => 'f2:cq',  VERSIONS => 4};


put 't1','r1','f1:cq','value1';
put 't1','r1','f1:cq','value2';


create 't3', {NAME => 'f2', VERSIONS => 5, BLOCKCACHE => FALSE};

put 't3','r1','f2:cq','value1';
put 't3','r1','f2:cq','value2';
put 't3','r1','f2:cq','value3';
put 't3','r1','f2:cq','value4';
put 't3','r2','f2:cq','value4';

put 't3','r2','f2:c1','value4';

scan 't3';

COUNT 't3';

list;

describe 't3';

is_disabled 't3';
is_enabled 't3';

EXISTS 't3';

disable 't3';

enable 't3';

flush 't3';

flush 't3','t1';

delete 't3', 'r2', 'f2:c1';
deleteall 't3', 'r2', 'f2:c1';

split 't2';

DROP 't2';

truncate 't3'



