describe "GSQL grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-gsql")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.gsql")

  it "parses the grammar", ->
    expect(grammar).toBeDefined()
    expect(grammar.scopeName).toBe "source.gsql"
