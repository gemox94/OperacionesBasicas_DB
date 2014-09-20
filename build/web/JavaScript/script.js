/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    $('#temp').select(function(event ){
        
        var id = $('#usuario').val();
        console.write("sss "+id);
        $.post('formularioUpdate',{
            id : id
        }, function(responseText){
            $('#table').html(responseText);
        })
        
    })
    
    
});
