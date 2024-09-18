*** Variables ***
${browser}                                      chrome
${site-url}                                     https://mqa2.xavlab.xyz/
${password}                                     Password@1
${username}                                     bisma.shah@telusinternational.com
${domain_name}                                  xd

# Invalid username and empty username
${invalid-username}                             invalid
${invalid_credentials_email}                    p@gmail.com
${empty-username}                               ${EMPTY}
${expected_username_error_validation-msg}       Email is not valid.
${expected_username_empty_validation-msg}       Please enter Email.

# Invalid domain and empty domain
${invalid_domain_name}                          invalid
${empty_domain_name}                            ${EMPTY}
${expected_domain_name_error_validation-msg}    Invalid Domain
${expected_domain_name_empty_validation-msg}    Please enter domain

# Invalid Password and empty password
${invalid_password}                             invalid
${empty_password}                               ${EMPTY}
${expected_password_error_validation-msg}       Authentication Failed
${expected_password_empty_validation-msg}       Please enter password

# Verify Forgot_domain-link
${expected_forgot_domain_linkSent_msg}          an email with list of user domains has been sent to the registered email address
# Verify Forgot_password_link
${expected_forgot_password_linkSent_msg}        A verification email has been sent to your email
${invalid_username_error_validation-msg}        Something Went Wrong
