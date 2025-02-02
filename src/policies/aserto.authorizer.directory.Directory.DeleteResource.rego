package aserto.authorizer.directory.Directory.DeleteResource

default allowed = false

# global role
allowed {
  u = input.user

  some i
  data.roles.roles[u.attributes.roles[i]].perms["aserto.authorizer.directory.Directory.DeleteResource"].allowed
}

# tenant context role
allowed {
  u = input.user
  t = input.resource["key"]
  a = u.applications[t]

  some i
  data.roles.roles[a.roles[i]].perms["aserto.authorizer.directory.Directory.DeleteResource"].allowed

  u.id != input.resource["id"]
}
