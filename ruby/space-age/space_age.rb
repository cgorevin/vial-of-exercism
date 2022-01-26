class SpaceAge
  EARTH_ORBITAL_PERIOD = 31_557_600
  PLANETARY_ORBITS = {
    earth: 31_557_600,
    mercury: 0.2408467 * EARTH_ORBITAL_PERIOD,
    venus: 0.61519726 * EARTH_ORBITAL_PERIOD,
    mars: 1.8808158 * EARTH_ORBITAL_PERIOD,
    jupiter: 11.862615 * EARTH_ORBITAL_PERIOD,
    saturn: 29.447498 * EARTH_ORBITAL_PERIOD,
    uranus: 84.016846 * EARTH_ORBITAL_PERIOD,
    neptune: 164.79132 * EARTH_ORBITAL_PERIOD,
  }.freeze

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  PLANETARY_ORBITS.each do |planet, orbit|
    define_method("on_#{planet}") { @seconds/orbit }
  end
end
