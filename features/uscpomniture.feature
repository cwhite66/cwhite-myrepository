Feature: I want to ensure that USCP Omniture analytics are being triggered across site
#home front
@analytics @omniture @homefront @ignore
Scenario: Omniture: Homepage
    Given I am visiting the rochester homefront
    When I trigger the Omniture Debugger
    Then I should see debug data
    Then prop "prop33" is "homepage"
    Then prop "prop26" is "reimagine"
    Then prop "prop16" is "homefront"
    Then prop "pageName" is "site:/"
    Then prop "eVar4" is "D=pageName"
    Then prop "prop17" is "D=ch"
    Then prop "prop18" is "D=ch"
    Then prop "prop19" is "D=ch"
    Then prop "prop20" is "D=ch"
    Then prop "prop23" is "url:/"
    Then prop "prop34" is "D=c33"
    Then prop "prop35" is "D=c33"
    Then prop "prop50" is "newpaper"
    Then prop "channel" is "home"
    Then prop "events" is "event3"
    Then prop "hier1" is "D=ch"
    Then prop "hier4" is "D=ch"

#any front
@analytics @omniture @news @ignore
Scenario: Omniture: News front
    Given I am visiting "/news/"
    When I trigger the Omniture Debugger
    Then I should see debug data
    Then prop "eVar4 " is "D=pageName"
    Then prop "prop11" is "no"
    Then prop "prop16" is "section front"
    Then prop "prop17" is "D=ch"
    Then prop "prop18" is "D=ch"
    Then prop "prop19" is "D=ch"
    Then prop "prop20" is "D=ch"
    Then prop "prop23" is "url:/news/"
    Then prop "prop26" is "reimagine"
    Then prop "prop33" is "D=ch"
    Then prop "prop34" is "news:main"
    Then prop "prop35" is "D=c34"
    Then prop "pageName" is "site:/news/"
    Then prop "channel" is "news"
    Then prop "events" is "event3"
    Then prop "hier1" is " D=ch"
    Then prop "hier4" is "D=ch"

      @analytics @omniture @news @ignore
      Scenario: Omniture: Subsection front (news/world)
        Given I am visiting "/news/world/"
        When I trigger the Omniture Debugger
        Then I should see debug data
        Then prop "eVar4 " is "D=pageName"
        Then prop "prop11" is "no"
        Then prop "prop16" is "sub-section front"
        Then prop "prop17" is "D=ch"
        Then prop "prop18" is "D=h1"
        Then prop "prop19" is "D=h1"
        Then prop "prop20" is "D=h1"
        Then prop "prop23" is "url:/news/world/"
        Then prop "prop26" is "reimagine"
        Then prop "prop33" is "D=ch"
        Then prop "prop34" is "D=h1"
        Then prop "prop35" is "news:world:main"
        Then prop "pageName" is "site:/news/world/"
        Then prop "channel" is "news"
        Then prop "events" is "event3"
        Then prop "hier1" is "news:world"
        Then prop "hier4" is "D=ch"

        @analytics @omniture @weather @ignore
        Scenario: Omniture: Weather front
          Given I am visiting "/weather/"
          When I trigger the Omniture Debugger
          Then I should see debug data
          Then prop "eVar4 " is "D=pageName"
          Then prop "prop11" is "no"
          Then prop "prop16" is "section front"
          Then prop "prop17" is "D=ch"
          Then prop "prop18" is "D=ch"
          Then prop "prop19" is "D=ch"
          Then prop "prop20" is "D=ch"
          Then prop "prop23" is "url:/weather/"
          Then prop "prop26" is "reimagine"
          Then prop "prop33" is "D=ch"
          Then prop "prop34" is "weather:main"
          Then prop "prop35" is "D=c34"
          Then prop "prop61" is "front - weather"
          Then prop "pageName" is "site:/weather/"
          Then prop "channel" is "weather"
          Then prop "events" is "event3"
          Then prop "hier1" is "D=ch"
          Then prop "hier4" is "D=ch"
