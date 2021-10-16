#this blocks creates a perring connection between VPC
resource "aws_vpc_peering_connection" "foo" {
  vpc_id        = "vpc-023d1f3454c7653a5" #vpc_id specifies to acceptor VPC
  peer_vpc_id   = "vpc-08d7542d173a3c6ce"    #peer_vpc_id specifies to requestor VPC
 # peer_owner_id = data
  #peer_region = ""
}