--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- PLUGIN table & hook method signatures
------------------------------------------------------------------------

---@meta

---@class AvailableVersion
---@field version string Version string
---@field note? string Optional note about the version
---@field rolling? boolean If true, this is a rolling release (e.g. "nightly")
---@field checksum? string Checksum for detecting changes in rolling releases

---@class AvailableCtx
---@field args string[]
---@field version? string

---@class PreInstallResult
---@field version string Version string
---@field url? string Download URL
---@field note? string Optional note
---@field sha256? string SHA-256 checksum
---@field md5? string MD5 checksum
---@field sha1? string SHA-1 checksum
---@field sha512? string SHA-512 checksum
---@field attestation? PreInstallAttestation Optional attestation parameters

---@class PreInstallAttestation
---@field github_owner? string GitHub repository owner
---@field github_repo? string GitHub repository name
---@field github_signer_workflow? string GitHub Actions signer workflow
---@field cosign_sig_or_bundle_path? string Path to cosign signature or bundle
---@field cosign_public_key_path? string Path to cosign public key
---@field slsa_provenance_path? string Path to SLSA provenance
---@field slsa_min_level? integer Minimum SLSA level

---@class PreInstallCtx
---@field args string[]
---@field version string Requested version

---@class PostInstallCtx
---@field rootPath string Installation root path
---@field runtimeVersion string Runtime version
---@field sdkInfo table<string, SdkInfo> SDK info for installed versions

---@class SdkInfo
---@field name string SDK name
---@field path string Installation path
---@field version string Installed version

---@class EnvKey
---@field key string Environment variable name
---@field value string Environment variable value

---@class EnvKeysCtx
---@field version string Installed version
---@field path string Installation path
---@field sdkInfo table<string, SdkInfo> SDK info for installed versions
---@field main SdkInfo Main SDK info
---@field options table Plugin options from mise.toml

---@class ParseLegacyFileCtx
---@field args string[] Command-line arguments
---@field filename string Basename of the legacy file
---@field filepath string Full path to the legacy file
---@field getInstalledVersions fun(): string[] Returns list of installed versions

---@class ParseLegacyFileResult
---@field version? string Parsed version string

---@class MiseEnvCtx
---@field options table Plugin options from mise.toml
---@field config_root? string Configuration root path

---@class MiseEnvResult
---@field env? EnvKey[] Environment variables to set
---@field cacheable? boolean Whether the result can be cached (default false)
---@field watch_files? string[] Files to watch for cache invalidation
---@field redact? boolean Whether env vars should be redacted in output (default false)

---@class MisePathCtx
---@field options table Plugin options from mise.toml
---@field config_root? string Configuration root path

---@class BackendListVersionsCtx
---@field tool string Tool name
---@field options table Plugin options from mise.toml

---@class BackendListVersionsResult
---@field versions string[] List of available versions

---@class BackendInstallCtx
---@field tool string Tool name
---@field version string Version to install
---@field install_path string Path where the tool should be installed
---@field download_path string Path where the tool artifact should be downloaded
---@field options table Plugin options from mise.toml

---@class BackendInstallResult

---@class BackendExecEnvCtx
---@field tool string Tool name
---@field version string Installed version
---@field install_path string Installation path
---@field options table Plugin options from mise.toml

---@class BackendExecEnvResult
---@field env_vars EnvKey[] Environment variables to set

---@class SystemDependency
---@field bin? string Executable that must be on PATH
---@field pkgconfig? string pkg-config module that must be available
---@field sharedlib? string Shared library that must be available
---@field command? string Command that must exit successfully
---@field version? string Version requirement
---@field optional? string Marks the dependency as optional
---@field packages? table<string, string|string[]> Package names by package manager (brew, apt, dnf, pacman, apk), used as install hints

---@class Plugin
--- Keys for `metadata.lua` (mise loads these via vfox `Metadata`). Hook methods are separate optional entries on the same table.
---@field name string Plugin metadata name
---@field version string Plugin metadata version
---@field description? string Plugin description
---@field author? string Plugin author
---@field license? string License name
---@field homepage? string Plugin homepage
---@field legacyFilenames? string[] Legacy version filenames
---@field depends? string[] Configured mise tools whose bin paths should be available during install hooks
---@field systemDependencies? SystemDependency[] System prerequisites (set exactly one of bin, pkgconfig, sharedlib, command per entry)
---@field Available? fun(self: Plugin, ctx: AvailableCtx): AvailableVersion[]
---@field PreInstall? fun(self: Plugin, ctx: PreInstallCtx): PreInstallResult
---@field PostInstall? fun(self: Plugin, ctx: PostInstallCtx)
---@field EnvKeys? fun(self: Plugin, ctx: EnvKeysCtx): EnvKey[]
---@field ParseLegacyFile? fun(self: Plugin, ctx: ParseLegacyFileCtx): ParseLegacyFileResult
---@field MiseEnv? fun(self: Plugin, ctx: MiseEnvCtx): MiseEnvResult|EnvKey[]
---@field MisePath? fun(self: Plugin, ctx: MisePathCtx): string[]
---@field BackendListVersions? fun(self: Plugin, ctx: BackendListVersionsCtx): BackendListVersionsResult
---@field BackendInstall? fun(self: Plugin, ctx: BackendInstallCtx): BackendInstallResult
---@field BackendExecEnv? fun(self: Plugin, ctx: BackendExecEnvCtx): BackendExecEnvResult
PLUGIN = {}
