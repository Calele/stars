// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
// = require jquery
// = require jquery_ujs
//= require twitter/bootstrap
// = require jquery.ui.tabs
// = require jquery.ui.sortable
// = require jquery.ui.droppable
//= require_tree .

$(document).ready(function() 
{
  var category_id
   function sortable()
   {
   $( "#sortable1" ).sortable(
  {
    cursor: 'crosshair',
    update: function(event, ui) 
    {
      var mass = [];
        
        $('#sortable1 .ui-state-default .table1 #l_id').each(function()
      {
        var kod =$(this).attr('attr');
        mass.push(kod);
      } ); 
      $.ajax({
        type: "POST",
        dataType: "json",
        url: "/first/new",
        data: {mass: JSON.stringify(mass), category_id: category_id}
      });
      $.ajax({
        type: "GET",
        dataType: "json",
        url: "/first/new",
        data: { category_id: category_id}
      });
    }
  }).disableSelection();
       var $tabs2 = $( "#tabs2" ).tabs();
}
  sortable();





  // $('#tabs2').click(function(){
  //   console.log(selected);
  //   $.post("/first/levels",
  //     {'id[]': selected}, "json"
  //     );
  // });

  $(".mycontent").click(function(){
    category_id = $(this).attr('category_id');
    var namber_of_tab = "#tabs-" + category_id;
    console.log(category_id);
    $.ajax({
    type: "GET",
    url: "first/new",  
    data: { category_id: category_id},
    success: function(html){
      $("#test").html(html);
      sortable();
    }   
    });
  });

  var $tab_items = $( "ul:first li", $tabs2 ).droppable(
  {
    accept: ".connectedSortable li",
    hoverClass: "ui-state-hover",
    drop: function( event, ui ) 
    {
      var $item = $( this );
      console.log($item);
      var $list = $( $item.find( "a" ).attr( "href" ) )
      .find( ".connectedSortable" );

      ui.draggable.hide( "slow", function() 
      {
        $tabs.tabs( "option", "active", $tab_items.index( $item ) );
        $( this ).appendTo( $list ).show( "slow" )
      });
    }
  });
});












  
// $(function() {
//     $( document ).tooltip();
//   });

// $('#tabs').click(function (e) {
//   e.preventDefault();
// 	$(this).parent().attr('class', 'active');
// });

// $('#tabs-2').click(function (e) {
//   e.preventDefault();
//   $(this).tab('activate');
// });