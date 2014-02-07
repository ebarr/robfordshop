$(function () {
    $( ".item" ).draggable({
        helper: "clone"
    });

    $( ".cart" ).droppable({
        activeClass: "droppable",
        hoverClass: "hover",
        tolerance: "touch",
        drop: function( event, ui ) {
            var listObj = $(this).find('ul');
            listObj.append(ui.draggable.clone());
        }
    });
});
