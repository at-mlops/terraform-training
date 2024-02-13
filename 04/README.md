Functions, data and conditions
==============================

Create a blob container in an existing storage account.

Reference the existing storage account from a previous task or an already
existing storage account  "atterraformvt5byn74" via a data object.

Create the blob container based on a variable name and a random string.  If the
resulting name is longer than 12 characters, shorten it to 12 characters (via
the substr() function).

If the storage account is yours from a previous task, add `storage_account =
"mine"` to the *container's* metadata. Otherwise add the metadata
`reuse_storage_account = "yes"` to the container's metadata.
