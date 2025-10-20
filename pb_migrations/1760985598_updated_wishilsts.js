/// <reference path="../pb_data/types.d.ts" />
migrate((app) => {
  const collection = app.findCollectionByNameOrId("pbc_3512317889")

  // update collection data
  unmarshal({
    "name": "wishlists"
  }, collection)

  return app.save(collection)
}, (app) => {
  const collection = app.findCollectionByNameOrId("pbc_3512317889")

  // update collection data
  unmarshal({
    "name": "wishilsts"
  }, collection)

  return app.save(collection)
})
