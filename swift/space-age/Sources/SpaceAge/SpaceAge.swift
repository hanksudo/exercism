struct SpaceAge {
    let seconds:Int
    let onEarth: Double
    let onMercury: Double
    let onVenus: Double
    let onMars: Double
    let onJupiter: Double
    let onSaturn: Double
    let onUranus: Double
    let onNeptune: Double
    
    init(_ seconds: Int) {
        self.seconds = seconds
        self.onEarth = Double(seconds) / 31557600
        self.onMercury = self.onEarth / 0.2408467
        self.onVenus = self.onEarth / 0.61519726
        self.onMars = self.onEarth / 1.8808158
        self.onJupiter = self.onEarth / 11.862615
        self.onSaturn = self.onEarth / 29.447498
        self.onUranus = self.onEarth / 84.016846
        self.onNeptune = self.onEarth / 164.79132
    }
}
