$("document").ready(() => {
    let list = []
    $('input[type=checkbox]').change(function(){
            if (this.checked) {
                if (!list.includes($(this).attr("data-name")))
                    list.push($(this).attr("data-name"));
                $(".amenities h4").text(list.toString());
            } else {
                if (list.includes($(this).attr("data-name")))
                    list = list.filter(e => e !== $(this).attr("data-name"));
                    // list.pop($(this).attr("data-name"));
                $(".amenities h4").text(list.toString());
            }
            if (list.length == 0)
                $(".amenities h4").html("&nbsp;")
        });
})