
hazelClientLocation = debug.getinfo(1).source:match("@?(.*/)")

include "Hazel"
HazelWorkspace("Sandbox")
SetupHazel()

project "Sandbox"

	files
	{
		"src/**.h",
		"src/**.cpp"
	}

	includedirs
	{
		"src/",
	}

	HazelExecutable()

	filter "system:emscripten"
		linkoptions
		{
			"--preload-file assets"
		}

