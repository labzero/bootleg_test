# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :bootleg, app: "test_app"
config :bootleg, build:
  [
    app: "test_app",
    revision: "HEAD",
    host: "ec2-54-202-189-109.us-west-2.compute.amazonaws.com",
    user: "ubuntu",
    workspace: "/tmp/test_app/svoynow/build",
    identity: "/Users/sashavoynow/.ssh/jenkins-ecs.pem",
    strategy: Bootleg.Strategies.Build.RemoteSSH
  ]
config :bootleg, deploy:
  [
    app: "test_app",
    host: "ec2-54-202-189-109.us-west-2.compute.amazonaws.com",
    user: "ubuntu",
    deploy_to: "/home/test_app/bootleg_test/bootleg",
    identity: "/Users/sashavoynow/.ssh/jenkins-ecs.pem",
    strategy: Bootleg.Strategies.Deploy.RemoteSSH
  ]
config :bootleg, archive:
  [
    app: "test_app",
    archive_directory: "/downloads",
    max_archives: 2
  ]
#     import_config "#{Mix.env}.exs"
