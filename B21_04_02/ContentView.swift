//
//  ContentView.swift
//  B21_04_02
//
//  Created by Till Hemmerich on 06.11.24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    
    @State private var input : String = ""
    @State private var age: Int  = 10
    @Query private var persons : [Person]
    
    
    var body: some View {
        VStack {
            TextField("Name:", text: $input)
            Stepper("AGE \(age)", value: $age)
            Button("Save"){
                let newPerson = Person(input,age)
                savePersonInDB(person: newPerson)
            }
            List{
                ForEach(persons){ person in
                    Text("\(person.name), \(person.age)")
                }
            }
        }
        .padding()
    }
    
    private func savePersonInDB(person : Person){
        context.insert(person)
    }
}

#Preview {
    let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
    let containter = try! ModelContainer(for: Person.self, configurations: configuration)
    return ContentView()
        .modelContainer(containter)
}
