// SPDX-License-Identifier: AGPL-3.0-or-later

using Robust.Shared.Localization;

namespace Content.Shared._Shitmed;

/// <summary>
///     Lokalisiert die rohen Körperteil-Slot-IDs ("head", "left arm" ...), die im Gesundheitspanel und in
///     Trauma-Popups sonst unübersetzt angezeigt würden. Fällt auf die rohe ID zurück, wenn kein Key existiert.
/// </summary>
public static class BodyPartNames
{
    public static string Localize(string slotId)
    {
        var key = "body-part-slot-" + slotId.Replace(' ', '-').ToLowerInvariant();
        return Loc.TryGetString(key, out var localized) ? localized : slotId;
    }
}
