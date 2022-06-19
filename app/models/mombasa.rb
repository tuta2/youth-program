class Mombasa < ApplicationRecord
  before_create :create_total
  before_save :create_total

  validates :sub_county, presence: true
  validates :investiture_sungura, presence: true
  validates :investiture_chipukizi, presence: true
  validates :investiture_mwamba, presence: true
  validates :investiture_jasiri, presence: true

  default_scope {order('mombasas.created_at ASC')}

  def create_total
    self.total = self.investiture_sungura + self.investiture_chipukizi + self.investiture_mwamba + self.investiture_jasiri
  end
end
