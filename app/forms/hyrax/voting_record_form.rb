# Generated via
#  `rails generate hyrax:work VotingRecord`
module Hyrax
  class VotingRecordForm < Hyrax::Forms::WorkForm
    self.model_class = ::VotingRecord
    self.terms += Tufts::Terms.shared_terms
    Tufts::Terms.remove_terms.each { |term| terms.delete(term) }
    self.required_fields = [:title, :displays_in]
    self.field_metadata_service = Tufts::MetadataService

    def self.model_attributes(_)
      attrs = super
      attrs[:title] = Array(attrs[:title]) if attrs[:title]
      attrs
    end

    def title
      super.first || ""
    end
  end
end
