import Foundation
import TetherCore

extension AppModel {
    /// A contact's photo: through the phone-number index Messages and Recents use, else the contact's own photo.
    func photo(for contact: Contact) -> String? {
        contact.phones.lazy.compactMap { self.photo(for: $0.n) }.first ?? contact.photo
    }
}
