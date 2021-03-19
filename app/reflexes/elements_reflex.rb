class ElementsReflex < ApplicationReflex
    def sort
        # binding.pry
        elements = JSON.parse(element.dataset[:elements])
        elements.each do |element|
            element_record = Element.find(element['id'])
            element_record.update(position: element['position'])
        end
        @halted = true
    end
end