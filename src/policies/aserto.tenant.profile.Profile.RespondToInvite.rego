package aserto.tenant.profile.Profile.RespondToInvite

default allowed = false

# should always be able to accept your invites
allowed {
  u = input.user

  u.id != ""
}
