package aserto.authorizer.system.System.GetRuntime

# global role
allowed {
  u = input.user

  some i
  data.roles.roles[u.attributes.roles[i]].perms["aserto.authorizer.system.System.GetRuntime"].allowed
}
