/**
 * Displays the specified notification at location XYZ.
 *
 * @param argument[0]
 *        The message to display.
 *
 * @param argument[1]
 *        The background color of the message.
 *
 * @param argument[2]
 *        The foreground color of the message.
 */
 
var canProceed = is_undefined(argument[0]) == false;
canProceed = is_undefined(argument[1]) == false;
canProceed = is_undefined(argument[2]) == false;

for (var i = 0 ; i < instance_number(obj_messageText) ; i++) {
    var tmp = instance_find(obj_messageText, i);
    canProceed &= tmp.text != argument[0];
}
 
if (canProceed) {
    var obj = instance_create(mouse_x, mouse_y, obj_messageText);
    obj.foregroundColor = argument[2];
    obj.backgroundColor = argument[1];
    obj.text = argument[0];
}
