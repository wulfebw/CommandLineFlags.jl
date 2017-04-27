using Base.Test
using CommandLineFlags

function test_entry_and_parse()
    FLAGS = Flags()

    add_entry!(FLAGS, "A", 41, Int64, "Thing A.")
    add_entry!(FLAGS, "B", 42., Float64, "Thing B.")
    add_entry!(FLAGS, "C", "43", String, "Thing B.")

    parse_flags!(FLAGS, ARGS)

    @test FLAGS["A"] == 41
    @test Flags["B"] == 42.
    @test Flags["C"] == "43"
end
