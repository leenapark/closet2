var cloFlag=0;
		var styFlag=0;
		
		$("#closet").on("click",function(){
			if(cloFlag == 0){
				$("#closet_sub").slideDown(400);
				cloFlag=1;
				if(styFlag == 1){
					$("#styleZip_sub").slideUp(400);
					styFlag=0;
				}
			}
			else if(cloFlag==1){
				$("#closet_sub").slideUp(400);
				cloFlag=0;
			}
		});
		
		$("#styleZip").on("click",function(){
			if(styFlag == 0){
				$("#styleZip_sub").slideDown(400);
				styFlag=1;
				if(cloFlag == 1){
					$("#closet_sub").slideUp(400);
					cloFlag=0;
				}
			}
			else if(styFlag==1){
				$("#styleZip_sub").slideUp(400);
				styFlag=0;
			}
		});