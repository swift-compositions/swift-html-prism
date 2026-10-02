import HTML
import HTMLPrism
import Testing

@Suite
struct `Prism head without a theme` {

    @Test
    func `choosing no theme adds no stylesheet and no stray text`() throws {
        let rendered = try String(
            Prism.Head(configuration: Prism.Configuration(languages: [.swift], theme: .none))
        )
        #expect(!rendered.contains("No theme"))
        #expect(!rendered.contains("&lt;!--"))
        #expect(!rendered.contains("themes/prism"))
        #expect(rendered.contains("components/prism-swift.min.js"))
    }
}
