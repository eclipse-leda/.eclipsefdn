local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-leda') {
  settings+: {
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "",
    name: "Eclipse Leda",
    packages_containers_internal: false,
    readers_can_create_discussions: true,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('eclipse-leda.github.io') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh_pages",
      gh_pages_source_path: "/",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
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
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Documentation - Eclipse Leda provides a Yocto-based build setup for SDV.EDGE components ",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh_pages",
      gh_pages_source_path: "/",
      has_projects: false,
      has_wiki: false,
      homepage: "https://eclipse-leda.github.io/leda/",
      topics+: [
        "automotive",
        "software-defined-vehicle",
        "vehicle-cloudification"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('leda-contrib-cloud-connector') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "SDV Cloud Connector for Azure IoT Hub",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('leda-contrib-container-update-agent') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('leda-contrib-otel') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "OpenTelemetry Exporter for Leda",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('leda-contrib-self-update-agent') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Leda - Self Update Agent (SUA)",
      homepage: "https://eclipse-leda.github.io/leda/",
      topics+: [
        "automotive",
        "embedded",
        "rauc",
        "software-defined-vehicle"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('leda-contrib-vehicle-update-manager') {
      archived: true,
      description: "Vehicle Update Manager (VUM)",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('leda-contrib-vscode-extensions') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('leda-distro') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Eclipse Leda provides a Yocto-based build setup for SDV.EDGE components ",
      gh_pages_build_type: "workflow",
      has_discussions: true,
      homepage: "https://eclipse-leda.github.io/leda/",
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
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Vehicle application examples and use cases for Eclipse Leda, Velocitas, Kuksa",
      has_projects: false,
      has_wiki: false,
      homepage: "https://eclipse-leda.github.io/leda/docs/app-deployment/",
      topics+: [
        "eclipse",
        "eclipse-sdv",
        "software-defined-vehicle",
        "vehicle-cloudification"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('leda-utils') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Convenience scripts for Eclipse Leda quickstart tutorials",
      homepage: "https://eclipse-leda.github.io/leda/",
      topics+: [
        "automotive",
        "eclipse",
        "software-defined-vehicle"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('meta-leda') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Yocto / OpenEmbedded Meta-Layers for Eclipse SDV components",
      homepage: "https://eclipse-leda.github.io/leda/",
      topics+: [
        "bitbake",
        "eclipse-sdv",
        "openembedded-layer",
        "software-defined-vehicle",
        "yocto-layer",
        "yocto-meta-layer"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
