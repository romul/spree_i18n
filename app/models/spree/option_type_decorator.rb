module Spree
  OptionType.class_eval do
    translates :name, :presentation, fallbacks_for_empty_translations: true
    include SpreeI18n::Translatable
  end if OptionType.table_exists?
end
