import Foundation
import Observation

@Observable class GlobalString {
    let rawJSON = """
        {
            "data": [
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Kim evinden çıkarken 'Bismillâhi tevekkeltü alellâhi lâ havle velâ kuvvete illâ billâh' derse ona, ‘Bu sana yeter ve sen muhafaza edildin’ denilir ve şeytan o kimseden uzaklaşır.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: مَنْ قَالَ يَعْنِي إِذَا خَرَجَ مِنْ بَيْتِهِ بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ يُقَالُ لَهُ كُفِيتَ وَوُقِيتَ وَتَنَحَّى عَنْهُ الشَّيْطَانُ.",
                    "source_tr": "Sünen-i Tirmizî",
                    "source_ar": "ت",
                    "week": "1"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Bir kişi öldüğü zaman, melekler ‘(âhiret için sâlih amel olarak) ne hazırladı?’ derler. İnsanlar da ‘(mal, mülk olarak dünyada) ne bıraktı?’ derler.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِذَا مَاتَ الْمَيِّتُ تَقُولُ الْمَلَائِكَةُ: مَا قَدَّمَ؟ وَيَقُولُ النَّاسُ: مَاخَلَّفَ؟",
                    "source_tr": "Süyûtî, el-Câmiu’s-Sağîr",
                    "source_ar": "الجامع الصغير",
                    "week": "2"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Kullar, Allâhü Teâlâ’ya itaat gibi bir şeyle kendi nefislerine ikramda bulunmamışlardır. Allâhü Teâlâ’ya isyan gibi bir şeyle de kendilerine ihanet etmemişlerdir.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: مَا أَكْرَمَ الْعِبَادُ أَنْفُسَهُمْ بِمِثْلِ طَاعَةِ اللهِ وَلَا أَهَانَ الْعِبَادُ أَنْفُسَهُمْ بِمِثْلِ مَعْصِيَةِ اللهِ.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "3"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Amellerin en faziletlisi, sâdık niyettir.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: أَفْضَلُ الْعَمَلِ النِّيَّةُ الصَّادِقَةُ.",
                    "source_tr": "Kenzü’l-Ummal",
                    "source_ar": "كنز",
                    "week": "4"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Büyüklerimize hürmet göstermeyen, küçüklerimize merhamet etmeyen, bizden değildir.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: لَيْسَ مِنَّا مَنْ لَمْ يُوَقِّرْ كَبِيرَنَا وَيَرْحَمْ صَغِيرَنَا.",
                    "source_tr": "Müsned-i Ahmed bin Hanbel",
                    "source_ar": "حم",
                    "week": "5"
                },
                {
                    "data_tr": "Resûlullah Efendimiz (s.a.v.) buyurdular: Hiç kimse (eline): ‘Bismillâhirrahmânirrahîm. Bu, Allah tarafından, falan oğlu falana verilen yazıdır. Onu, meyveleri aşağıya sarkan yüksek Cennet’e koyun!’ (yazılı) berâtı almadan Cennet’e giremez.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ:  لَا يَدْخُلُ الْجَنَّةَ اَحَدٌ اِلَّا بِجَوَازِ بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيمِ، هٰذَا كِتَابٌ مِنَ اللهِ لِفُلَانِ بْنِ فُلَانٍ، اَدْخِلُوهُ جَنَّةً عَالِيَةً قُطُوفُهَا دَانِيَةٌ.",
                    "source_tr": "Taberânî, el-Mu’cemü’l-Kebîr",
                    "source_ar": "طب",
                    "week": "6"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: İlm(-i hâlini) öğrenmek (erkek kadın) her Müslüman üzerine farzdır.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: طَلَبُ الْعِلْمِ فَرِيضَةٌ عَلَى كُلِّ مُسْلِمٍ.",
                    "source_tr": "Sünen-i İbn-i Mâce",
                    "source_ar": "هـ",
                    "week": "7"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Muhakkak Allâhü Teâlâ, kendisine ibadet eden genç ile, meleklerine karşı iftihar eder ve ‘Şu kuluma bakınız, benim için nefsinin arzu ve isteklerini terk etti’ buyurur.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِنَّ اللهَ تَعَالَى يُبَاهِي بِالشَّابِّ الْعَابِدِ الْمَلَائِكَةَ يَقُولُ: اُنْظُرُوا إِلَى عَبْدِي تَرَكَ شَهْوَتَهُ مِنْ أَجْلِي.",
                    "source_tr": "Münâvî, Feyzu’l-Kadîr",
                    "source_ar": "فيض",
                    "week": "8"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Yıldızlar, yeryüzündekilere nasıl parlak görünüyorsa, Kur’ân-ı Kerîm okunan ev de sema ehline (meleklere) öyle parlak görünür.",
                    "data_ar": "قَالَ رَسُولُ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ: اَلْبَيْتُ الَّذِي يُقْرَأُ فِيهِ الْقُرْآنُ يَتَرَائَى لِأَهْلِ السَّمَاءِ كَمَا تَتَرَائَى النُّجُومُ لِأَهْلِ الْأَرْضِ.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "9"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Muhakkak Allâhü Teâlâ’ya en sevimli (makbul) olan söz, ‘Sübhânallâhi ve bihamdihî’ sözüdür.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِنَّ أَحَبَّ الْكَلَامِ إِلَى اللهِ: سُبْحَانَ اللهِ وَبِحَمْدِهِ.",
                    "source_tr": "Sahîh-i Müslim",
                    "source_ar": "م",
                    "week": "10"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Helâl olan şeylerin Allâhü Teâlâ’ya en sevimsiz olanı, talak (boşamak)’tır.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: أَبْغَضُ الْحَلَالِ إِلَى اللهِ الطَّلَاقُ.",
                    "source_tr": "Sünen-i İbn-i Mâce",
                    "source_ar": "هـ",
                    "week": "11"
                },
                {
                    "data_tr": "İbn-i Abbâs radıyallâhü anhümâ’dan rivâyet olundu, o dedi ki: Resûlullah Efendimiz sallallâhü aleyhi ve sellem, yiyeceği ve içeceği şeye üflemezdi, su içtiği kaba da solumazdı.",
                    "data_ar": "عَنِ ابْنِ عَبَّاسٍ قَالَ: لَمْ يَكُنْ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَنْفُخُ فِي طَعَامٍ وَلَا شَرَابٍ وَلَا يَتَنَفَّسُ فِي الْإِنَاءِ.",
                    "source_tr": "Sünen-i İbn-i Mâce",
                    "source_ar": "هـ",
                    "week": "12"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Cömert ve güzel ahlâklı bir genç; cimri, ibadet eden kötü ahlâklı bir ihtiyardan, Allâhü Teâlâ’ya daha sevimlidir.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: شَابٌّ سَخِيٌّ حَسَنُ الْخُلُقِ أَحَبُّ إِلَى اللهِ تَعَالَى مِنْ شَيْخٍ بَخِيلٍ عَابِدٍ سَيِّئِ الْخُلُقِ.",
                    "source_tr": "Münâvî, Feyzu’l-Kadîr",
                    "source_ar": "فيض",
                    "week": "13"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Ümmetimin en faziletlileri, Ashâbım’dır.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: أَفْضَلُ أُمَّتِي أَصْحَابِي.",
                    "source_tr": "Müsnedü’l-Hâris",
                    "source_ar": "مسند الحارث",
                    "week": "14"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Kıyamet gününde şefaatim haktır. Kim ona inanmazsa şefaat ehlinden olamaz (yani şefâate nâil olamaz).",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: شَفَاعَتِي يَوْمَ الْقِيَامَةِ حَقٌّ فَمَنْ لَمْ يُؤْمِنْ بِهَا لَمْ يَكُنْ مِنْ أَهْلِهَا.",
                    "source_tr": "Süyûtî, el-Câmiu’s-Sağîr",
                    "source_ar": "الجامع الصغير",
                    "week": "15"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü teâlâ aleyhi ve sellem buyurdular: Evlerinizi namaz kılarak ve Kur’ân-ı Kerîm okuyarak nurlandırınız.",
                    "data_ar": "قَالَ رَسُولُ اللّٰهِ صَلَّى اللّٰهُ تَعَالَى عَلَيْهِ وَسَلَّمَ: نَوِّرُوا مَنَازِلَكُمْ بِالصَّلَاةِ وَقِرَاءَةِ الْقُرْآنِ.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "16"
                },
                {
                    "data_tr": "Peygamber Efendimiz sallallâhü aleyhi ve sellem buyurdular: Allâhü Teâlâ’nın, sizden birinizin tevbe etmesine olan rızası, birinizin kaybettiği bir şeyi bulduğu zamanki sevincinden elbette daha fazladır.",
                    "data_ar": "قَالَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: اَللهُ أَشَدُّ فَرَحًا بِتَوْبَةِ أَحَدِكُمْ مِنْ أَحَدِكُمْ بِضَالَّتِهِ إِذَا وَجَدَهَا.",
                    "source_tr": "Sahîh-i Müslim",
                    "source_ar": "م",
                    "week": "17"
                },
                {
                    "data_tr": "Peygamber Efendimiz (s.a.v.) buyurdular: Receb ayının birinci günü oruç tutmak, üç senelik, ikinci günü oruç tutmak, iki senelik, üçüncü günü oruç tutmak, bir senelik (günahlara) keffârettir, sonra her bir gün oruç tutmak ise bir aylık (günahlara) keffârettir.",
                    "data_ar": "قَالَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: صَوْمُ أَوَّلِ يَوْمٍ مِنْ رَجَبَ كَفَّارَةُ ثَلَاثِ سِنِينَ وَالثَّانِي كَفَّارَةُ سَنَتَيْنِ وَالثَّالِثُ كَفَّارَةُ سَنَةٍ ثُمَّ كُلُّ يَوْمٍ شَهْرًا.",
                    "source_tr": "Süyûtî, el-Câmiu’s-Sağîr",
                    "source_ar": "الجامع الصغير",
                    "week": "18"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Beş gece vardır ki bu gecelerde yapılan dualar reddolunmaz; cuma gecesi, Receb ayının ilk gecesi, Şâban ayının on beşinci (yani Berât) gecesi, Ramazan Bayramı gecesi ve Kurban Bayramı gecesi.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: خَمْسُ لَيَالٍ لَا يُرَدُّ فِيهِنَّ الدُّعَاءُ لَيْلَةُ الْجُمُعَةِ وَأَوَّلُ لَيْلَةٍ مِنْ رَجَبَ وَلَيْلَةُ النِّصْفِ مِنْ شَعْبَانَ وَلَيْلَةُ الْعِيدِ وَلَيْلَةُ النَّحْرِ.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "19"
                },
                {
                    "data_tr": "Resûlullah Efendimiz (s.a.v.) buyurdular: İki ahlâk vardır ki Allâhü Teâlâ onları sever; iki ahlâk da vardır ki Allâhü Teâlâ onlara buğzeder. Allâhü Teâlâ’nın sevdiği iki ahlâk; cömertlik ve müsâmaha (kolaylaştırmak)dır. Allâhü Teâlâ’nın buğzettiği iki ahlâk; kötü ahlâk ve cimriliktir.",
                    "data_ar": "قَالَ رَسُولُ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ: خُلُقَانِ يُحِبُّهُمَا اللّٰهُ وَخُلُقَانِ يُبْغِضُهُمَا اللّٰهُ فَأَمَّا اللَّذَانِ يُحِبُّهُمَا اللّٰهُ فَالسَّخَاءُ وَالسَّمَاحَةُ وَأَمَّا اللَّذَانِ يُبْغِضُهُمَا اللّٰهُ فَسُوءُ الْخُلُقِ وَالْبُخْلُ.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "20"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Sizden birinizin (farz) namazından eksik yaptığı şeyi, elbette Allah Azze ve Celle, o kimsenin (kıldığı) nafile namazlarından tamamlar.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: لَا يَنْتَقِصُ أَحَدُكُمْ مِنْ صَلَاتِهِ شَيْئًا إِلَّا أَتَمَّهَا اللهُ عَزَّ وَجَلَّ مِنْ سُبْحَتِهِ.",
                    "source_tr": "Müsned-i Ahmed bin Hanbel",
                    "source_ar": "حم",
                    "week": "21"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Evlerinizde (nâfile) namaz kılınız. (Nâfile namaz kılmayarak) evlerinizi kabirlere çevirmeyiniz.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: صَلُّوا فِي بُيُوتِكُمْ وَلَا تَتَّخِذُوهَا قُبُورًا.",
                    "source_tr": "Sünen-i Tirmizî",
                    "source_ar": "ت",
                    "week": "22"
                },
                {
                    "data_tr": "Peygamber Efendimiz sallallâhü aleyhi ve sellem buyurdular: Büyük bir sıkıntı içine düştüğünüz zaman ‘Hasbünallâhü ve ni‘me’l-vekîl’ deyiniz.",
                    "data_ar": "قَالَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِذَا وَقَعْتُمْ فِي الْاَمْرِ الْعَظِيمِ فَقُولُوا حَسْبُنَا اللهُ وَنِعْمَ الْوَكِيلُ.",
                    "source_tr": "Süyûtî, el-Câmiu’s-Sağîr",
                    "source_ar": "الجامع الصغير",
                    "week": "23"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Kim ‘Kul hüvellâhü ehad’ı (İhlâs Sûresi’ni) her gün iki yüz defa okursa -üzerinde borç (yani kul hakkı) olmadıkça- elli senelik günahları silinir.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: مَنْ قَرَأَ كُلَّ يَوْمٍ مِائَتَيْ مَرَّةٍ قُلْ هُوَ اللهُ أَحَدٌ مُحِيَ عَنْهُ ذُنُوبُ خَمْسِينَ سَنَةً إِلَّا أَنْ يَكُونَ عَلَيْهِ دَيْنٌ.",
                    "source_tr": "Sünen-i Tirmizî",
                    "source_ar": "ت",
                    "week": "24"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Muhakkak sadaka, yetmiş kötülük kapısını kapatır.",
                    "data_ar": "قَالَ رَسُولُ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ: إِنَّ الصَّدَقَةَ تَدْفَعُ سَبْعِينَ بَابًا مِنَ السُّوءِ.",
                    "source_tr": "Taberânî, el-Mu’cemü’l-Kebîr",
                    "source_ar": "طب",
                    "week": "25"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Her sabah ve akşam üç defa ‘Bismillâhillezî lâ yezurru mea‘smihî şey’ün fi’l-arzı velâ fi’s-semâi vehüve’s-semîu’l-alîm’ duasını okuyan bir kula hiçbir şey aslâ zarar vermez.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: مَا مِنْ عَبْدٍ يَقُولُ فِي صَبَاحِ كُلِّ يَوْمٍ وَمَسَاءِ كُلِّ لَيْلَةٍ بِسْمِ اللهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ ثَلَاثَ مَرَّاتٍ فَيَضُرَّهُ شَيْءٌ.",
                    "source_tr": "Sünen-i İbn-i Mâce",
                    "source_ar": "هـ",
                    "week": "26"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Müslüman bir kimse abdest aldığı zaman günahları; kulağından, gözünden, ellerinden ve ayaklarından dökülüp gider. Bu kimse (abdestten sonra) otursa (namaz kılmasa bile), bağışlanmış olarak oturmuş olur.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِذَا تَوَضَّأَ الرَّجُلُ الْمُسْلِمُ خَرَجَتْ ذُنُوبُهُ مِنْ سَمْعِهِ وَبَصَرِهِ وَيَدَيْهِ وَرِجْلَيْهِ فَإِنْ قَعَدَ قَعَدَ مَغْفُورًا لَهُ.",
                    "source_tr": "Müsned-i Ahmed",
                    "source_ar": "حم",
                    "week": "27"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Muhakkak yeryüzündeki (hakîkî) âlimlerin hâli, karada ve denizde gece karanlığında kendisiyle yol bulunan, gökyüzündeki yıldızların hâli gibidir.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِنَّ مَثَلَ الْعُلَمَاءِ فِي الْأَرْضِ كَمَثَلِ النُّجُومِ فِي السَّمَاءِ يُهْتَدَى بِهَا فِي ظُلُمَاتِ الْبَرِّ وَالْبَحْرِ.",
                    "source_tr": "Müsned-i Ahmed bin Hanbel",
                    "source_ar": "حم",
                    "week": "21"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Günahından (ihlas ve samimiyetle) tevbe eden, hiç günahı olmayan kimse gibidir.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: اَلتَّائِبُ مِنَ الذَّنْبِ كَمَنْ لَا ذَنْبَ لَهُ.",
                    "source_tr": "Sünen-i İbn-i Mâce",
                    "source_ar": "هـ",
                    "week": "22"
                },
                {
                    "data_tr": "Osman bin Affân’dan (r. anh) şöyle rivâyet olundu: Resûlullah sallallâhü aleyhi ve sellem Efendimizin şöyle buyurduğunu işittim: Kim sırf Allâhü Teâlâ’nın rızâsı için bir mescit bina ederse Allâhü Teâlâ da onun için Cennet’te bir mislini yaratır.",
                    "data_ar": "عَنْ عُثْمَانَ بْنِ عَفَّانَ رَضِيَ اللهُ عَنْهُ قَالَ سَمِعْتُ رَسُولَ اللهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ: مَنْ بَنَى مَسْجِدًا لِلّٰهِ بَنَى اللهُ لَهُ فِي الْجَنَّةِ مِثْلَهُ.",
                    "source_tr": "Sahîh-i Müslim",
                    "source_ar": "م",
                    "week": "23"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Zühd (dünya sevgisini kalbe koymamak), sadece nakledilen bir sözden, verâ (haram ve şüphelilerden sakınmak) da şekilden ibaret kalmadıkça kıyamet kopmaz.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: لَا تَقُومُ السَّاعَةُ حَتَّى يَكُونَ الزُّهْدُ رِوَايَةً وَالْوَرَعُ تَصَنُّعًا.",
                    "source_tr": "Süyûtî, Câmiu’l-Ehâdîs",
                    "source_ar": "جامع الاحاديث",
                    "week": "24"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Üzerime bir gün gelir de o günde, beni Allah Azze ve Celle’ye yaklaştıracak ilmimi artırmazsam, o günün güneşinin doğmasında benim için bereket yoktur.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: اِذَا أَتَى عَلَىَّ يَوْمٌ لَا اَزْدَادُ فِيهِ عِلْمًا يُقَرِّبُنِى اِلَى اللهِ عَزَّ وَجَلَّ فَلَا بُورِكَ لِى فِى طُلُوعِ شَمْسِ ذٰلِكَ الْيَوْمِ.",
                    "source_tr": "Süyûtî, Câmiu’s-Sağîr",
                    "source_ar": "الجامع الصغير",
                    "week": "25"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Kime hayırdan bir kapı açılmışsa, onu fırsat bilsin (ondan hemen faydalansın). Çünkü o kapının, kendisine ne zaman kapatılacağını bilemez.",
                    "data_ar": "قَالَ رَسُولُ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ: مَنْ فُتِحَ لَهُ بَابٌ مِنَ الْخَيْرِ فَلْيَنْتَهِزْهُ فَإِنَّهُ لَا يَدْرِي مَتَى يُغْلَقُ عَنْهُ.",
                    "source_tr": "Kuzâî, Müsnedü’ş-Şihâb",
                    "source_ar": "ض",
                    "week": "26"
                },
                {
                    "data_tr": "Resûlullah Efendimiz (s.a.v.) buyurdular: Muhakkak şu (cuma) gün(ü), Allâhü Teâlâ’nın Müslümanlar için bayram kıldığı bir gündür. O hâlde cuma namazına gelecek olan, gusletsin ve eğer güzel kokusu varsa ondan sürünsün. (O günde) misvak kullanmanızı da tavsiye ederim.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِنَّ هٰذَا يَوْمُ عِيدٍ جَعَلَهُ اللهُ لِلْمُسْلِمِينَ فَمَنْ جَاءَ إِلَى الْجُمُعَةِ فَلْيَغْتَسِلْ وَإِنْ كَانَ طِيبٌ فَلْيَمَسَّ مِنْهُ وَعَلَيْكُمْ بِالسِّوَاكِ.",
                    "source_tr": "Sünen-i İbn-i Mâce",
                    "source_ar": "هـ",
                    "week": "27"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Âhir zamanda ümmetimde bulunacak en az şey, helâl para ve kendisine güvenilecek (sadık din) kardeşidir.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: أَقَلُّ مَا يُوجَدُ فِي أُمَّتِي فِي آخِرِ الزَّمَانِ دِرْهَمٌ حَلَالٌ وَأَخٌ يُوثَقُ بِهِ.",
                    "source_tr": "Münâvî, Feyzu’l-Kadîr",
                    "source_ar": "فيض",
                    "week": "28"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Kıyamet gününde insanların en çok günah sahibi olanları, mâlâyanîyi (dinine ve dünyasına faydasız şeyleri) çok konuşanlarıdır.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: أَكْثَرُ النَّاسِ ذُنُوبًا يَوْمَ الْقِيَامَةِ أَكْثَرُهُمْ كَلَامًا فِيمَا لَا يَعْنِيهِ.",
                    "source_tr": "Münâvî, Feyzu’l-Kadîr",
                    "source_ar": "فيض",
                    "week": "29"
                },
                {
                    "data_tr": "Peygamber Efendimiz sallallâhü aleyhi ve sellem buyurdular: Bir iş yapacağın zaman (istişare ve istihâre yaparak) âkıbetini iyi düşün. Hayırlı (meşrû ve faydalı) ise onu yap, şer ise onu terk et.",
                    "data_ar": "قَالَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِذَا أَرَدْتَ أَمْرًا فَتَدَبَّرْ عَاقِبَتَهُ  فَإِنْ كَانَ خَيْرًا فَأَمْضِهِ وَإِنْ كَانَ شَرًّا فَانْتَهِ.",
                    "source_tr": "Münâvî, Feyzu’l-Kadîr",
                    "source_ar": "فيض",
                    "week": "30"
                },
                {
                    "data_tr": "Bir adam 'İşi sağlama almak nedir, yâ Resûlallâh?' diye sual etti. Resûlullah Efendimiz sallallâhü aleyhi ve sellem: 'Akıl ve basiret sahibi kimse ile istişare edip sonra ona itaat etmendir.' buyurdular.",
                    "data_ar": "قَالَ رَجُلٌ يَا رَسُولَ اللهِ مَا الْحَزْمُ؟ قَالَ: أَنْ تُشَاوِرَ ذَا رَأْيٍ ثُمَّ تُطِيعَهُ.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "31"
                },
                {
                    "data_tr": "Resûlullah Efendimiz (s.a buyurdular: Mîraç gecesi Cennet içerisinde aynı seviyede yükseltilmiş birtakım köşkler gördüm. ‘Yâ Cebrâîl, bunlar kim içindir?’ diye sordum. Dedi ki: ‘Kızdıklarında öfkelerine hâkim olanlar ve insanların kusurlarını affedenler içindir.",
                    "data_ar": "قَالَ رَسُولُ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ: رَأَيْتُ لَيْلَةَ أُسْرِيَ بِي قُصُورًا مُسْتَوِيَةً مُشَرَّفَةً عَلَى الْجَنَّةِ فَقُلْتُ يَا جِبْرِيلُ لِمَنْ هٰذَا فَقَالَ لِلْكَاظِمِينَ الْغَيْظَ وَالْعَافِينَ عَنِ النَّاسِ.",
                    "source_tr": "Kenzü’l-Ummâl",
                    "source_ar": "كنز",
                    "week": "32"
                },
                {
                    "data_tr": "Abdullah bin Mes’ûd (r.a.) dedi ki: …(Mîraç Gecesi’nde) Resûlullah sallallâhü aleyhi ve sellem’e üç şey verildi: Beş vakit namaz, Bakara Sûresi’nin son iki âyeti (Âmenerrasûlü...) ve ümmetinden, hiçbir şeyi Allâh’a şirk (ortak) koşmayanların büyük günahlarının bağışlanacağı (müjdesi).",
                    "data_ar": "عَنْ عَبْدِ اللهِ بْنِ مَسْعُودٍ رَضِيَ اللهُ عَنْهُ قَالَ: ...فَأُعْطِيَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ ثَلَاثًا أُعْطِيَ الصَّلَوَاتِ الْخَمْسَ وَأُعْطِيَ خَوَاتِيمَ سُورَةِ الْبَقَرَةِ وَغُفِرَ لِمَنْ لَمْ يُشْرِكْ بِاللهِ مِنْ أُمَّتِهِ شَيْئًا اَلْمُقْحِمَاتُ.",
                    "source_tr": "Sahîh-i Müslim",
                    "source_ar": "م",
                    "week": "33"
                },
                {
                    "data_tr": "Selmân-ı Fârisî’den (r.a.) şöyle rivâyet olundu: Resûlullah Efendimiz sallallâhü aleyhi ve sellem’in şöyle buyurduklarını işittim: (Allah yolunda) bir gün ve bir gece nöbet tutmak, bir ayı (gündüzünü) oruçlu ve gecesini ibadetle geçirmekten daha hayırlıdır.",
                    "data_ar": "عَنْ سَلْمَانَ رَضِىَ اللهُ عَنْهُ قَالَ سَمِعْتُ رَسُولَ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَقُولُ: رِبَاطُ يَوْمٍ وَلَيْلَةٍ خَيْرٌ مِنْ صِيَامِ شَهْرٍ وَقِيَامِهِ.",
                    "source_tr": "Sahîh-i Müslim",
                    "source_ar": "م",
                    "week": "34"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: (Ey Ebû Rezîn) zikir ehlinin meclislerine devam et ve yalnız kaldığın zaman gücün yettiği kadar Allâhü Teâlâ’nın zikri ile lisânını hareket ettir. Allah için sev ve Allah için buğz et.",
                    "data_ar": "قَالَ رَسُولُ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ: عَلَيْكَ بِمَجَالِسِ أَهْلِ الذِّكْرِ وَإِذَا خَلَوْتَ فَحَرِّكْ لِسَانَكَ مَا اسْتَطَعْتَ بِذِكْرِ اللّٰهِ وَأَحِبَّ فِي اللّٰهِ وَأَبْغِضْ فِي اللّٰهِ.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "35"
                },
                {
                    "data_tr": "Resûlullah Efendimiz (s.a.v.) buyurdular: Bu (Şâban ayı) Receb ile Ramazan ayları arasında insanların kendisinden gaflet ettikleri bir aydır. Bu ay, amellerin, âlemlerin Rabb’ine arz edildiği bir aydır. Ben, amellerimin oruçlu iken arz edilmesini severim.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: ...ذَاكَ شَهْرٌ يَغْفُلُ النَّاسُ عَنْهُ بَيْنَ رَجَبَ وَرَمَضَانَ وَهُوَ شَهْرٌ تُرْفَعُ فِيهِ الْأَعْمَالُ إِلَى رَبِّ الْعَالَمِينَ فَأُحِبُّ أَنْ يُرْفَعَ عَمَلِي وَأَنَا صَائِمٌ.",
                    "source_tr": "Müsned-i Ahmed",
                    "source_ar": "حم",
                    "week": "36"
                },
                {
                    "data_tr": "Peygamber Efendimiz sallallâhü aleyhi ve sellem’e 'Ramazan ayı orucundan sonra en faziletli oruç hangisidir?' diye suâl olundu. Peygamberimiz (s.a.v.) 'Ramazan ayına tâzim için Şâban ayında tutulan oruçtur.' buyurdular.",
                    "data_ar": "سُئِلَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: أَيُّ الصَّوْمِ أَفْضَلُ بَعْدَ رَمَضَانَ؟ فَقَالَ :شَعْبَانُ لِتَعْظِيمِ رَمَضَانَ.",
                    "source_tr": "Sünen-i Tirmizî",
                    "source_ar": "ت",
                    "week": "37"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Her bir dua, Muhammed sallallâhü aleyhi ve sellem’e ve onun âline salevât getirilmedikçe semadan (Allâh’ın kabulünden) uzaktır.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: كُلُّ دُعَاءٍ مَحْجُوبٌ عَنِ السَّمَاءِ حَتَّى يُصَلَّى عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "38"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Muhakkak sadaka, sahibinin kabirdeki harâretini (sıkıntı ve azâbını) söndürür. Ve şüphesiz ki mümin, kıyamet gününde sadakasının gölgesinde gölgelenecektir.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِنَّ الصَّدَقَةَ لَتُطْفِىءُ عَلَى أَهْلِهَا حَرَّ الْقُبُورِ وَإِنَّمَا يَسْتَظِلُّ الْمُؤْمِنُ يَوْمَ الْقِيَامَةِ فِي ظِلِّ صَدَقَتِهِ.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "39"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Zekâtınızı verdiğiniz zaman şu duayı okuyarak sevabını (Allâhü Teâlâ’dan) istemeyi unutmayınız: Allâh’ım, bu zekâtımı âhiret azığı kıl, ödenmesi gerekli olan bir borç gibi karşılıksız bırakma.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِذَا أَعْطَيْتُمُ الزَّكَاةَ فَلَا تَنْسَوْا ثَوَابَهَا أَنْ تَقُولُوا اللّٰهُمَّ اجْعَلْهَا مَغْنَمًا وَلَا تَجْعَلْهَا مَغْرَمًا.",
                    "source_tr": "Sünen-i İbn-i Mâce",
                    "source_ar": "هـ",
                    "week": "40"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: En büyük günahlardan birisi de bir kişinin, Müslüman bir kimsenin namusuna haksız yere dil uzatmasıdır.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِنَّ مِنْ أَكْبَرِ الْكَبَائِرِ اسْتِطَالَةَ الْمَرْءِ فِي عِرْضِ رَجُلٍ مُسْلِمٍ بِغَيْرِ حَقٍّ.",
                    "source_tr": "Sünen-i Tirmizî",
                    "source_ar": "ت",
                    "week": "41"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Bir kulun bedeni Allah korkusuyla ürperdiği zaman, kuru ağacın yapraklarının döküldüğü gibi o kimsenin günahları da dökülür.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِذَا اقْشَعَرَّ جِلْدُ الْعَبْدِ مِنْ خَشْيَةِ اللهِ تَحَاتَّتْ عَنْهُ ذُنُوبُهُ كَمَا يَتَحَاتُّ عَنِ الشَّجَرَةِ الْيَابِسَةِ وَرَقُهَا.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "42"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Kim, Allâhü Teâlâ’nın verdiği az rızka razı olursa (kanaat ederse), Allâhü Teâlâ da onun az (nâfile) ameline razı olur.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: مَنْ رَضِيَ مِنَ اللهِ بِالْيَسِيرِ مِنَ الرِّزْقِ رَضِيَ اللهُ مِنْهُ بِالْيَسِيرِ مِنَ الْعَمَلِ.",
                    "source_tr": "Beyhakî, Şuabü’l-Îmân",
                    "source_ar": "هب",
                    "week": "43"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Kim bir kavmin kalabalığını çoğaltırsa (adetlerini arttırırsa) o kimse onlardandır. Her kim de bir kavmin ameline razı olursa, o ameli işleyen kimselere (sevabında yahut günahında) ortak olur.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: مَنْ كَثَّرَ سَوَادَ قَوْمٍ فَهُوَ مِنْهُمْ وَمَنْ رَضِيَ عَمَلَ قَوْمٍ كَانَ شَرِيكَ مَنْ عَمِلَ بِهِ.",
                    "source_tr": "Kastalânî, İrşâdü’s-Sârî",
                    "source_ar": "ارشاد الساري",
                    "week": "44"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Biriniz öldüğü zaman, kıyameti kopmuş demektir. Öyleyse Allâhü Teâlâ’ya, onu görüyormuşsunuz gibi ibadet edin ve her an ona istiğfârda bulunun.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِذَا مَاتَ أحَدُكُمْ  فَقَدْ قَامَتْ قِيَامَتُهُ فَاعْبُدُوا اللهَ كَأَنَّكُمْ تَرَوْنَهُ وَاسْتَغْفِرُوهُ كُلَّ سَاعَةٍ.",
                    "source_tr": "Kenzü’l-Ummâl",
                    "source_ar": "كنز",
                    "week": "45"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Kabir azâbı haktır, (vardır). Buna inanmayan kimse azâp olunur.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: عَذَابُ الْقَبْرِ حَقٌّ فَمَنْ لَمْ يُؤْمِنْ بِهِ عُذِّبَ.",
                    "source_tr": "Kenzü’l-Ummâl",
                    "source_ar": "كنز",
                    "week": "46"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Şâbân(-ı şerîf) ayının on beşinci (yani Berât) gecesi olduğu zaman, gecesini ibadetle geçirin, gündüzünde de oruç tutun.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِذَا كَانَتْ لَيْلَةُ النِّصْفِ مِنْ شَعْبَانَ فَقُومُوا لَيْلَهَا وَصُومُوا نَهَارَهَا.",
                    "source_tr": "Sünen-i İbn-i Mâce",
                    "source_ar": "هـ",
                    "week": "47"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Muhakkak Allâhü Teâlâ, Şâbân(-ı şerîf) ayının on beşinci (yani Berât) gecesinde (rahmetiyle) tecellî eder. Şirk koşanlar ve (müminlere) düşmanlık yapanlar hariç, bütün kullarının günahlarını mağfiret eder.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِنَّ اللهَ تَعَالَى لَيَطَّلِعُ فِي لَيْلَةِ النِّصْفِ مِنْ شَعْبَانَ فَيَغْفِرُ لِجَمِيعِ خَلْقِهِ إِلَّا لِمُشْرِكٍ أَوْ مُشَاحِنٍ.",
                    "source_tr": "Münâvî, Feyzu’l-Kadîr",
                    "source_ar": "فيض",
                    "week": "48"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Cenazeyi süratlice (lâkin koşmadan) naklediniz. Eğer bu cenaze, sâlih bir kimse ise (onun hâli) hayırdır; onu (bir an önce hayra) ulaştırmış olursunuz. Eğer bu cenaze, iyi bir kişi değilse, (onun bu hâli de) bir şerdir; (bir an evvel) omuzlarınızdan atmış olursunuz.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: أَسْرِعُوا بِالْجَنَازَةِ فَإِنْ تَكُ صَالِحَةً فَخَيْرٌ تُقَدِّمُونَهَا اِلَيْهِ وَإِنْ تَكُ سِوَى ذٰلِكَ فَشَرٌّ تَضَعُونَهُ عَنْ رِقَابِكُمْ.",
                    "source_tr": "Sahîh-i Buhârî",
                    "source_ar": "خ",
                    "week": "49"
                },
                {
                    "data_tr": "Resûlullah (s.a.v.) (yere) bir çizgi çizdi ve Bu, insandır. buyurdu. Sonra onun yanına bir çizgi daha çizerek, Bu da ecelidir. buyurdu. Ondan daha uzağa başka bir çizgi çizdi ve şöyle buyurdu: Bu da emelidir. İşte insan bu hâlde iken (yani emeline kavuşamadan) ona daha yakın olan (eceli ansızın) geliverir.",
                    "data_ar": "عَنْ أَنَسِ بْنِ مَالِكٍ رَضِيَ اللهُ عَنْهُ قَالَ: خَطَّ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ خَطًّا وَقَالَ: هٰذَا الْإِنْسَانُ، وَخَطَّ إِلَى جَانِبِهِ خَطًّا وَقَالَ: هٰذَا أَجَلُهُ، وَخَطَّ آخَرَ بَعِيدًا مِنْهُ فَقَالَ: هٰذَا الْأَمَلُ فَبَيْنَمَا هُوَ كَذٰلِكَ إِذْ جَاءَهُ الْأَقْرَبُ.",
                    "source_tr": "İbnü’l-Esîr, Câmiu’l-Usûl",
                    "source_ar": "جامع الأصول",
                    "week": "50"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Muhakkak kabir, ya Cennet bahçelerinden bir bahçe veya Cehennem çukurlarından bir çukurdur.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: إِنَّمَا الْقَبْرُ رَوْضَةٌ مِنْ رِيَاضِ الْجَنَّةِ أَوْ حُفْرَةٌ مِنْ حُفَرِ النَّارِ.",
                    "source_tr": "Sünen-i Tirmizî",
                    "source_ar": "ت",
                    "week": "51"
                },
                {
                    "data_tr": "Resûlullah Efendimiz sallallâhü aleyhi ve sellem buyurdular: Ey insanlar! Amellerinizi Allah Azze ve Celle için ihlâslı yapınız. Zira Allâhü Teâlâ ancak kendisi için ihlâsla yapılan amelleri kabul eder.",
                    "data_ar": "قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: يَا أَيُّهَا النَّاسُ أَخْلِصُوا أَعْمَالَكُمْ لِلّٰهِ عَزَّ وَجَلَّ فَإِنَّ اللهَ لَا يَقْبَلُ إِلَّا مَا أُخْلِصَ لَهُ.",
                    "source_tr": "Sünen-i Dârekutnî",
                    "source_ar": "قط",
                    "week": "52"
                }
            ]
        }
    """
}
