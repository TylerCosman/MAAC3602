/**
 * Clears any existing control objects.
 * Creates a new control object for the Build state and sets all of the initial tower
 * data based on the specified index.
 * Sets the state to the Build state.
 *
 * @param argument[0]
 *        The ID of the tower, from the 'global.towers' array, that is being built.
 */

var canProceed = is_undefined(argument[0]) == false;
 
if (canProceed) {
    scr_state_clearControlObjects();
    
    var buildCont = instance_create(x, y, obj_control_buildState);
    buildCont.tower = global.towers[argument[0], 0];
    buildCont.towerCost = global.towers[argument[0], 1];
    buildCont.towerObj = global.towers[argument[0], 2];
    buildCont.towerSpr = global.towers[argument[0], 3];
    buildCont.towerRange = global.towers[argument[0], 4];
    buildCont.towerWeaponXOffset = global.towers[argument[0], 5];
    buildCont.towerWeaponYOffset = global.towers[argument[0], 6];
    
    scr_state_setBuild();
}