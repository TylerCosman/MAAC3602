/** @return The total number of enemies killed on the level. */
var canProceed = scr_misc_isVariableInitialized(global.levelStats);

if (scr_misc_isVariableInitialized(global.levelStats)) {
    var levelData = ds_map_find_value(global.levelStats, room);
    return levelData[28];
}