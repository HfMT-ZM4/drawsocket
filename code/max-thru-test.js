
const Max = require('max-api');

Max.addHandler(Max.MESSAGE_TYPES.DICT, (dict) => {
    Max.outlet(dict);
});