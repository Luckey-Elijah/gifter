/// <reference path="../pb_data/types.d.ts" />
migrate((app) => {
  const collection = app.findCollectionByNameOrId("pbc_2366687641")

  // update collection data
  unmarshal({
    "name": "wishlist_items"
  }, collection)

  return app.save(collection)
}, (app) => {
  const collection = app.findCollectionByNameOrId("pbc_2366687641")

  // update collection data
  unmarshal({
    "name": "wishlist_item"
  }, collection)

  return app.save(collection)
})
