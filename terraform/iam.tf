#resource "aws_iam_policy" "iam_permissions_boundary" {
#  name = "github-actions-oidc-permissions-boundary-iam-policy"
#  policy = jsonencode({
#    Version = "2012-10-17"
#    Statement = [
#      {
#        Effect   = "Allow"
#        Action   = "*"
#        Resource = "*"
#      }
#    ]
#  })
#}

resource "aws_iam_role" "amplify_role" {
  name               = "AmplifyRole"
  #permissions_boundary = aws_iam_policy.iam_permissions_boundary.arn
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = [
            "amplify.eu-north-1.amazonaws.com",
            "amplify.amazonaws.com" 
          ]
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "amplify_admin_access" {
  role       = aws_iam_role.amplify_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
}