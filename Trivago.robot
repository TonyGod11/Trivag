*** Settings ***
Library  SeleniumLibrary

Resource  ../Resourses/Page object/LandingPage.robot
Resource  ../Resourses/Page object/Contact Form.robot
Resource  ../Resourses/Page object/Footer.robot
Resource  ../Resourses/Page object/LandingPage.robot
Resource  ../Resourses/Page object/TopNav.Robot

*** Keywords ***

Open Browser To Login Page for trivago
    Load Page Trivago


Open Search page
  TopNav.Enter Search Term

Input text in search field
  Wait Until Page Contains Element  ${Input}  5
  TopNav.Submit Search

Make sure, that page with search results
  Wait Until Page Contains   Search Results



Trivago Page Should Be Open
    Title Should Be    trivago Magazine


Go to Contact form

    Go to Contact forma


Fill In contact form
    Select Window    new
    Fill In contact forma

Make sure, that form is sent
    Successful message

Subscribe action
    Subscribe



