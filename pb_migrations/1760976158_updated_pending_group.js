/// <reference path="../pb_data/types.d.ts" />
migrate((app) => {
  const collection = app.findCollectionByNameOrId("pbc_459406268")

  // update collection data
  unmarshal({
    "name": "pending_group_requests"
  }, collection)

  // add field
  collection.fields.addAt(2, new Field({
    "cascadeDelete": false,
    "collectionId": "_pb_users_auth_",
    "hidden": false,
    "id": "relation415535525",
    "maxSelect": 1,
    "minSelect": 0,
    "name": "requested_by",
    "presentable": false,
    "required": true,
    "system": false,
    "type": "relation"
  }))

  // add field
  collection.fields.addAt(3, new Field({
    "cascadeDelete": true,
    "collectionId": "_pb_users_auth_",
    "hidden": false,
    "id": "relation2375276105",
    "maxSelect": 1,
    "minSelect": 0,
    "name": "user",
    "presentable": false,
    "required": true,
    "system": false,
    "type": "relation"
  }))

  return app.save(collection)
}, (app) => {
  const collection = app.findCollectionByNameOrId("pbc_459406268")

  // update collection data
  unmarshal({
    "name": "pending_group"
  }, collection)

  // remove field
  collection.fields.removeById("relation415535525")

  // remove field
  collection.fields.removeById("relation2375276105")

  return app.save(collection)
})
