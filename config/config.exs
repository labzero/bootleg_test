# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :bootleg, app: "bootleg_test"
config :bootleg, build:
  [
    app: "bootleg_test",
    revision: "HEAD",
    host: "ec2-54-202-189-109.us-west-2.compute.amazonaws.com",
    user: "ubuntu",
    workspace: "/tmp/bootleg_test/svoynow/build",
    identity: "/Users/sashavoynow/.ssh/jenkins-ecs.pem",
    strategy: Bootleg.Strategies.Build.RemoteSSH
  ]
config :bootleg, deploy:
  [
    app: "bootleg_test",
    host: "ec2-54-202-189-109.us-west-2.compute.amazonaws.com",
    user: "ubuntu",
    deploy_to: "/home/test_app/bootleg_test/bootleg",
    identity: "/Users/sashavoynow/.ssh/jenkins-ecs.pem",
    strategy: Bootleg.Strategies.Deploy.RemoteSSH
  ]
config :bootleg, archive:
  [
    app: "bootleg_test",
    archive_directory: "/Users/sashavoynow/Downloads",
    max_archives: 2
  ]
#     import_config "#{Mix.env}.exs"
