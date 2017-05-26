---
title: Open Access at Mia
query: 'rights:"Public Domain"'
---

The mission of the Minneapolis Institute of Arts includes making the outstanding works of art in its collections accessible to a global audience – both the objects and what we know about them. Wherever possible, this information will be shared free of charge and with few or no restrictions on its use.

## What we share

### Metadata

[Our metadata is available as JSON on Github.](https://github.com/artsmia/collection)

Download it if you're interested in exploring data about what art is held in the museum's collection.

### Images

Images of artworks in Mia's collection are available for download.  The display and available download size of these images reflects the copyright status of the artwork, plus any additional limited usage rights granted to Mia by the rights-holders in these works.

<!-- image rights types: (`curl 'https://search.artsmia.org/*?size=1' | jq -r '.aggregations.Rights.buckets[].key' | sed 's/^/* /g'`) -->

Find the download button (<span class="material-icons">file_download</span>) on an [artwork page](https://collections.artsmia.org/art/13611). [Public Domain](/search/rights_type:"Public Domain") artworks can be downloaded in high resolution, while other works [protected by copyright, or where copyright status is not yet known](/search/-rights_type:"Public Domain") are available at a smaller size.

[A number of our images are available on Wikipedia/Wikimedia Commons](https://www.wikidata.org/wiki/Wikidata:WikiProject_sum_of_all_paintings/Collection/Minneapolis_Institute_of_Art).

### 3D models

[We host a number of public 3D models on Sketchfab](https://sketchfab.com/artsmia). As they're uploaded, we also display [3D models on our collections site](https://collections.artsmia.org/search/_exists_:%22related:3dmodels%22) - find the "show 3D model" button.

### Source code

Much of the code that powers this website and other museum projects are developed ['open source as we go'](https://medium.com/barnes-foundation/rethinking-the-museum-collection-online-e3b864d8bb39#a43a), to share what we're doing with colleagues at other museums and anybody else that's interested. Some of it is a mess, but [dive in at our GitHub page if you're brave](https://github.com/artsmia).  

[Here's the source code for this page](https://github.com/artsmia/collection-info/blob/gh-pages/open-access.md).

## TODO

We're constantly working to make improvements to our technical systems. Here are a few things we would like to accomplish:

- Add CSV-formatted data to complement the JSON formatted data
- Release high resolution images of all [digitized `Public Domain`](https://collections.artsmia.org/search/rights:%22Public%20Domain%22%20image:valid) works
- Implement standardized [Rights Statements](http://rightsstatements.org/)
