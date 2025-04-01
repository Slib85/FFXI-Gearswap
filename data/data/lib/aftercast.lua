function global_aftercast(spell)
    if oldMain and oldMain ~= '' then
        equip({
            main=oldMain
        })

        oldMain = ''
    end

    if oldSub and oldSub ~= '' then
        equip({
            sub=oldSub
        })

        oldSub = ''
    end
    
    is_casting = 0
end