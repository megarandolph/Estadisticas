
function load_combo(Url, Object, SelectedText) {
    var count = 0
    $(function () {
        $.getJSON(Url, null, function (data) {
            $(Object).fillSelect(data);
        });
    });

    $.fn.clearSelect = function () {
        return this.each(function () {
            if (this.tagName === 'SELECT')
                this.options.length = 0;
        });
    }

    $.fn.fillSelect = function (data) {
       
        return this.clearSelect().each(function () {
            if (this.tagName === 'SELECT') {
                var dropdownList = this;

                //Add default Value
                var option = new Option(SelectedText, "-1");
                dropdownList.add(option);

                count = data.length;
                $.each(data, function (index, optionData) {

                    option = new Option(optionData.Text, optionData.Value);
                    dropdownList.add(option);
                    if (!--count) {
                        
                        if ($(dropdownList).data('id')) {
                            $(dropdownList).val($(dropdownList).data('id'))
                        }
                    }
                })
            }
        });
    }

}

