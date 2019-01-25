resource "aws_iam_user" "this" {
   //count = "${var.create_user && var.create_iam_user_login_profile ? 1 : 0}"

   count = 3
    name          = "${lookup(var.name, count.index)}"
    path          = "${var.path}"
    force_destroy = "${var.force_destroy}"
  }
resource "aws_iam_user_login_profile" "this" {
  //count = "${var.create_user && var.create_iam_user_login_profile ? 1 : 0}"
  count = 3

  user                    = "${lookup(var.name, count.index)}"
  pgp_key                 = "${var.pgp_key}"
  password_length         = "${var.password_length}"
  password_reset_required = "${var.password_reset_required}"
}

resource "aws_iam_group" "Analytics_Admin" {
    name = "Analytics_Admin"
    path = "/"
}
resource "aws_iam_group" "Analytics_Developer" {
    name = "Analytics_Developer"
    path = "/"
}
resource "aws_iam_group_membership" "admin-testuser" {
    //count = "${var.create_user && var.upload_iam_user_ssh_key ? 1 : 0}"
    count = 2 
    name = "admin-user-membership"
    users = "${var.admin}"
    group = "${aws_iam_group.Analytics_Admin.name}"
}
resource "aws_iam_group_membership" "developer" {
    count = 1
    name = "developer-user-membership"
    users = "${var.developer}"
    group = "${aws_iam_group.Analytics_Developer.name}"
}
