Feature: comment on blog
  I would like to post comments on the blog
  as a blog commentor
  So, I can contribute my voice to the conversation

  Scenario: comment on an existing blog post
    Given a post exists with title: "blog post", body: "content"
    When I go to the home page
    And I follow "blog post"
    And I fill in "Name" with "John Smith"
    And I fill in "Email" with "jsmith@example.com"
    And I fill in "Comment" with "Hear my voice"
    And I press "Submit my comment"

    Then I should see "Hear my voice" within "#comments"

    
