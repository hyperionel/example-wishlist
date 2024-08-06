Context:
You are working on an e-commerce platform built with Ruby on Rails. The platform has a feature where users can create wishlists of products they are interested in purchasing later. We need to implement the functionality that allows users to share their wishlists with others.

Requirements:

Models and Associations:

Assume you have a User model and a Product model already set up.
Create a Wishlist model that belongs to a User.
Create a WishlistItem model that belongs to both a Wishlist and a Product.
Feature Implementation:

Implement the ability for a user to create a wishlist, add products to it, and share the wishlist with other users via a unique shareable link.
When the wishlist is shared, the recipient should be able to view the wishlist without needing to log in.
Ensure that each wishlist has a unique, secure token in its URL for sharing purposes.
Controller Actions:

Implement the necessary controller actions to create a wishlist, add products to a wishlist, and share the wishlist.
Implement the necessary routes and views to handle these actions.
Security Considerations:

Ensure that only the owner of the wishlist can modify it.
Make sure the shareable link is secure and cannot be easily guessed.
Bonus:

Implement a feature that allows users to mark products in a shared wishlist as purchased, so others know what has already been bought.
Technical Details:

Assume that the application is using Rails 6 or higher.
You can use any Rails built-in tools or gems you find appropriate.
Testing with RSpec is encouraged, but not mandatory within the time constraint.
Discussion Questions (After Coding):
How would you handle scalability if the application needs to support millions of users and shared wishlists?
What are some potential security concerns with shareable links, and how might you mitigate them?
How would you handle performance if the wishlist had thousands of items?
