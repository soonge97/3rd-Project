# Worker node role
resource "aws_iam_role" "Node-Group-Role" {
  name = "EKSNodeGroupRole"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = aws_iam_role.Node-Group-Role.name
}

resource "aws_iam_role_policy_attachment" "AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = aws_iam_role.Node-Group-Role.name
}

resource "aws_iam_role_policy_attachment" "AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = aws_iam_role.Node-Group-Role.name
}

# Node Group 생성
resource "aws_eks_node_group" "PRD-NG" {
  cluster_name    = aws_eks_cluster.prd-cluster.name
  node_group_name = "t3_large-node_group"
  node_role_arn   = aws_iam_role.Node-Group-Role.arn
  subnet_ids      = [aws_subnet.PRD-PRI-01-2A.id, aws_subnet.PRD-PRI-01-2C.id]

  tags = {
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "k8s.io/cluster-autoscaler/prd-cluster" = "owned"
  }

  scaling_config {
    desired_size = 2
    max_size     = 4
    min_size     = 2
  }

  ami_type       = "AL2_x86_64"
  instance_types = ["t3.large"]
  #capacity_type  = "ON_DEMAND"
  disk_size = 20

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy
  ]
}

# Node Group 생성
/*resource "aws_eks_node_group" "DEV-NG" {
  cluster_name    = aws_eks_cluster.dev-cluster.name
  node_group_name = "t3_large-node_group"
  node_role_arn   = aws_iam_role.Node-Group-Role.arn
  subnet_ids      = [aws_subnet.DEV-PRI-01-2A.id, aws_subnet.DEV-PRI-01-2C.id]

  tags = {
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "k8s.io/cluster-autoscaler/dev-cluster" = "owned"
  }

  scaling_config {
    desired_size = 2
    max_size     = 4
    min_size     = 2
  }

  ami_type       = "AL2_x86_64"
  instance_types = ["t3.large"]
  #capacity_type  = "ON_DEMAND"
  disk_size = 20

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy
  ]
}*/
