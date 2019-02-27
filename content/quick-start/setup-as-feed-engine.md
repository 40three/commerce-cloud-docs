---
title: "Setup as feed engine"
date: 2019-02-26T11:02:05+01:00
type: "post"
weight : 2
---

When talking about "feed engine setup", we assume that you edit your product data elswhere, e.g. in your webshop or another PIM and just want to use our solution to distribute your product information as "feeds".

While our software is exactly the same as when we talk about a "PIM setup", we can ignore many pim specific features and take a simplified route.

## Define Product Attributes
Go to settings > attributes and define which attributes you want to import. The minimal list could be:

* name (text)
* description (text)
* price (money)
* gtin (text)
* article_number (text)

## Define a Product Type
We don't need multiple types of products in this simple case, so let's add a single type "default".

1. Go to settings > product types
2. Click "add" (top right)
3. Name it "Default"
4. Add all attributes
5. Save it and we're done

Now we can manually add or automatically import products.

## Define Data Import
We assume that you have your product data somewhere and want to import them automatically daily or every hour.

### Setup Export
Go to the system where your products are stored and create an export "feed". Let's use CSV for this example. At the end your webshop (or wherever you want to read your products from) should

* Provide an URL where we can read all your products
* Contain one column for every attribute you've defined in our system

### Import the Feed
Now we have to tell our system where we can find the products.

1. Go to "Sources"
2. Click "add"
3. Name it e.g. "Webshop"
4. Go to tab "Source" and provide the URL of your webshop export
5. Go to tab "Data Sets" and click "add"
6. Map the fields in your export file to the attributes in our system
7. Save and that's it.

After the next import run, you'll see your products in the products list.

## Next Steps
Now we see all products, let's distribute them and [create a first feed](../create-your-first-feed).

