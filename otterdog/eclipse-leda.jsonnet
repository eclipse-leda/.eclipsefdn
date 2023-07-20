local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-leda') {
  settings+: {
    default_repository_permission: "none",
    default_workflow_permissions: "write",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "",
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: true,
    members_can_delete_repositories: true,
    name: "Eclipse Leda",
    packages_containers_internal: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
  },
  _repositories+:: [
    orgs.newRepo('eclipse-leda.github.io') {
      allow_update_branch: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh_pages"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('leda') {
      allow_update_branch: false,
      description: "Documentation - Eclipse Leda provides a Yocto-based build setup for SDV.EDGE components ",
      has_projects: false,
      has_wiki: false,
      homepage: "https://eclipse-leda.github.io/leda/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "automotive",
        "software-defined-vehicle",
        "vehicle-cloudification"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('leda-contrib-cloud-connector') {
      allow_update_branch: false,
      description: "SDV Cloud Connector for Azure IoT Hub",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('leda-contrib-container-update-agent') {
      allow_update_branch: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('leda-contrib-otel') {
      allow_update_branch: false,
      description: "OpenTelemetry Exporter for Leda",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('leda-contrib-self-update-agent') {
      allow_update_branch: false,
      description: "Eclipse Leda - Self Update Agent (SUA)",
      homepage: "https://eclipse-leda.github.io/leda/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "automotive",
        "embedded",
        "rauc",
        "software-defined-vehicle"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('leda-contrib-vehicle-update-manager') {
      allow_update_branch: false,
      description: "Vehicle Update Manager (VUM)",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('leda-distro') {
      allow_update_branch: false,
      description: "Eclipse Leda provides a Yocto-based build setup for SDV.EDGE components ",
      has_discussions: true,
      homepage: "https://eclipse-leda.github.io/leda/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "automotive",
        "edge-computing",
        "embedded",
        "iot",
        "software-defined-vehicle",
        "yocto",
        "yocto-layer"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('leda-example-applications') {
      allow_update_branch: false,
      description: "Vehicle application examples and use cases for Eclipse Leda, Velocitas, Kuksa",
      has_projects: false,
      has_wiki: false,
      homepage: "https://eclipse-leda.github.io/leda/docs/app-deployment/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "eclipse",
        "eclipse-sdv",
        "software-defined-vehicle",
        "vehicle-cloudification"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('leda-utils') {
      allow_update_branch: false,
      description: "Convenience scripts for Eclipse Leda quickstart tutorials",
      homepage: "https://eclipse-leda.github.io/leda/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "automotive",
        "eclipse",
        "software-defined-vehicle"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('meta-leda') {
      allow_update_branch: false,
      description: "Yocto / OpenEmbedded Meta-Layers for Eclipse SDV components",
      homepage: "https://eclipse-leda.github.io/leda/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "bitbake",
        "eclipse-sdv",
        "openembedded-layer",
        "software-defined-vehicle",
        "yocto-layer",
        "yocto-meta-layer"
      ],
      web_commit_signoff_required: false,
    },
  ],
}
