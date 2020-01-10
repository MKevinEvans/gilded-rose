require File.join(File.dirname(__FILE__), 'gilded_rose')

describe GildedRose do

  def create_item(name, sell_in, quality)
    items = [Item.new(name, sell_in, quality)]
    GildedRose.new(items).update_quality()
    items[0]
  end

  describe "#update_quality" do

  describe GildedRose do
    before(:each) do
      @item = create_item("foo", 10, 10)
    end

    it "does not change the name" do
      expect(@item.name).to eq "foo"
    end

    it "lowers the quality of an item" do
      expect(@item.quality).to eq(9)
    end

    it "lowers the sell_in value of an item" do
      expect(@item.sell_in).to eq(9)
    end
  end

    it "lowers the quality by 2 after the sell_in date" do
      item = create_item("foo", 0, 10)
      expect(item.quality).to eq(8)
    end

    it "never makes quality negative whenlowering by 1" do
      item = create_item("foo", 10, 0)
      expect(item.quality).not_to eq(-1)
    end
    
    it "never makes quality negative when lowering by 2" do
      item = create_item("foo", 0, 0)
      expect(item.quality).not_to eq(-2)
    end 

    it  "increases the quality of Aged Brie as it gets older" do
      item = create_item("Aged Brie", 10, 10)
      expect(item.quality).to eq(11)
    end

  end

  describe "an item" do

    it "has a sell_in value" do
      item = Item.new("foo", 10, 10)
      expect(item.sell_in).to eq(10)
    end

    it "has a quality value" do
      item = Item.new("foo", 10, 10)
      expect(item.quality).to eq(10)
    end

  end


end
