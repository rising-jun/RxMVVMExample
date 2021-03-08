//
//  CounterReactor.swift
//  CounterApp
//
//  Created by 김동준 on 2021/03/05.
//

import Foundation
import ReactorKit

class CounterReactor: Reactor{
    
    enum Action {
        case plusRequest(count: Int)
        case minusRequest(count: Int)
    }
    
    enum Mutation{
        case plusCount(count: Int)
        case minusCount(count: Int)
    }
    
    struct State{
        var countState: Int = 0
    }
    
    let initialState: State = State()
    
    func mutate(action: Action) -> Observable<Mutation> {
        
        switch action {
        case .plusRequest(count: let count):
            return Observable.just(Mutation.plusCount(count: count + 1))
        case .minusRequest(count: let count):
            return Observable.just(Mutation.minusCount(count: count - 1))
        }
    }
    
    func reduce(state: State, mutation: Mutation) -> State {
        var newState = state
        switch mutation {
        case let .plusCount(count):
            newState.countState = count
        case let .minusCount(count):
            newState.countState = count
        }
        return newState
    }
    
    
}
