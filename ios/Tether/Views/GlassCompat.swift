import SwiftUI

/// Lightweight material-based fallback for the app's Liquid Glass styling.
/// Uses APIs available from the iOS 16 deployment target.
extension View {
    func tetherLiquidGlass(cornerRadius: CGFloat) -> some View {
        background(
            .ultraThinMaterial,
            in: RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
        )
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .stroke(Color.white.opacity(0.22), lineWidth: 0.8)
        )
    }

    func tetherLiquidGlassCircle(tint: Color? = nil) -> some View {
        background {
            Circle()
                .fill(.ultraThinMaterial)
                .overlay(Circle().fill((tint ?? .clear).opacity(0.14)))
        }
        .overlay(
            Circle().stroke(Color.white.opacity(0.22), lineWidth: 0.8)
        )
    }
}
