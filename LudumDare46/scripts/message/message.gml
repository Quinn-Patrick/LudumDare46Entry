text = argument0;

newMessage = instance_create_depth(1000, irandom_range(64,400), 1, obj_message);
newMessage.body = text;