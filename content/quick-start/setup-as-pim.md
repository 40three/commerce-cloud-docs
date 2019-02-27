---
title: "Setup as PIM"
date: 2019-02-26T11:02:05+01:00
type: "post"
weight : 2
---

Goal of a product information management system is to be the single source of truth for all your product data in best possible quality. You can store text information as well as binary assets and categories but first, let's take a look at your product description.

## Product Attributes
The first important step is to understand that we must not store all product data in one big text field. We need more detailed information in dedicated fields. We call this fields "product attributes".

Example:

* Wrong: one text attribute "description" containing "... weight: 200g"
* Correct: Separate attribute "weight" with value "200g"

### Attribute Sections
An attribute is always part of an attribute section. Just a group for better readability.

Example:

* Section "Technical details" with attributes "power consumtion", "voltage", ...
* Section "Common" with "name", "long description", "short description", "price", ...

## Product Types
Different products will need different attributes. For shoes we'll need a "size" and "material" attribute while both of them make no sense for computer processors. That's where "product types" come into play. They define what attributes we have for each product type.

## Add Your First Product

1. Go to settings > attributes and add some first attributes (e.g. "name" and "description")
2. Go to settings > product types and add your first product type (e.g. "default") and add some or all of your attributes.
3. Got to catalog and click "+" (top right) to add your first product.