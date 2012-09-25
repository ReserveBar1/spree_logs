                    
Deface::Override.new(:virtual_path => "spree/layouts/admin",
                    :name => "log_entries_admin_tabs",
                    :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                    :text => "<%= tab(:log_entries, :url => spree.admin_log_entries_path) %>",
                    :disabled => false)


                                            