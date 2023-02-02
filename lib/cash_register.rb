class CashRegister
    attr_reader :items
    attr_accessor :total, :discount

    def initialize(employee_discount=0)
        @discount = employee_discount
        #total is total amount of money in cash register
        @total = 0
        #keep track of all items every purchased with cash retister
        @items = []
        @last_item = 0
    end

    def add_item(title, price, quantity=1)
        @total += price*quantity
        # @items << title
        @last_item = price
        quantity.times do @items << title end
    end
    def apply_discount
        #is@discount == 0
        if @discount ==0
            return "There is no discount to apply."
        else
        @total -= (@total * (@discount/100.0))
        return   "After the discount, the total comes to $#{@total.to_i}."
    end
    end
    def void_last_transcation
        #subtract from total
        #remove from items
        @total -= @last_item
        @last_item = 0
        @items.pop()

    end
    end