local Translations = {
    menu = {
        title = "الرسوم المتحركة",
        description = "قائمة بجميع الرسوم المتحركة في مكان واحد",
        exit = "خروج"
    },
    notifications = {
        request_cancelled = "تم إلغاء الطلب.",
        request_timed_out = "انتهت مهلة الطلب.",
        no_players_nearby = "لا يوجد لاعبين بالقرب.",
        no_emote_to_cancel = "لا توجد حركة لإلغائها.",
        quick_slot_empty = "لا يوجد حركة في الشريحة %{slot}.",
        waiting_for_a_decision = "في انتظار القرار. إلغاء",
        already_playing_anim = "أنت تقوم بالتحريك بالفعل",
    },
    categories = {
        all = "الكل",
        favorites = "المفضلة",
        general = "عام",
        dances = "الرقصات",
        expressions = "التعابير",
        walks = "المشي",
        placedemotes = "موضوعة",
        syncedemotes = "مزامنة",
    },
    keybinds = {
        play_quick_emote = "اختصار الحركة السريعة",
        toggle_point_description = "اختصار الإشارة",
        ragdoll_description = "اختصار الوضع الميت",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
