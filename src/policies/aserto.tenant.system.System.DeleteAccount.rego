package aserto.tenant.system.System.DeleteAccount

default allowed = false

# global role
allowed {
  u = input.user

  some i
  data.roles.roles[u.attributes.roles[i]].perms["aserto.tenant.system.System.DeleteAccount"].allowed
}
