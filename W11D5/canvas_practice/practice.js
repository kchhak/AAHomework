document.addEventListener("DOMContentLoaded", function(){
  const myCanvas = document.getElementById("mycanvas");
  myCanvas.width = 1000;
  myCanvas.height = 500;

  const ctx = myCanvas.getContext("2d");
  ctx.fillStyle = 'blue';
  ctx.fillRect(0, 0, 100, 300);

  ctx.beginPath();
  ctx.arc(120, 150, 50, -.5, .7, true);
  ctx.strokeStyle = 'purple';
  ctx.lineWidth = 31;
  ctx.stroke();
  ctx.fillStyle = "white";
  ctx.fill();

  ctx.beginPath();
  ctx.arc(250, 150, 50, 0, 2*Math.PI, true);
  ctx.strokeStyle = 'red';
  ctx.lineWidth = 31;
  ctx.stroke();
  ctx.fillStyle = "white";
  ctx.fill();

  ctx.beginPath();
  ctx.arc(350, 150, 50, 0, 2 * Math.PI, true);
  ctx.strokeStyle = 'green';
  ctx.lineWidth = 20;
  ctx.stroke();

  ctx.fillStyle = 'orange';
  ctx.fillRect(400, 50, 20, 150);
  ctx.fillRect(400, 190, 150, 20)
});
