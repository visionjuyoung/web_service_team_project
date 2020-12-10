function CheckAddPlayer() {
    

    document.newPlayer.submit();
}


                            function func_day1() {     
                            	var popupX = (document.body.offsetWidth / 2) - 100;
                            	var popupY= (window.screen.height / 2) - 80;                       

  							    var q = document.getElementsByClassName("day1");
  							    var k = window.open("sss.jsp","",'status=no, height=160, width=200, left='+ popupX + ', top='+ popupY);  							  
  							    for(i=0; i<2; i++)
							    {
							      k.document.write(q[i].innerHTML);
							      k.document.write('<hr>');
							    } 
                            }
           