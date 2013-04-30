# Add index to admin                  
Deface::Override.new(:virtual_path => "spree/layouts/admin",
                    :name => "log_entries_admin_tabs",
                    :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                    :text => "<%= tab(:log_entries, :url => spree.admin_log_entries_path) %>",
                    :disabled => false)

# Add entries to payment screen so we can see right there what the history is.
Deface::Override.new(:virtual_path => "spree/admin/payments/source_views/_gateway",
                    :name => "log_entries_to_payment_show",
                    :insert_after => "fieldset",
                    :partial => "spree/admin/log_entries/payment",
                    :disabled => false)

                                            