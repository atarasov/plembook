# coding: utf-8
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'

  navigation.items do |primary|

    primary.item :main, 'Профиль', partner_root_url  do |sub_nav|
      # Add an item to the sub navigation (same params again)
      #sub_nav.item :key_2_1, 'name', url, options
    end

    # Add an item which has a sub navigation (same params, but with block)
    primary.item :events, 'Питомцы', events_url, :highlights_on => /\/events/  do |sub_nav|
      # Add an item to the sub navigation (same params again)
      #sub_nav.item :key_2_1, 'name', url, options
    end

    # You can also specify a condition-proc that needs to be fullfilled to display an item.
    # Conditions are part of the options. They are evaluated in the context of the views,
    # thus you can use all the methods and vars you have available in the views.
    #primary.item :key_3, 'Admin', url, :class => 'special', :if => Proc.new { current_user.admin? }

    # you can also specify a css id or class to attach to this particular level
    # works for all levels of the menu
    # primary.dom_id = 'menu-id'
    primary.dom_class = 'nav'

    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false

  end

end
