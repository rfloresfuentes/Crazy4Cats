class Reaction < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :kind, acceptance: {
    accept: %w[Genial Mal Aburrida Neutra Desinteresante Interesante]
  }

  def self.kinds
    %w[Genial Mal Aburrida Neutra Desinteresante Interesante]
  end
end
