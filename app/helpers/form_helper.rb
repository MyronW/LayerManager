module FormHelper
  def setup_pdk(pdk)
    Layer.all.each {|layer|
      pdk.pdk_layers.build(:layer => layer)
    }
    return pdk
  end
end
