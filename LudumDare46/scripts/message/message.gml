text = argument0;

newMessage = instance_create_depth(1000, ((global.messageHeightSequence%4)+1)*100, 1, obj_message);
global.messageHeightSequence++;
newMessage.body = text;