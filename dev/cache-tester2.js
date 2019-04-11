

let bigarray = [];
for( let i = 0; i<10000; i++)
{
    bigarray.push({
        id: i,
        new: "line"
    });
}

let bigtest = {
    key: "svg",
    val: bigarray
};

let test = {
		key : "svg",
		val : [{
				new : "line",
				id : "foo",
				x1 : 10,
				x2 : 20,
				y1 : 10,
				y2 : 10
			}
, 			{
				new : "line",
				id : "bar",
				x1 : 10,
				x2 : 20,
				y1 : 10,
                y2 : 10,
                style: {
                    color: "black"
                }
			}
, 			{
				new : "g",
				id : "gg"
			}
, 			{
				new : "line",
				id : "ff",
				parent : "gg",
				x1 : 10,
				x2 : 20,
				y1 : 10,
				y2 : 10
			}]
}


let test2 = {
    key : "svg",
    val : [{
            id : "bar",
            x1 : 1000,
            style: {
                font: "big"
            }
        }
, 			{
            id : "ff",
            x1 : 22220
        },{
            id : "foo",
            x1 : 100
        }]
}

let test3 = {
    key: "svg",
    foo : 1
}

let state_cache = require('./drawsocket-cache.js');

console.time('t1');
state_cache.update("1", bigtest);
console.timeEnd('t1');

console.time('t1');
state_cache.get("1");
console.timeEnd('t1');
