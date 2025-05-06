resource "lab" "main" {
  title = "My First Lab"
  description = <<-EOF
  This is my first lab. Pushing a change to test.
  EOF

  layout "single_column" {
    reference = resource.layout.single_panel
    instructions {
      panel = "instructions"
    }
  }
 content {
   chapter "introduction" {
      title = "Introduction"
      page "first page" {
        reference = resource.page.first
      }
    }
  }
}