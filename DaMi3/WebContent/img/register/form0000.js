(function(){
  $.extend( jQuery.fn , {
  	config:{
  		noSameClass:'',
  		 emptyClass:'',
  		customVaild:function(){
  			return true;
  		}
  	},
  	setConfig:function(key,value){
  		this.config[key] = value;
  	},
    validateItem:function( order , empty , error , repeat , succ , ev, dom ){
      var me = this;
      if( order && ($( "."+ empty +", ."+ error +", ."+ repeat , dom ).length > 0) ){
        return false ;
      }
      var isRequired = this.attr("isRequired") ;
      var val = this.val();
      if(this.attr('type') != 'password') val = $.trim(val);
      function classOpHp ( resule , cls ){
        if( resule ){
          me.parent().removeClass(empty).removeClass(error).removeClass(repeat).removeClass(succ);
          me.parent().addClass( cls );
          return true;
        }else{
          me.parent().removeClass( cls );
        }
      }
      var repeatEl = this.attr( "repeat" );
      if( repeatEl ){
        var val = $( repeatEl ).val();
        if(this.attr('type') != 'password') val = $.trim(val);
        classOpHp( this.val() !== val , repeat );
      }
      var emptySta = classOpHp( ( isRequired && val.length == 0 ) , empty );
      if( emptySta ){ return false; }
      var rule = this.attr("rule");
      if( rule != null ){
        var result = true , i = 0 ;
        rule = rule.split("{$}")
        while( i < rule.length ){
          var subrule = new RegExp( rule[ i++ ] );
          if( !subrule.test(val) ){
            result = false ;
            classOpHp( true , error );
            break ;
          }
        }
        !!result && classOpHp( false , error );
      }
      var parent = this.parent();
      
      if( !parent.hasClass( empty )  && !parent.hasClass( error ) && !parent.hasClass( repeat) ){
        parent.addClass(succ);
        if( !ev ){
          $(this).trigger("afterValidate")
        }
      }else{
        parent.removeClass(succ);
        if( !ev ){
          $(this).trigger("afterValidateFailed")
        }
      }
    },
    submit:function(){
      var me = this ;
      setTimeout(function(){
      	if(config.customVaild()){
        	me.dom.submit();
        }
      },20)
    },
    validate:function( order , empty , error , repeat , succ ){
    	var me =this;
      order = order || false;
      empty = empty || "empty" ;
      error = error || "error" ;
      repeat = repeat || "repeat" ;
      succ = succ || "succ" ;
      if( this[0].tagName.toUpperCase() == 'FORM' ){
        $(".item", this ).bind( "blur" , function( e ){
          $(this).validateItem( false , empty , error , repeat , succ );
        }).bind("focus",function(){
          $(this).parent().removeClass( [ empty , error , repeat , succ ].join(" ") );
        });
        this.bind("submit",function( e ){
          $(this).config.customVaild();
          var myId = $(this).attr( "id" );
          var _jqInput = $("#" + myId + " input");
          for(var i=0; i < _jqInput.length; i++){
            var tmp = $(_jqInput[i]);
            if( tmp.attr("isRequired") && $.trim( tmp.val() ) == "" ){
               me.addClass(me.config.emptyClass);
               return false;
            }
          }
          if( me.config.noSameClass && _jqInput.parent().hasClass(me.config.noSameClass) ){
            return false;   
          }
          $(".item", this ).bind("validateItem" , order , empty , error , repeat , succ , true, this.dom );
          if( $( "."+ empty +", ."+ error +", ."+ repeat , this ).length > 0 ){
            return false ;
          }
        });
      }
    }
  });
}());
