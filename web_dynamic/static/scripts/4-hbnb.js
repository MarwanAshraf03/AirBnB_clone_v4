function places(elements) {
    elements.forEach(element => {
        $("section.places").append('<article><div class="title_box"><h2>' + element.name + '</h2><div class="price_by_night">$' + element.price_by_night + '</div></div><div class="information"><div class="max_guest">' + element.max_guest + 'Guest</div><div class="number_rooms">' + element.number_rooms + 'Bedroom</div><div class="number_bathrooms">' + element.number_bathrooms + 'Bathroom</div></div><div class="description">' + element.description + '</div></article>');
    });
 }
$("document").ready(() => {
    let list = []
    let idList = []
    $('input[type=checkbox]').change(function(){
        let string_id = "\"" + $(this).attr("data-id") + "\""
            if (this.checked) {
                if (!list.includes($(this).attr("data-name"))){
                    list.push($(this).attr("data-name"));
                    idList.push(string_id);
                }
                $(".amenities h4").text(list.toString());
            } else {
                if (list.includes($(this).attr("data-name"))){
                    list = list.filter(e => e !== $(this).attr("data-name"));
                    idList = idList.filter(e => e !== string_id);
                }
                $(".amenities h4").text(list.toString());
            }
            if (list.length == 0)
                $(".amenities h4").html("&nbsp;")
        });
    $.ajax({
        type: "GET",
        // url: "http://0.0.0.0:5001/api/v1/status/",
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
    $.ajax({
        type: "POST",
        // url: "http://0.0.0.0:5001/api/v1/places_search/",
        url: "http://localhost:5001/api/v1/places_search/",
        data: "{}",
        contentType: "application/json",
        success: function (response) {
            places(response);
        }
    });
    $("button").on("click", () => {
        $.ajax({
            type: "POST",
            // url: "http://0.0.0.0:5001/api/v1/places_search/",
            url: "http://localhost:5001/api/v1/places_search/",
            data: "{\"amenities\":[" + idList +"]}",
            contentType: "application/json",
            success: function (response) {
                $("section.places").html("");
                places(response);
            }
        });
    })
})