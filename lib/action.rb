class Action
  attr_reader :owner, :dicepool, :attribute, :difficulty

  def initialize(owner, dicepool)
    @owner = owner
    @dicepool = dicepool

    action_attributes
  end

  def activate(target)
    if dicepool.skill_check(owner.send(attribute), target.send(difficulty))
      success(target)
    else
      failure(target)
    end
  end

  def action_attributes
    raise 'You must initialize @attribute and @difficulty'
  end

  def success
  end

  def failure
  end
end
