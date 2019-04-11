const cluster = require('cluster');



if (cluster.isMaster) 
{

  let Max;

  try {
      Max = require('max-api');
  }
  catch (err) {}


  function log(msg)
  {
    if( Max )
      Max.post(process.pid, msg);
    else
      console.log(process.pid, msg);
  }

  log(`I am master #${process.pid}`);

  const worker = cluster.fork();

  worker.on('message', (msg)=>{
    log(msg);
  });

  worker.send({
    aaaa: 'foo',
    n: 1
  });
 

} 
else if (cluster.isWorker) 
{
 // log(`I am worker #${cluster.worker.id} pid: ${process.pid}`);

  process.on('message', (msg)=> {
	console.log("hi");
    process.send({
      reply: `thanks from ${process.pid}`, 
      received: msg
    });

  });
}