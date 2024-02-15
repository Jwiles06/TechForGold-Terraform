# Route 53 alias record for the CloudFront distribution
resource "aws_route53_record" "www" {
  zone_id = "Z08885424JO0XI2RFETE"
  name    = "technology4gold.com"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}
