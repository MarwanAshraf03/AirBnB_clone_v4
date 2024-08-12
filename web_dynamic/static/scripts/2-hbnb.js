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
    $.ajax({
        type: "GET",
        url: "http://localhost:5001/api/v1/status/",
        success: function (data) {
            if (data.status == "OK")
                $("div#api_status").addClass("available");
            else
                $("div#api_status").removeClass("available");
        },
        error: function() {
            $("div#api_status").removeClass("available");
        }
    });    
})