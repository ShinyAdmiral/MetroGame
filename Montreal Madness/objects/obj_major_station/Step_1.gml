/// @description manage Que
if (ds_queue_empty(queue)) exit;

//manage que
if (current_in_que == noone) current_in_que = ds_queue_dequeue(queue);
current_in_que.waiting_for_major = false;
if (current_in_que.line[|current_in_que.current_point] != id) current_in_que = noone;
