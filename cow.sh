#!/bin/bash

alias cow='sh cow.sh'
echo 哞!有什麼事嗎?
read -p "" heycow
if [ $heycow = 幫助 ]; then
echo 哞!我是牛牛,一隻很簡單的機器牛。
echo 目前有下列功能:
echo 笑話 :讓我為你說一句笑話!
echo 猜硬幣 :讓我陪你玩猜硬幣小遊戲!
echo 說話 :讓我一字不差的學你說話!
echo 時間 :看看現在的時間!
echo 敬請期待更多功能!哞~
elif [ $heycow = 笑話 ] || [ $heycow = 笑話! ]; then
echo 哞!讓我想想...
sleep 3
echo 啊!我想到了!
_cowhahanum=`shuf -i 1-11 -n 1`
echo "
冰塊最想做什麼事？ 退伍 因為他當冰很久了 ,有一天，我去吉野家，可是 吉野不在家 ,我走進眼科診所跟醫生抱怨說:「最近視力變差了，我需要配一副新眼鏡.」他 嘆了一口氣回說:「你真的病得不輕，我這裡可是甜甜圈店啊！」 ,有一隻狼寶寶不吃肉只吃素，狼媽媽、狼爸爸看得很擔心，某天，狼寶寶終於追著一隻兔子跑，牠們感到很欣慰，狼寶寶抓到兔子後說: 快把紅蘿蔔交出來！ ,天上的星星有多重？ 8克，因為星巴克 ,有一天，小明去醫院量血壓，血壓計的語音說:血壓升高中，請注意...小明問醫生:為什麼會這樣？醫生回:這表示你的血壓... 國中畢業了。,第一個進船的要說什麼？ 要說online，因為仙境傳說online ,小魚問大魚說:你~喜~歡~吃~怎~樣~的~魚？大魚回:我喜歡吃講話慢的魚！小魚說: 醬紫先走 ,小明每次開可樂，瓶蓋都寫銘謝惠顧，有一天，他在考試，突然忘記銘要怎麼寫了，於是他打開桌上的可樂， 結果寫:再來一瓶 ,有一天，我和牛弟弟在吃草，弟弟問我:草是什麼味道？我回:草莓味.弟弟吃了一口草，生氣的說:這草明明沒有味道！我回:我沒有說錯啊... 我剛剛說草沒有味道，草沒味啊！ ,你知道學校的警衛每天早上都在笑什麼嗎？ 校門口" >> _cowhaha.csv
echo `cut -d , -f $_cowhahanum _cowhaha.csv`
rm -r _cowhaha.csv
elif [ $heycow = 猜硬幣 ]; then
_cowcoin=`shuf -i 1-2 -n 1`
echo 哞!你要猜正面還是反面?
read -p "" cowcoin
if [ $cowcoin = 正 ] || [ $cowcoin = 正面 ] && [ $_cowcoin = 1 ]; then
echo 答對了!
elif [ $cowcoin = 正 ] || [ $cowcoin = 正面 ] && [ $_cowcoin = 2 ]; then
echo 錯了,是反面才對
elif [ $cowcoin = 反 ] || [ $cowcoin = 反面 ] && [ $_cowcoin = 2 ]; then
echo 答對了!
elif [ $cowcoin = 反 ] || [ $cowcoin = 反面 ] && [ $_cowcoin = 1 ]; then
echo 錯了,是反面才對
fi
elif [ $heycow = 說話 ]; then
echo 哞!你要我說什麼?
read -p "" cowsay
echo $cowsay
elif [ $heycow = 時間 ]; then
echo 哞!現在的時間是:$(date +'%Y/%m/%d 星期%u %H:%M:%S')
elif [ $heycow = 🍀 ]; then
echo 謝謝!
fi 2> _cowhideerror
rm -r _cowhideerror
