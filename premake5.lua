project "OBJ-Loader"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("bin/" .. outputDir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

    files
    {
        "./Source/**.h",
        "./Source/**.cpp"
    }

    includedirs
    {
        "./Source",
        "./examples"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"