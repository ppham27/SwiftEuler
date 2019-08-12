struct SequenceState {
    let currentTerm: Int
    let previousTerm: Int
    let sumOfEvenTerms: Int
}


func updateState(state: SequenceState) -> SequenceState {
    let newTerm = state.previousTerm + state.currentTerm
    return SequenceState(
      currentTerm: newTerm,
      previousTerm: state.currentTerm,
      sumOfEvenTerms: state.sumOfEvenTerms + (newTerm % 2 == 0 ? newTerm : 0))
}


func solve(upperBound: Int, state: SequenceState) -> Int {
    let newState = updateState(state: state)    
    return (newState.currentTerm > upperBound ? state.sumOfEvenTerms :
              solve(upperBound: upperBound, state: newState))
}


public func solve(upperBound: Int) -> Int {
    let initialState: SequenceState = SequenceState(
      currentTerm: 1,
      previousTerm: 0,
      sumOfEvenTerms: 0)
    return solve(upperBound: 4000000, state: initialState)
}
