resource "aws_iam_user" "this" {

   count = 3
    name          = "${lookup(var.name, count.index)}"
    path          = "${var.path}"
    force_destroy = "${var.force_destroy}"
  }
resource "aws_iam_user_login_profile" "this" {
  count = 3

  user                    = "${lookup(var.name, count.index)}"
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
