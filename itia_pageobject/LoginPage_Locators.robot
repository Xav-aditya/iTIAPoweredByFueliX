*** Variables ***
${txt_loginpageusername}                                name:username
${txt_loginpagedomain}                                  xpath://*[@placeholder='Enter domain']
${txt_forgotpasswordpagedomain}                         name:domain

${txt_loginpagepassword}                                xpath://*[@placeholder='Enter password']
${txt_clickloginbutton}                                 xpath://*[text()='Login']
${txt_username_error_validation}                        xpath://div[@class='MuiAlert-message css-1xsto0d']
${txt_domain_name_error_validation}                     xpath://div[@class='MuiAlert-message css-1xsto0d']
${txt_password_error_validation}                        xpath://div[@class='MuiAlert-message css-1xsto0d']
${txt_domain_name_empty_validation}                     xpath://*[@class='error-txt']
${txt_password_empty_validation}                        xpath://*[@class='error-txt']
${link_forgot_domain}                                   xpath://*[@title="Forgot Domain"]
${link_forgot_password}                                 xpath://*[@title="Forgot Password"]
${invalid_email}                                        xpath://span[@class='error-txt']
${txt_forgot_domain_linkSent_validation_message}        xpath://div[@class='MuiAlert-message css-1xsto0d']
${txt_forgot_domain_submit-button}                      xpath://*[@type="submit"]

${txt_forgot_password_linkSent_validation_message}      xpath://div[@class='MuiAlert-message css-1xsto0d']
${txt_forgot_password_submit-button}                    xpath://*[@type="submit"]

# logout page elements
${cli_profile}                                          xpath://*[@class='user-profile-image']
${cli_logout}                                           xpath://li[contains(text(),'Logout')]

# invalid error messages
${invalid_email_error_msg}                              xapth://span[@class='error-txt']
