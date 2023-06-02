
up.game:event('单位-造成伤害',function(_,source,target,skill,damage,damageType)
    if not damage then return end
    local data = {
        source = source,
        target = target,
        skill = skill,
        damage = damage:float(),
        damageType = DamageAttackType[damageType],
    }
    source:event_dispatch('单位-造成伤害',data)
    target:event_dispatch('单位-受到伤害',data)
end)
