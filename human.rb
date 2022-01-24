require './animal'
require './thinkable'

class Human < Animal
  
  attr_accessor :hobby
  
  def initialize(name, age, hobby)
    #NG: super(self.name, self.age)→これはself.nameとself.ageが定義されていないから空の値が代入されてしまう
    super(name, age)
    self.hobby = hobby
  end
  #def initialize(p_name, p_age, p_hobby)

    #super(p_name, p_age)
    #self.hobby = p_hobby
  #end
  
  #全角の空白が1つでもあるとエラーを起こす（後でミス探しの時にめっちゃ分かりにくいので注意）
  
  include Thinkable

end