import Foundation

enum TodayError: LocalizedError {
    case failedReadingReminders
    case reminderHasNoDueDate
    case accessDenied
    case accessRestricted
    case unknown
    case failedReadingCalendarItem
    
    var errorDescription: String? {
        switch self {
        case .accessDenied:
            return NSLocalizedString("The app doesn't have permission to read reminders.", comment: "access denied error description")
        case .failedReadingReminders:
            return NSLocalizedString("Failed to read reminders.", comment: "failed reading reminders error description")
        case .reminderHasNoDueDate:
            return NSLocalizedString("A reminder has no due date.", comment: "reminder has no due date error description")
        case .accessRestricted:
            return NSLocalizedString("The device doesn't allow access to reminders.", comment: "access restricted error description")
        case .unknown:
            return NSLocalizedString("An unknown error occurred.", comment: "unknown error description")
        case .failedReadingCalendarItem:
            return NSLocalizedString("Failed to read a calendar item.", comment: "failed reading calendar item error description")
        }
    }
}
