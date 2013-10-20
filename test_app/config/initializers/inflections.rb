#encoding: utf-8
# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end

require 'active_support/inflector'

# p 'home/sahil_z'.camelize
# p 'Home::SahilZ'.underscore
# p 'ducks'.classify

# X = 'test'
# p 'X'.safe_constantize
# p 'X'.constantize

# p 'a_b_c'.dasherize
# p 'ActiveRecord::CoreExtensions::String::Inflections'.demodulize
# p 'Message'.foreign_key 
# p 'employee_salary'.humanize 
# p 'sahil rocks'.parameterize('?')
# p ActiveSupport::Inflector.ordinal(2)
# p ActiveSupport::Inflector.ordinalize(2)
# p 'sahil'.pluralize(:en)
# p 'words'.singularize(:en)
# p 'egg_and_ham'.tableize    
# p 'x-men: the last stand'.titleize   


# I18n.backend.store_translations(:en, i18n: {
#   transliterate: {
#     rule: {
#       'Æ' => 'Asds',
#       'ø' => 'o',
#       'ü' => 'ue',
#       'ö' => 'oe'
#     }
#   }
# })
# p ActiveSupport::Inflector.transliterate('Ærøskøbing','?')


ActiveSupport::Inflector.inflections(:en) do |inflect|
  # inflect.acronym 'HTML'
  # inflect.acronym 'HTMLs'
  # inflect.acronym 'McDonald'
  # inflect.human  /tmp$/i, 'temporary'
  # inflect.irregular 'octopus', 'octopi'
  # inflect.plural /^(ox)$/i, '\1en'
  # inflect.singular /^(ox)en$/i, '\1'
  # inflect.uncountable %w( money information rice )
  # inflect.clear :plural #(Other options => :all, :singulars, :humans, :uncountables)
end

#Acronym
# p 'html'.camelize
# p 'html'.humanize
# p 'html'.titleize
# p 'MyHtml'.underscore

# p 'html'.pluralize.camelize

# p 'mcdonald'.classify

# clear
#p 'head'.pluralize

# Human
# p 'tmp'.titleize

# Irregular
# p 'octopus'.pluralize

# plural & singular
# p 'ox'.pluralize
# p 'oxen'.singularize

#uncountables

# p 'money'.pluralize