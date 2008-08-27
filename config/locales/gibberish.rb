I18n.backend.store_translations :'gibberish', {
  # date and time formats
  :date => {
    :formats => {
      :default      => "%Y-%m-%d (ish)",
      :short        => "%e %b (ish)",
      :long         => "%B %e, %Y (ish)",
      :long_ordinal => lambda { |date| "%B #{date.day}ish, %Y" },
      :only_day     => lambda { |date| "#{date.day}ish"}
    },
    :day_names => %w(Sunday-ish Monday-ish Tuesday-ish Wednesday-ish Thursday-ish Friday-ish Saturday-ish),
    :abbr_day_names => %w(Sun-i Mon-i Tue-i Wed-i Thu-i Fri-i Sat-i),
    :month_names => [nil] + %w(January-ish February-ish March-ish April-ish May-ish June-ish
                               July-ish August-ish September-ish October-ish November-rish December-ish),
    :abbr_month_names => [nil] + %w(Jan-i Feb-i Mar-i Apr-i May-i Jun-i Jul-i Aug-i Sep-i Oct-i Nov-i Dec-i),
    :order => [:day, :month, :year]
  },
  :time => {
    :formats => {
      :default      => "%a %b %d %H:%M:%S %Z %Y (ish)",
      :time         => "%H:%M (ish)",
      :short        => "%d %b %H:%M (ish)",
      :long         => "%B %d, %Y %H:%M (ish)",
      :long_ordinal => lambda { |time| "%B #{time.day}ish, %Y %H:%M" },
      :only_second  => "%S (ish)"
    },
    :am => '',
    :pm => ''
  },

  # date helper distance in words
  :datetime => {
    :distance_in_words => {
      :half_a_minute       => 'a half-ish minute',
      :less_than_x_seconds => ['less than 1 second', '{{count}}ish seconds'],
      :x_seconds           => ['1 second', '{{count}}ish seconds'],
      :less_than_x_minutes => ['less than a minute', '{{count}}ish minutes'],
      :x_minutes           => ['1 minute', '{{count}}ish minutes'],
      :about_x_hours       => ['about 1 hour', '{{count}}ish hours'],
      :x_days              => ['1 day', '{{count}}ish days'],
      :about_x_months      => ['about 1 month', '{{count}}ish months'],
      :x_months            => ['1 month', '{{count}}ish months'],
      :about_x_years       => ['about 1 year', '{{count}}ish year'],
      :over_x_years        => ['over 1 year', '{{count}}ish years']
    }
  },

  # numbers
  :number => {
    :format => {
      :precision => 3,
      :separator => ',',
      :delimiter => '.'
    },
    :currency => {
      :format => {
        :unit => 'Gib-$',
        :precision => 2,
        :format => '%n %u'
      }
    }
  },

  # Active Record
  :active_record => {
    :error => {
      :header_message => ["Couldn't save this {{object_name}}: 1 error", "Couldn't save this {{object_name}}: {{count}} errors."],
      :message => "Please check the following fields, dude:"
    }
  },
  :active_record => {
    :error_messages => {
      :inclusion => "ain't included in the list",
      :exclusion => "ain't available",
      :invalid => "ain't valid",
      :confirmation => "don't match its confirmation",
      :accepted  => "gotta be accepted",
      :empty => "gotta be given",
      :blank => "gotta be given",
      :too_long => "is too long-ish (no more than {{count}} characters)",
      :too_short => "is too short-ish (no less than {{count}} characters)",
      :wrong_length => "ain't got the right length (gotta be {{count}} characters)",
      :taken => "ain't available",
      :not_a_number => "ain't a number",
      :greater_than => "gotta be greater than {{count}}",
      :greater_than_or_equal_to => "gotta be greater than or equal to {{count}}",
      :equal_to => "gotta be equal to {{count}}",
      :less_than => "gotta be less than {{count}}",
      :less_than_or_equal_to => "gotta be less than or equal to {{count}}",
      :odd => "gotta be odd",
      :even => "gotta be even"
    }
  },
  :txt => {
    :main_title => "Localizing Rails (ish)",
    :app_name => "Demo Applicationomnomnom",
    :sub_title => "how to localize your app with Rails' new i18n features",
    :contents => "Contents",
    :menu => {
      :introduction => "Introductionarinos",
      :about => "Abouteroo",
      :setup => "Setupupup",
      :date_formats => "Date formatsks",
      :time_formats => "Time formatsks"
    },
    :about => {
      :title => "About this demo app",
      :author => "This demo app was written by {{mail_1}}.",
      :feedback => "If you have any feedback, please feel free to drop me a line. Also visit {{blog_href}} where I regularly blog about Rails and other stuff.",
      :licence => "This demo app and all its contents are licensed under the {{licence_href}}. If you want to use it in ways prohibited by this license, please contact me and ask my permission."
    },
    :active_record => {
      :too_lazy => "No examples here since I'm too lazy to think of attributes to show <strong>all</strong> custom error messages. ;-)",
      :easy_to_understand => "It's quite easy to understand, though."
    }, 
    :date_formats => {
      :rails_standards_work => "Rails standard formats (Date::DATE_FORMATS) still work:"
    },
    :date_helper => {
      :date_time_title => "Date/Time distance",
      :forms_title => "Forms"
    },
    :index => {
      :introduction => "Lately, a lot of work has been done by {{sven_blog}} and {{sven_github}} to facilitate future internationalization and localization of Rails.",
      :story_so_far => "This demo app tries to show you how you can use the features that have been implemented so far to localize big parts of your Rails application."
    },
    :number_helper => {
      :note_one => "Note: <code>number_to_phone</code> hasn't been localized yet and probably never will be - at least not in core. Look out for new internationalization/localization plugins like a new version of {{globalize}} as they will probably support stuff like that.",
      :note_two => "Another note: <code>number_to_currency</code>, <code>number_to_percentage</code> and <code>number_to_human_size</code> all use <code>number_with_precision</code> internally and <code>number_with_precision</code> uses <code>number_with_delimiter</code> internally."
    },
    :setup => {
      :freezing_edge_and_adding => "Freezing Edge and installing the localized_dates plugin",
      :you_need_to_be_on_edge => "You need to be on Edge Rails in order to use the Rails i18n features:",
      :date_time_formats => "For date and time formats, you also need to install the {{localized_dates_link}}:",
      :config_locale => "Configuring the locale",
      :best_place => "The best place to put your locale configuration, in my opinion, is <code>config/locales</code>. The localized_dates plugin will copy two locales, en-US and de-AT, in this directory. You can extend or modify them and also create new locales.",
      :locale => "Here's the demo locale that was used for this demo application:",
      :defaults => "You also need to set up the default locale and/or locale in your <code>environment.rb</code> or an initializer.",
      :locale_structure_title => "A word on the structure of locales",
      :locale_structure_number => "You may have noticed that inside the <code>:number</code> part of the locale, we defined <code>:format</code> and <code>:currency</code>. In general, locales are structured hierarchically - i.e. a currencies are numbers, percentages are numbers, etc. <code>:currency</code> can either override the basic <code>:format</code> settings (in our case, we set <code>:precision</code> to 2 instead of 3) or extend them (we add two new options, <code>:unit</code> and <code>:format</code>).",
      :locale_structure_date_time => "The same holds true for dates and times: If needed, <code>:datetime</code> and <code>:time_with_zone</code> can be used to specifically address formatting of their respective types instead of just relying on the settings for <code>:time</code>. Note, however, that usually you want to use the same formats as <code>:time</code>."   
    },
    :time_formats => {
      :rails_standards_work => "Rails standard formats (Time::DATE_FORMATS) still work:"
    },
    :ipe =>{
      :click => "click here boyo!"
    }
  }
}