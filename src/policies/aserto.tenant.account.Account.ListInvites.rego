package aserto.tenant.account.Account.ListInvites

default allowed = false

# should always be able to read your own invites
allowed {
  u = input.user

  u.id != ""
}
