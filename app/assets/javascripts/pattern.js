$( function() {
 $('#stipple_table td').unbind("click").click( function() {
    var stipple = $(this).children(":first").val();
    if (stipple == '0') {
      $(this).css('background-color', 'black'); 
      $(this).children(":first").val('1'); 
    } else if (stipple == '1') {
      $(this).css('background-color', 'white');
      $(this).children(":first").val('0');
    }
  } );

  $("#commit").unbind("click").click( function() {
    //combine all of the ids
    var stipple_num = '';
    $("#stipple_table td").each( function() {
      stipple_num += $(this).children(":first").val();
    });
    //update the input field
    $("#stipple_pattern").val(stipple_num);
  } );
} );
