
hazelWorkspace("Sandbox")

project "Sandbox"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp"
	}


	includedirs
	{
		"src/",
	}

	HazelDependencies()

	filter "system:emscripten"
		linkoptions
		{
			"--preload-file assets"
		}

