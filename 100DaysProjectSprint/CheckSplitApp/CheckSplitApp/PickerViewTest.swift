//
//  PickerViewTest.swift
//  CheckSplitApp
//
//  Created by Tahsin Jahin Khalid on 5/2/22.
//

import SwiftUI

struct PickerViewTest: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct PickerViewTest_Previews: PreviewProvider {
    static var previews: some View {
        PickerViewTest()
    }
}
