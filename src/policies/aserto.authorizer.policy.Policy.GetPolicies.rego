package aserto.authorizer.policy.Policy.GetPolicies

default allowed = false

# global role
allowed {
  u = input.user

  some i
  data.roles.roles[u.attributes.roles[i]].perms["aserto.authorizer.policy.Policy.GetPolicies"].allowed
}
