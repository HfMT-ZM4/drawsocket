const svgPoints = require('svg-points');
const paper = require('paper');


const circle = {
  type: 'circle',
  cx: 50,
  cy: 50,
  r: 20
}

const d = svgPoints.toPath(circle)
console.log(d)

const path = {
    type: 'path',
    d: 'M200,300 Q400,50 600,300 T1000,300'
}
console.log( svgPoints.toPoints(path) );

var pathData = 'M100,50c0,27.614-22.386,50-50,50S0,77.614,0,50S22.386,0,50,0S100,22.386,100,50';
var paperpath = new paper.Path(pathData);
paperpath.fillColor = 'red';

//const p = new paper.Path('M200,300 Q400,50 600,300 T1000,300');
paperpath.segments.forEach( s => console.log('paper', s) );


// 'M50,30A20,20,0,0,1,50,70A20,20,0,0,1,50,30Z'


/*

so, we need:
- some kind of drawing UI
    straight lines
    curve points
    mouse drag
- path maniputions
    smooth (from complex path of straight lines) -- 
        see simplifyjs: http://mourner.github.io/simplify-js/
        and https://medium.com/@francoisromain/smooth-a-svg-path-with-functional-programming-1b9876b8bf7e
        and https://www.npmjs.com/package/chaikin-smooth
        and https://github.com/SatoshiKawabata/SVGCatmullRomSpline#readme
        https://www.npmjs.com/package/curve-interpolator

    convert shapes to path
    rotate
    scale
        https://github.com/fontello/svgpath -- looks good, manipulates point array
    
    convert to-from svg string to point array
        https://github.com/colinmeinke/svg-points
    

    * note that paths need to be parsed into a sequence of typed points in an array to be simplified/transformed
        where should the path data live?
        
    add points
    remove points
        
    which things should be in symbolist which in drawsocket?




*/