Feature: manage blog
  I would like to manage posts
  As a content producer
  So, I could produce value for my readers

  Scenario: create new blog post
    When I go to the home page
    And I follow "Create a new post"
    And I fill in "Title" with "A new blog post"
    And I fill in "Body" with "My new blog post"
    And I press "Create"

    Then I should see "post was created"
    And I should see "A new blog post"

  Scenario: view a blog post
    Given a post exists with title: "blog post", body: "content"
    When I go to the home page
    And I follow "blog post"

    Then I should see "content"

