// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.AvailabilitySpec

module Generated {
  /**
   * A wildcard availability spec `*`
   */
  class OtherAvailabilitySpec extends Synth::TOtherAvailabilitySpec, AvailabilitySpec {
    override string getAPrimaryQlClass() { result = "OtherAvailabilitySpec" }
  }
}