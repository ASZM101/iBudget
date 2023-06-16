//
//  Quiz.swift
//  Trivia
//
//  Created by Adriana Zambrano on 6/14/23.
//

import SwiftUI

struct Quiz: View {
    @State var next2Math = false
    @State var next3Math = false
    @State var wrongFeedback = ["Try Again!", "You Can Do It!", "Not Quite!"]
    @State var correctFeedback = ["That's Correct!", "You Aced It!", "Nice Job!"]
    @State var questionsTempMath = [String]()
    @State var answersQ0TempMath = [String]()
    @State var answersQ1TempMath = [String]()
    @State var answersQ2TempMath = [String]()
    @State var answersQ3TempMath = [String]()
    @State var answersQ4TempMath = [String]()
//    @State var qCountMath = 0
//    @State var aCountMath = 0
    @State var correctCountMath = 0
    @State var qsAnsweredMath = 0
    @State var questionsMath = ["What ratio represents the tan of angle C?", "Which of the following is equal to the expression?", "What does 5! + 4! equal?", "What is the square root of -1?", "Which is closest to the sum of the exterior angles of a 17-gon?"]
    @State var answersQ0Math = ["15/8", "8/15", "17/8", "17/15"]
    @State var answersQ1Math = ["6p + 14q - 7", "14p + 6p", "6p -14q", "14p + 6p + 7"]
    @State var answersQ2Math = ["144", "9", "20", "2880"]
    @State var answersQ3Math = ["i", "l", "1", "0"]
    @State var answersQ4Math = ["360", "2700", "159", "158"]
    @State var qNumMath = 0
    @State var aNumMath = 0
    @State var answer1Math = ""
    @State var answer2Math = ""
    @State var answer3Math = ""
    @State var answer4Math = ""
    @State var question1Math = ""
    @State var question2Math = ""
    @State var question3Math = ""
    @State var question4Math = ""
    @State var question5Math = ""
    @State var imgNameMath = ""
    @State var correct1Math = false
    @State var correct2Math = false
    @State var correct3Math = false
    @State var correct4Math = false
    @State var correctMath = false
    @State var wrongMath = false
    @State var imgQ0Math = false
    @State var imgQ1Math = false
    @State var correct1StringMath = ""
    @State var correct2StringMath = ""
    @State var correct3StringMath = ""
    @State var correct4StringMath = ""
    var body: some View {
            NavigationStack {
                
                ZStack {
                    
                    Rectangle().fill(LinearGradient(gradient: Gradient(colors: [Color("265AB8"), Color("88CFF7")]), startPoint: .top, endPoint: .bottom))
                        .ignoresSafeArea()
                    
                    if !next2Math {
                        
                        HStack(alignment: .center, spacing: 20) {
                            
                            Spacer()
        //                    VStack{
        //                        GeometryReader { geo in
                                    VStack(spacing: 10) {
                                        
                                        Spacer()
                                        VStack {
                                            Text("\(question1Math)")
                                                .font(.custom("Futura-Medium", fixedSize: 25))
                                                .multilineTextAlignment(.center)
                                        }
                                        .frame(maxWidth: .infinity)
                                        if imgQ0Math == true {
                                            Image("mathQ1")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .transition(.move(edge: .trailing))
                                                .zIndex(1)
                                        } else if imgQ1Math == true {
                                            Image("mathQ2")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .transition(.move(edge: .trailing))
                                                .zIndex(1)
                                        }
                                        Spacer()
                                        Button("\(answer1Math)") {
                                            if answer1Math == "15/8" || answer1Math == "6p + 14q - 7" || answer1Math == "144" || answer1Math == "i" || answer1Math == "360" {
                                                correct1Math = true
                                                correct1StringMath = "true"
                                                correctMath = true
                                                wrongMath = false
                                                if qsAnsweredMath == 0 {
                                                    correctCountMath += 1
                                                    qsAnsweredMath += 1
                                                }
                                            } else {
                                                correct1Math = false
                                                correct2Math = false
                                                correct3Math = false
                                                correct4Math = false
                                                correct2StringMath = "false"
                                                correctMath = false
                                                wrongMath = true
                                                if qsAnsweredMath == 0 {
                                                    qsAnsweredMath += 1
                                                }
                                            }
                                            print("\(correctCountMath)/\(qsAnsweredMath)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
        //                                .frame(width: geo.size.width)
                                        .font(.custom("Futura-Medium", fixedSize: 22.5))
                                        .padding(.all, 10.0)
                                        .tint(Color(correct1Math ? "000000" : "FFFFFF"))
                                        .background(Color(correct1Math ? "A6FF91" : "007FFF"))
        //                                .shadow(color: Color(correct1Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                        .cornerRadius(30)
                                        .shadow(color: correct1Math ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        Button("\(answer2Math)") {
                                            if answer2Math == "15/8" || answer2Math == "6p + 14q - 7" || answer2Math == "144" || answer2Math == "i" || answer2Math == "360" {
                                                correct2Math = true
                                                correct2StringMath = "true"
                                                correctMath = true
                                                wrongMath = false
                                                if qsAnsweredMath == 0 {
                                                    correctCountMath += 1
                                                    qsAnsweredMath += 1
                                                }
                                            } else {
                                                correct1Math = false
                                                correct2Math = false
                                                correct3Math = false
                                                correct4Math = false
                                                correct2StringMath = "false"
                                                correctMath = false
                                                wrongMath = true
                                                if qsAnsweredMath == 0 {
                                                    qsAnsweredMath += 1
                                                }
                                            }
                                            print("\(correctCountMath)/\(qsAnsweredMath)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
        //                                .frame(width: geo.size.width)
                                        .font(.custom("Futura-Medium", fixedSize: 22.5))
                                        
                                        .padding(.all, 10.0)
                                        .tint(Color(correct2Math ? "000000" : "FFFFFF"))
                                        .background(Color(correct2Math ? "A6FF91" : "007FFF"))
        //                                .shadow(color: Color(correct2Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                        .cornerRadius(30)
                                        .shadow(color: correct2Math ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        Button("\(answer3Math)") {
                                            if answer3Math == "15/8" || answer3Math == "6p + 14q - 7" || answer3Math == "144" || answer3Math == "i" || answer3Math == "360" {
                                                correct3Math = true
                                                correct3StringMath = "true"
                                                correctMath = true
                                                wrongMath = false
                                                if qsAnsweredMath == 0 {
                                                    correctCountMath += 1
                                                    qsAnsweredMath += 1
                                                }
                                            } else {
                                                correct1Math = false
                                                correct2Math = false
                                                correct3Math = false
                                                correct4Math = false
                                                correct3StringMath = "false"
                                                correctMath = false
                                                wrongMath = true
                                                if qsAnsweredMath == 0 {
                                                    qsAnsweredMath += 1
                                                }
                                            }
                                            print("\(correctCountMath)/\(qsAnsweredMath)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
        //                                .frame(width: geo.size.width)
                                        .font(.custom("Futura-Medium", fixedSize: 22.5))
                                        
                                        .padding(.all, 10.0)
                                        .tint(Color(correct3Math ? "000000" : "FFFFFF"))
                                        .background(Color(correct3Math ? "A6FF91" : "007FFF"))
        //                                .shadow(color: Color(correct3Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                        .cornerRadius(30)
                                        .shadow(color: correct3Math ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        Button("\(answer4Math)") {
                                            if answer4Math == "15/8" || answer4Math == "6p + 14q - 7" || answer4Math == "144" || answer4Math == "i" || answer4Math == "360" {
                                            correct4Math = true
                                            correct4StringMath = "true"
                                            correctMath = true
                                            wrongMath = false
                                                if qsAnsweredMath == 0 {
                                                    correctCountMath += 1
                                                    qsAnsweredMath += 1
                                                }
                                            } else {
                                                correct1Math = false
                                                correct2Math = false
                                                correct3Math = false
                                                correct4Math = false
                                                correct4StringMath = "false"
                                                correctMath = false
                                                wrongMath = true
                                                if qsAnsweredMath == 0 {
                                                    qsAnsweredMath += 1
                                                }
                                            }
                                            print("\(correctCountMath)/\(qsAnsweredMath)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
        //                                .frame(width: geo.size.width)
                                        .font(.custom("Futura-Medium", fixedSize: 22.5))
                                        
                                        .padding(.all, 10.0)
                                        .tint(Color(correct4Math ? "000000" : "FFFFFF"))
                                        .background(Color(correct4Math ? "A6FF91" : "007FFF"))
        //                                .shadow(color: Color(correct4Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                        .cornerRadius(30)
                                        .shadow(color: correct4Math ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        
                                        if correctMath == true {
                                            Spacer()
                                            Text("\(correctFeedback[Int.random(in: 0..<correctFeedback.count)])")
                                                .font(.custom("Futura-Bold", fixedSize: correctMath ? 22.5 : 0))
                                                .multilineTextAlignment(.center)
                                                .opacity(correctMath ? 1 : 0)
                                                .foregroundColor(Color("149600"))
                                            HStack {
                                                Spacer()
        //                                        NavigationLink(destination: Math2()) {
                                                    Text("Next")
                                                        .font(.custom("Futura-Bold", fixedSize: 20))
                                                        .foregroundColor(Color("007FFF"))
                                                        .onTapGesture {
                                                            withAnimation(.spring()) {
                                                                next2Math.toggle()
                                                            }
                                                        }
                                                    Text("➔")
                                                        .font(.custom("Futura-Medium", fixedSize: 30))
                                                        .foregroundColor(Color("007FFF"))
                                                        .onTapGesture {
                                                            withAnimation(.spring()) {
                                                                next2Math.toggle()
                                                            }
                                                        }
    //                                            if !next2Math {
    //
    //                                            } else {
    //                                                HStack(alignment: .center, spacing: 20) {
    //
    //                                                    Spacer()
    //                                //                    VStack{
    //                                //                        GeometryReader { geo in
    //
    //                                                            VStack(spacing: 10) {
    //
    //                                                                Spacer()
    //                                                                Text("\(question1Math)")
    //                                                                    .font(.custom("Futura-Medium", fixedSize: 25))
    //                                                                    .multilineTextAlignment(.center)
    //                                                                if imgQ0Math == true {
    //                                                                    Image("MathQ1")
    //                                                                        .resizable(resizingMode: .stretch)
    //                                                                        .aspectRatio(contentMode: .fit)
    //                                                                } else if imgQ3Math == true {
    //                                                                    Image("MathQ4")
    //                                                                        .resizable(resizingMode: .stretch)
    //                                                                        .aspectRatio(contentMode: .fit)
    //                                                                }
    //                                                                Spacer()
    //                                                                Button("\(answer1Math)") {
    //                                                                    if answer1Math == "len = 5" || answer1Math == "var can be changed,\nlet cannot be changed" || answer1Math == "Integer: non-decimal number,\nDouble: decimal" || answer1Math == "() is missing after [String]" || answer1Math == "Returns a value from a function" {
    //                                                                        correct1Math = true
    //                                                                        correct1StringMath = "true"
    //                                                                        correctMath = true
    //                                                                        wrongMath = false
    //                                                                        if qsAnsweredMath == 1 {
    //                                                                            correctCountMath += 1
    //                                                                            qsAnsweredMath += 1
    //                                                                        }
    //                                                                    } else {
    //                                                                        correct1Math = false
    //                                                                        correct2Math = false
    //                                                                        correct3Math = false
    //                                                                        correct4Math = false
    //                                                                        correct1StringMath = "false"
    //                                                                        correctMath = false
    //                                                                        wrongMath = true
    //                                                                        qsAnsweredMath += 1
    //                                                                    }
    //                                                                }
    //                                                                .frame(width: UIScreen.main.bounds.width * 3/4)
    //                                //                                .frame(width: geo.size.width)
    //                                                                .font(.custom("Futura-Medium", fixedSize: 22.5))
    //
    //                                                                .padding(.all, 10.0)
    //                                                                .tint(Color(correct1Math ? "000000" : "FFFFFF"))
    //                                                                .background(Color(correct1Math ? "A6FF91" : "007FFF"))
    //                                                                .cornerRadius(30)
    //                                                                .shadow(color: Color(correct1Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
    //                                                                Button("\(answer2Math)") {
    //                                                                    if answer2Math == "len = 5" || answer2Math == "var can be changed,\nlet cannot be changed" || answer2Math == "Integer: non-decimal number,\nDouble: decimal" || answer2Math == "() is missing after [String]" || answer2Math == "Returns a value from a function" {
    //                                                                        correct2Math = true
    //                                                                        correct2StringMath = "true"
    //                                                                        correctMath = true
    //                                                                        wrongMath = false
    //                                                                        if qsAnsweredMath == 1 {
    //                                                                            correctCountMath += 1
    //                                                                            qsAnsweredMath += 1
    //                                                                        }
    //                                                                    } else {
    //                                                                        correct1Math = false
    //                                                                        correct2Math = false
    //                                                                        correct3Math = false
    //                                                                        correct4Math = false
    //                                                                        correct2StringMath = "false"
    //                                                                        correctMath = false
    //                                                                        wrongMath = true
    //                                                                        qsAnsweredMath += 1
    //                                                                    }
    //                                                                }
    //                                                                .frame(width: UIScreen.main.bounds.width * 3/4)
    //                                //                                .frame(width: geo.size.width)
    //                                                                .font(.custom("Futura-Medium", fixedSize: 22.5))
    //
    //                                                                .padding(.all, 10.0)
    //                                                                .tint(Color(correct2Math ? "000000" : "FFFFFF"))
    //                                                                .background(Color(correct2Math ? "A6FF91" : "007FFF"))
    //                                                                .cornerRadius(30)
    //                                                                .shadow(color: Color(correct2Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
    //                                                                Button("\(answer3Math)") {
    //                                                                    if answer3Math == "len = 5" || answer3Math == "var can be changed,\nlet cannot be changed" || answer3Math == "Integer: non-decimal number,\nDouble: decimal" || answer3Math == "() is missing after [String]" || answer3Math == "Returns a value from a function" {
    //                                                                        correct3Math = true
    //                                                                        correct3StringMath = "true"
    //                                                                        correctMath = true
    //                                                                        wrongMath = false
    //                                                                        if qsAnsweredMath == 1 {
    //                                                                            correctCountMath += 1
    //                                                                            qsAnsweredMath += 1
    //                                                                        }
    //                                                                    } else {
    //                                                                        correct1Math = false
    //                                                                        correct2Math = false
    //                                                                        correct3Math = false
    //                                                                        correct4Math = false
    //                                                                        correct3StringMath = "false"
    //                                                                        correctMath = false
    //                                                                        wrongMath = true
    //                                                                        qsAnsweredMath += 1
    //                                                                    }
    //                                                                }
    //                                                                .frame(width: UIScreen.main.bounds.width * 3/4)
    //                                //                                .frame(width: geo.size.width)
    //                                                                .font(.custom("Futura-Medium", fixedSize: 22.5))
    //
    //                                                                .padding(.all, 10.0)
    //                                                                .tint(Color(correct3Math ? "000000" : "FFFFFF"))
    //                                                                .background(Color(correct3Math ? "A6FF91" : "007FFF"))
    //                                                                .cornerRadius(30)
    //                                                                .shadow(color: Color(correct3Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
    //                                                                Button("\(answer4Math)") {
    //                                                                    if answer4Math == "len = 5" || answer4Math == "var can be changed,\nlet cannot be changed" || answer4Math == "Integer: non-decimal number,\nDouble: decimal" || answer4Math == "() is missing after [String]" || answer4Math == "Returns a value from a function" {
    //                                                                    correct4Math = true
    //                                                                    correct4StringMath = "true"
    //                                                                    correctMath = true
    //                                                                    wrongMath = false
    //                                                                        if qsAnsweredMath == 1 {
    //                                                                            correctCountMath += 1
    //                                                                            qsAnsweredMath += 1
    //                                                                        }
    //                                                                    } else {
    //                                                                        correct1Math = false
    //                                                                        correct2Math = false
    //                                                                        correct3Math = false
    //                                                                        correct4Math = false
    //                                                                        correct4StringMath = "false"
    //                                                                        correctMath = false
    //                                                                        wrongMath = true
    //                                                                        qsAnsweredMath += 1
    //                                                                    }
    //                                                                }
    //                                                                .frame(width: UIScreen.main.bounds.width * 3/4)
    //                                //                                .frame(width: geo.size.width)
    //                                                                .font(.custom("Futura-Medium", fixedSize: 22.5))
    //
    //                                                                .padding(.all, 10.0)
    //                                                                .tint(Color(correct4Math ? "000000" : "FFFFFF"))
    //                                                                .background(Color(correct4Math ? "A6FF91" : "007FFF"))
    //                                                                .cornerRadius(30)
    //                                                                .shadow(color: Color(correct4Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
    //                                                                if correctMath == true {
    //                                                                    Spacer()
    //                                                                    Text("\(correctFeedback[Int.random(in: 0..<correctFeedback.count)])")
    //                                                                        .font(.custom("Futura-Bold", fixedSize: correctMath ? 22.5 : 0))
    //                                                                        .multilineTextAlignment(.center)
    //                                                                        .opacity(correctMath ? 1 : 0)
    //                                                                        .foregroundColor(Color("149600"))
    //                                                                    HStack {
    //                                                                        Spacer()
    //                                                                        NavigationLink(destination: Math3()) {
    //                                                                            Text("Next")
    //                                                                                .font(.custom("Futura-Bold", fixedSize: 20))
    //                                                                                .foregroundColor(Color("007FFF"))
    //                                                                            Text("➔")
    //                                                                                .font(.custom("Futura-Medium", fixedSize: 30))
    //                                                                                .foregroundColor(Color("007FFF"))
    //                                                                        }
    //                                                                    }
    //                                                            } else if wrongMath == true {
    //                                                                Spacer()
    //                                                                Text("\(wrongFeedback[Int.random(in: 0..<wrongFeedback.count)])")
    //                                                                    .font(.custom("Futura-Bold", fixedSize: wrongMath ? 22.5 : 0))
    //                                                                    .multilineTextAlignment(.center)
    //                                                                    .opacity(wrongMath ? 1 : 0)
    //                                                                    .foregroundColor(Color("FF0057"))
    //                                                            }
    //                                                                //                        NavigationLink(destination: Home()) {
    //                                                                //
    //                                                                //                            Text("Go to Home")
    //                                                                //                        }
    //                                //                                Spacer()
    //                                                            }
    //                                //                        }
    //                                //                    }
    //                                                    .padding()
    //                                                    .background(.white)
    //                                                    .cornerRadius(30)
    //                                                    .frame(maxWidth: UIScreen.main.bounds.width * 7/8)
    //
    //                                                    Spacer()
    //                                                }
    //                                                .frame(width: 400)
    //                                                .task {
    //
    //                                                    qNumMath = Int.random(in: 0..<questionsMath.count)
    //                                                    aNumMath = Int.random(in: 0..<answersQ0Math.count)
    //                                                    question1Math = questionsMath[qNumMath]
    //                                                    questionsTempMath.append(question1Math)
    //                                                    questionsMath.remove(at: qNumMath)
    //                                                    if qNumMath == 0 {
    //                                                        imgNameMath = "MathQ1"
    //                                                        imgQ0Math = true
    //                                                        answer1Math = answersQ0Math[aNumMath]
    //                                                        answersQ0TempMath.append(answer1Math)
    //                                                        answersQ0Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ0Math.count)
    //                                                        answer2Math = answersQ0Math[aNumMath]
    //                                                        answersQ0TempMath.append(answer2Math)
    //                                                        answersQ0Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ0Math.count)
    //                                                        answer3Math = answersQ0Math[aNumMath]
    //                                                        answersQ0TempMath.append(answer3Math)
    //                                                        answersQ0Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ0Math.count)
    //                                                        answer4Math = answersQ0Math[aNumMath]
    //                                                        answersQ0TempMath.append(answer4Math)
    //                                                        answersQ0Math.remove(at: aNumMath)
    //                                                    } else if qNumMath == 1 {
    //                                                        answer1Math = answersQ1Math[aNumMath]
    //                                                        answersQ1TempMath.append(answer1Math)
    //                                                        answersQ1Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ1Math.count)
    //                                                        answer2Math = answersQ1Math[aNumMath]
    //                                                        answersQ1TempMath.append(answer2Math)
    //                                                        answersQ1Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ1Math.count)
    //                                                        answer3Math = answersQ1Math[aNumMath]
    //                                                        answersQ1TempMath.append(answer3Math)
    //                                                        answersQ1Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ1Math.count)
    //                                                        answer4Math = answersQ1Math[aNumMath]
    //                                                        answersQ1TempMath.append(answer4Math)
    //                                                        answersQ1Math.remove(at: aNumMath)
    //                                                    } else if qNumMath == 2 {
    //                                                        answer1Math = answersQ2Math[aNumMath]
    //                                                        answersQ2TempMath.append(answer1Math)
    //                                                        answersQ2Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ2Math.count)
    //                                                        answer2Math = answersQ2Math[aNumMath]
    //                                                        answersQ2TempMath.append(answer2Math)
    //                                                        answersQ2Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ2Math.count)
    //                                                        answer3Math = answersQ2Math[aNumMath]
    //                                                        answersQ2TempMath.append(answer3Math)
    //                                                        answersQ2Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ2Math.count)
    //                                                        answer4Math = answersQ2Math[aNumMath]
    //                                                        answersQ2TempMath.append(answer4Math)
    //                                                        answersQ2Math.remove(at: aNumMath)
    //                                                    } else if qNumMath == 3 {
    //                                                        imgNameMath = "MathQ4"
    //                                                        imgQ3Math = true
    //                                                        answer1Math = answersQ3Math[aNumMath]
    //                                                        answersQ3TempMath.append(answer1Math)
    //                                                        answersQ3Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ3Math.count)
    //                                                        answer2Math = answersQ3Math[aNumMath]
    //                                                        answersQ3TempMath.append(answer2Math)
    //                                                        answersQ3Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ3Math.count)
    //                                                        answer3Math = answersQ3Math[aNumMath]
    //                                                        answersQ3TempMath.append(answer3Math)
    //                                                        answersQ3Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ3Math.count)
    //                                                        answer4Math = answersQ3Math[aNumMath]
    //                                                        answersQ3TempMath.append(answer4Math)
    //                                                        answersQ3Math.remove(at: aNumMath)
    //                                                    } else if qNumMath == 4 {
    //                                                        answer1Math = answersQ4Math[aNumMath]
    //                                                        answersQ4TempMath.append(answer1Math)
    //                                                        answersQ4Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ4Math.count)
    //                                                        answer2Math = answersQ4Math[aNumMath]
    //                                                        answersQ4TempMath.append(answer2Math)
    //                                                        answersQ4Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ4Math.count)
    //                                                        answer3Math = answersQ4Math[aNumMath]
    //                                                        answersQ4TempMath.append(answer3Math)
    //                                                        answersQ4Math.remove(at: aNumMath)
    //                                                        aNumMath = Int.random(in: 0..<answersQ4Math.count)
    //                                                        answer4Math = answersQ4Math[aNumMath]
    //                                                        answersQ4TempMath.append(answer4Math)
    //                                                        answersQ4Math.remove(at: aNumMath)
    //                                                    }
    //
    //                                                }
    //                                                .transition(.move(edge: .trailing))
    //                                                .zIndex(1)
    //                                            }
        //                                        }
                                            }
                                    } else if wrongMath == true {
                                            
                                            Spacer()
                                        Text("\(wrongFeedback[Int.random(in: 0..<wrongFeedback.count)])")
        //                                    .onAppear {
        //                                        Task {
        //                                            correct1Math = false
        //                                            correct2Math = false
        //                                            correct3Math = false
        //                                            correct4Math = false
        //                                        }
        //                                    }
                                                .font(.custom("Futura-Bold", fixedSize: wrongMath ? 22.5 : 0))
                                                .multilineTextAlignment(.center)
                                                .opacity(wrongMath ? 1 : 0)
                                                .foregroundColor(Color("FF0057"))
                                        }
        //                                if wrongMath == true {
        //                                        correct1Math = false
        //                                        correct2Math = false
        //                                        correct3Math = false
        //                                        correct4Math = false
        //                                }
                                        //                        NavigationLink(destination: Home()) {
                                        //
                                        //                            Text("Go to Home")
                                        //                        }
        //                                Spacer()
                                    }
        //                        }
        //                    }
                            .padding()
                            .background(.white)
                            .cornerRadius(30)
                            .frame(maxWidth: UIScreen.main.bounds.width * 7/8)
                            Spacer()
                        }
                        .frame(width: 400)
                        .task {
                            
                            qNumMath = Int.random(in: 0..<questionsMath.count)
                            aNumMath = Int.random(in: 0..<answersQ0Math.count)
                            question1Math = questionsMath[qNumMath]
                            questionsTempMath.append(question1Math)
                            questionsMath[qNumMath] = ""
                            if qNumMath == 0 {
                                imgNameMath = "mathQ1"
                                imgQ0Math = true
                                answer1Math = answersQ0Math[aNumMath]
                                answersQ0TempMath.append(answer1Math)
                                answersQ0Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ0Math.count)
                                answer2Math = answersQ0Math[aNumMath]
                                answersQ0TempMath.append(answer2Math)
                                answersQ0Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ0Math.count)
                                answer3Math = answersQ0Math[aNumMath]
                                answersQ0TempMath.append(answer3Math)
                                answersQ0Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ0Math.count)
                                answer4Math = answersQ0Math[aNumMath]
                                answersQ0TempMath.append(answer4Math)
                                answersQ0Math.remove(at: aNumMath)
                            } else if qNumMath == 1 {
                                imgNameMath = "mathQ2"
                                imgQ1Math = true
                                answer1Math = answersQ1Math[aNumMath]
                                answersQ1TempMath.append(answer1Math)
                                answersQ1Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ1Math.count)
                                answer2Math = answersQ1Math[aNumMath]
                                answersQ1TempMath.append(answer2Math)
                                answersQ1Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ1Math.count)
                                answer3Math = answersQ1Math[aNumMath]
                                answersQ1TempMath.append(answer3Math)
                                answersQ1Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ1Math.count)
                                answer4Math = answersQ1Math[aNumMath]
                                answersQ1TempMath.append(answer4Math)
                                answersQ1Math.remove(at: aNumMath)
                            } else if qNumMath == 2 {
                                answer1Math = answersQ2Math[aNumMath]
                                answersQ2TempMath.append(answer1Math)
                                answersQ2Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ2Math.count)
                                answer2Math = answersQ2Math[aNumMath]
                                answersQ2TempMath.append(answer2Math)
                                answersQ2Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ2Math.count)
                                answer3Math = answersQ2Math[aNumMath]
                                answersQ2TempMath.append(answer3Math)
                                answersQ2Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ2Math.count)
                                answer4Math = answersQ2Math[aNumMath]
                                answersQ2TempMath.append(answer4Math)
                                answersQ2Math.remove(at: aNumMath)
                            } else if qNumMath == 3 {
                                
                                answer1Math = answersQ3Math[aNumMath]
                                answersQ3TempMath.append(answer1Math)
                                answersQ3Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ3Math.count)
                                answer2Math = answersQ3Math[aNumMath]
                                answersQ3TempMath.append(answer2Math)
                                answersQ3Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ3Math.count)
                                answer3Math = answersQ3Math[aNumMath]
                                answersQ3TempMath.append(answer3Math)
                                answersQ3Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ3Math.count)
                                answer4Math = answersQ3Math[aNumMath]
                                answersQ3TempMath.append(answer4Math)
                                answersQ3Math.remove(at: aNumMath)
                            } else if qNumMath == 4 {
                                answer1Math = answersQ4Math[aNumMath]
                                answersQ4TempMath.append(answer1Math)
                                answersQ4Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ4Math.count)
                                answer2Math = answersQ4Math[aNumMath]
                                answersQ4TempMath.append(answer2Math)
                                answersQ4Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ4Math.count)
                                answer3Math = answersQ4Math[aNumMath]
                                answersQ4TempMath.append(answer3Math)
                                answersQ4Math.remove(at: aNumMath)
                                aNumMath = Int.random(in: 0..<answersQ4Math.count)
                                answer4Math = answersQ4Math[aNumMath]
                                answersQ4TempMath.append(answer4Math)
                                answersQ4Math.remove(at: aNumMath)
                            }
                            
                        }
                    } else {
                        
                        if !next3Math {
                            
                            HStack(alignment: .center, spacing: 20) {
                                
                                Spacer()
            //                    VStack{
            //                        GeometryReader { geo in
                                        
                                        VStack(spacing: 10) {
                                            
                                            Spacer()
                                            VStack {
                                                Text("\(question2Math)")
                                                    .font(.custom("Futura-Medium", fixedSize: 25))
                                                    .multilineTextAlignment(.center)
                                            }
                                            .frame(maxWidth: .infinity)
                                            if imgQ0Math == true {
                                                Image("mathQ1")
                                                    .resizable(resizingMode: .stretch)
                                                    .aspectRatio(contentMode: .fit)
                                                    .transition(.move(edge: .trailing))
                                                    .zIndex(3)
                                            } else if imgQ1Math == true {
                                                Image("mathQ2")
                                                    .resizable(resizingMode: .stretch)
                                                    .aspectRatio(contentMode: .fit)
                                                    .transition(.move(edge: .trailing))
                                                    .zIndex(3)
                                            }
                                            Spacer()
                                            Button("\(answer1Math)") {
                                                if answer1Math == "15/8" || answer1Math == "6p + 14q - 7" || answer1Math == "144" || answer1Math == "i" || answer1Math == "360" {
                                                    correct1Math = true
                                                    correct1StringMath = "true"
                                                    correctMath = true
                                                    wrongMath = false
                                                    if qsAnsweredMath == 1 {
                                                        correctCountMath += 1
                                                        qsAnsweredMath += 1
                                                    }
                                                } else {
                                                    correct1Math = false
                                                    correct2Math = false
                                                    correct3Math = false
                                                    correct4Math = false
                                                    correct1StringMath = "false"
                                                    correctMath = false
                                                    wrongMath = true
                                                    if qsAnsweredMath == 1 {
                                                        qsAnsweredMath += 1
                                                    }
                                                }
                                                print("\(correctCountMath)/\(qsAnsweredMath)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
            //                                .frame(width: geo.size.width)
                                            .font(.custom("Futura-Medium", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .tint(Color(correct1Math ? "000000" : "FFFFFF"))
                                            .background(Color(correct1Math ? "A6FF91" : "007FFF"))
                                            .cornerRadius(30)
                                            .shadow(color: Color(correct1Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer2Math)") {
                                                if answer2Math == "15/8" || answer2Math == "6p + 14q - 7" || answer2Math == "144" || answer2Math == "i" || answer2Math == "360" {
                                                    correct2Math = true
                                                    correct2StringMath = "true"
                                                    correctMath = true
                                                    wrongMath = false
                                                    if qsAnsweredMath == 1 {
                                                        correctCountMath += 1
                                                        qsAnsweredMath += 1
                                                    }
                                                } else {
                                                    correct1Math = false
                                                    correct2Math = false
                                                    correct3Math = false
                                                    correct4Math = false
                                                    correct2StringMath = "false"
                                                    correctMath = false
                                                    wrongMath = true
                                                    if qsAnsweredMath == 1 {
                                                        qsAnsweredMath += 1
                                                    }
                                                }
                                                print("\(correctCountMath)/\(qsAnsweredMath)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
            //                                .frame(width: geo.size.width)
                                            .font(.custom("Futura-Medium", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .tint(Color(correct2Math ? "000000" : "FFFFFF"))
                                            .background(Color(correct2Math ? "A6FF91" : "007FFF"))
                                            .cornerRadius(30)
                                            .shadow(color: Color(correct2Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer3Math)") {
                                                if answer3Math == "15/8" || answer3Math == "6p + 14q - 7" || answer3Math == "144" || answer3Math == "i" || answer3Math == "360" {
                                                    correct3Math = true
                                                    correct3StringMath = "true"
                                                    correctMath = true
                                                    wrongMath = false
                                                    if qsAnsweredMath == 1 {
                                                        correctCountMath += 1
                                                        qsAnsweredMath += 1
                                                    }
                                                } else {
                                                    correct1Math = false
                                                    correct2Math = false
                                                    correct3Math = false
                                                    correct4Math = false
                                                    correct3StringMath = "false"
                                                    correctMath = false
                                                    wrongMath = true
                                                    if qsAnsweredMath == 1 {
                                                        qsAnsweredMath += 1
                                                    }
                                                }
                                                print("\(correctCountMath)/\(qsAnsweredMath)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
            //                                .frame(width: geo.size.width)
                                            .font(.custom("Futura-Medium", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .tint(Color(correct3Math ? "000000" : "FFFFFF"))
                                            .background(Color(correct3Math ? "A6FF91" : "007FFF"))
                                            .cornerRadius(30)
                                            .shadow(color: Color(correct3Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer4Math)") {
                                                if answer4Math == "15/8" || answer4Math == "6p + 14q - 7" || answer4Math == "144" || answer4Math == "i" || answer4Math == "360" {
                                                correct4Math = true
                                                correct4StringMath = "true"
                                                correctMath = true
                                                wrongMath = false
                                                    if qsAnsweredMath == 1 {
                                                        correctCountMath += 1
                                                        qsAnsweredMath += 1
                                                    }
                                                } else {
                                                    correct1Math = false
                                                    correct2Math = false
                                                    correct3Math = false
                                                    correct4Math = false
                                                    correct4StringMath = "false"
                                                    correctMath = false
                                                    wrongMath = true
                                                    if qsAnsweredMath == 1 {
                                                        qsAnsweredMath += 1
                                                    }
                                                }
                                                print("\(correctCountMath)/\(qsAnsweredMath)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
            //                                .frame(width: geo.size.width)
                                            .font(.custom("Futura-Medium", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .tint(Color(correct4Math ? "000000" : "FFFFFF"))
                                            .background(Color(correct4Math ? "A6FF91" : "007FFF"))
                                            .cornerRadius(30)
                                            .shadow(color: Color(correct4Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                            if correctMath == true {
                                                Spacer()
                                                Text("\(correctFeedback[Int.random(in: 0..<correctFeedback.count)])")
                                                    .font(.custom("Futura-Bold", fixedSize: correctMath ? 22.5 : 0))
                                                    .multilineTextAlignment(.center)
                                                    .opacity(correctMath ? 1 : 0)
                                                    .foregroundColor(Color("149600"))
                                                HStack {
                                                    Spacer()
            //                                        NavigationLink(destination: Math3()) {
                                                        Text("Next")
                                                            .font(.custom("Futura-Bold", fixedSize: 20))
                                                            .foregroundColor(Color("007FFF"))
                                                            .onTapGesture {
                                                                withAnimation(.spring()) {
                                                                    next3Math.toggle()
                                                                }
                                                            }
                                                        Text("➔")
                                                            .font(.custom("Futura-Medium", fixedSize: 30))
                                                            .foregroundColor(Color("007FFF"))
                                                            .onTapGesture {
                                                                withAnimation(.spring()) {
                                                                    next3Math.toggle()
                                                                }
                                                            }
            //                                        }
                                                }
                                        } else if wrongMath == true {
                                            Spacer()
                                            Text("\(wrongFeedback[Int.random(in: 0..<wrongFeedback.count)])")
                                                .font(.custom("Futura-Bold", fixedSize: wrongMath ? 22.5 : 0))
                                                .multilineTextAlignment(.center)
                                                .opacity(wrongMath ? 1 : 0)
                                                .foregroundColor(Color("FF0057"))
                                        }
                                            //                        NavigationLink(destination: Home()) {
                                            //
                                            //                            Text("Go to Home")
                                            //                        }
            //                                Spacer()
                                        }
            //                        }
            //                    }
                                .padding()
                                .background(.white)
                                .cornerRadius(30)
                                .frame(maxWidth: UIScreen.main.bounds.width * 7/8)
                                
                                Spacer()
                            }
                            .frame(width: 400)
                            .task {
                                
                                answer1Math = ""
                                answer2Math = ""
                                answer3Math = ""
                                answer4Math = ""
    //                            question1Math = ""
                                question2Math = ""
                                question3Math = ""
    //                            question4Math = ""
    //                            question5Math = ""
                                imgNameMath = ""
                                correct1Math = false
                                correct2Math = false
                                correct3Math = false
                                correct4Math = false
                                correctMath = false
                                wrongMath = false
                                imgQ0Math = false
                                imgQ1Math = false
                                correct1StringMath = ""
                                correct2StringMath = ""
                                correct3StringMath = ""
                                correct4StringMath = ""
                                qNumMath = Int.random(in: 0..<questionsMath.count)
                                aNumMath = Int.random(in: 0...3)
                                while questionsMath[qNumMath] == "" {
                                    qNumMath = Int.random(in: 0..<questionsMath.count)
                                }
                                question2Math = questionsMath[qNumMath]
                                questionsTempMath.append(question2Math)
                                questionsMath[qNumMath] = ""
                                if qNumMath == 0 {
                                    imgNameMath = "mathQ1"
                                    imgQ0Math = true
                                    answer1Math = answersQ0Math[aNumMath]
                                    answersQ0TempMath.append(answer1Math)
                                    answersQ0Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ0Math.count)
                                    answer2Math = answersQ0Math[aNumMath]
                                    answersQ0TempMath.append(answer2Math)
                                    answersQ0Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ0Math.count)
                                    answer3Math = answersQ0Math[aNumMath]
                                    answersQ0TempMath.append(answer3Math)
                                    answersQ0Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ0Math.count)
                                    answer4Math = answersQ0Math[aNumMath]
                                    answersQ0TempMath.append(answer4Math)
                                    answersQ0Math.remove(at: aNumMath)
                                } else if qNumMath == 1 {
                                    imgNameMath = "mathQ2"
                                    imgQ1Math = true
                                    answer1Math = answersQ1Math[aNumMath]
                                    answersQ1TempMath.append(answer1Math)
                                    answersQ1Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ1Math.count)
                                    answer2Math = answersQ1Math[aNumMath]
                                    answersQ1TempMath.append(answer2Math)
                                    answersQ1Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ1Math.count)
                                    answer3Math = answersQ1Math[aNumMath]
                                    answersQ1TempMath.append(answer3Math)
                                    answersQ1Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ1Math.count)
                                    answer4Math = answersQ1Math[aNumMath]
                                    answersQ1TempMath.append(answer4Math)
                                    answersQ1Math.remove(at: aNumMath)
                                } else if qNumMath == 2 {
                                    answer1Math = answersQ2Math[aNumMath]
                                    answersQ2TempMath.append(answer1Math)
                                    answersQ2Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ2Math.count)
                                    answer2Math = answersQ2Math[aNumMath]
                                    answersQ2TempMath.append(answer2Math)
                                    answersQ2Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ2Math.count)
                                    answer3Math = answersQ2Math[aNumMath]
                                    answersQ2TempMath.append(answer3Math)
                                    answersQ2Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ2Math.count)
                                    answer4Math = answersQ2Math[aNumMath]
                                    answersQ2TempMath.append(answer4Math)
                                    answersQ2Math.remove(at: aNumMath)
                                } else if qNumMath == 3 {
                                    
                                    answer1Math = answersQ3Math[aNumMath]
                                    answersQ3TempMath.append(answer1Math)
                                    answersQ3Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ3Math.count)
                                    answer2Math = answersQ3Math[aNumMath]
                                    answersQ3TempMath.append(answer2Math)
                                    answersQ3Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ3Math.count)
                                    answer3Math = answersQ3Math[aNumMath]
                                    answersQ3TempMath.append(answer3Math)
                                    answersQ3Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ3Math.count)
                                    answer4Math = answersQ3Math[aNumMath]
                                    answersQ3TempMath.append(answer4Math)
                                    answersQ3Math.remove(at: aNumMath)
                                } else if qNumMath == 4 {
                                    answer1Math = answersQ4Math[aNumMath]
                                    answersQ4TempMath.append(answer1Math)
                                    answersQ4Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ4Math.count)
                                    answer2Math = answersQ4Math[aNumMath]
                                    answersQ4TempMath.append(answer2Math)
                                    answersQ4Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ4Math.count)
                                    answer3Math = answersQ4Math[aNumMath]
                                    answersQ4TempMath.append(answer3Math)
                                    answersQ4Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ4Math.count)
                                    answer4Math = answersQ4Math[aNumMath]
                                    answersQ4TempMath.append(answer4Math)
                                    answersQ4Math.remove(at: aNumMath)
                                }
                                
                            }
                            .transition(.move(edge: .trailing))
                            .zIndex(2)
                        } else {
                            
                            HStack(alignment: .center, spacing: 20) {
                                
                                Spacer()
            //                    VStack{
            //                        GeometryReader { geo in
                                        
                                        VStack(spacing: 10) {
                                            
                                            Spacer()
                                            VStack {
                                                Text("\(question3Math)")
                                                    .font(.custom("Futura-Medium", fixedSize: 25))
                                                    .multilineTextAlignment(.center)
                                            }
                                            .frame(maxWidth: .infinity)
                                            if imgQ0Math == true {
                                                Image("mathQ1")
                                                    .resizable(resizingMode: .stretch)
                                                    .aspectRatio(contentMode: .fit)
                                                    .transition(.move(edge: .trailing))
                                                    .zIndex(5)
                                            } else if imgQ1Math == true {
                                                Image("mathQ2")
                                                    .resizable(resizingMode: .stretch)
                                                    .aspectRatio(contentMode: .fit)
                                                    .transition(.move(edge: .trailing))
                                                    .zIndex(5)
                                            }
                                            Spacer()
                                            Button("\(answer1Math)") {
                                                if answer1Math == "15/8" || answer1Math == "6p + 14q - 7" || answer1Math == "144" || answer1Math == "i" || answer1Math == "360" {
                                                    correct1Math = true
                                                    correct1StringMath = "true"
                                                    correctMath = true
                                                    wrongMath = false
                                                    if qsAnsweredMath == 2 {
                                                        correctCountMath += 1
                                                        qsAnsweredMath += 1
                                                    }
                                                } else {
                                                    correct1Math = false
                                                    correct2Math = false
                                                    correct3Math = false
                                                    correct4Math = false
                                                    correct1StringMath = "false"
                                                    correctMath = false
                                                    wrongMath = true
                                                    if qsAnsweredMath == 2 {
                                                        qsAnsweredMath += 1
                                                    }
                                                }
                                                print("\(correctCountMath)/\(qsAnsweredMath)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
            //                                .frame(width: geo.size.width)
                                            .font(.custom("Futura-Medium", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .tint(Color(correct1Math ? "000000" : "FFFFFF"))
                                            .background(Color(correct1Math ? "A6FF91" : "007FFF"))
                                            .cornerRadius(30)
                                            .shadow(color: Color(correct1Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer2Math)") {
                                                if answer2Math == "15/8" || answer2Math == "6p + 14q - 7" || answer2Math == "144" || answer2Math == "i" || answer2Math == "360" {
                                                    correct2Math = true
                                                    correct2StringMath = "true"
                                                    correctMath = true
                                                    wrongMath = false
                                                    if qsAnsweredMath == 2 {
                                                        correctCountMath += 1
                                                        qsAnsweredMath += 1
                                                    }
                                                } else {
                                                    correct1Math = false
                                                    correct2Math = false
                                                    correct3Math = false
                                                    correct4Math = false
                                                    correct1StringMath = "false"
                                                    correctMath = false
                                                    wrongMath = true
                                                    if qsAnsweredMath == 2 {
                                                        qsAnsweredMath += 1
                                                    }
                                                }
                                                print("\(correctCountMath)/\(qsAnsweredMath)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
            //                                .frame(width: geo.size.width)
                                            .font(.custom("Futura-Medium", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .tint(Color(correct2Math ? "000000" : "FFFFFF"))
                                            .background(Color(correct2Math ? "A6FF91" : "007FFF"))
                                            .cornerRadius(30)
                                            .shadow(color: Color(correct2Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer3Math)") {
                                                if answer3Math == "15/8" || answer3Math == "6p + 14q - 7" || answer3Math == "144" || answer3Math == "i" || answer3Math == "360" {
                                                    correct3Math = true
                                                    correct3StringMath = "true"
                                                    correctMath = true
                                                    wrongMath = false
                                                    if qsAnsweredMath == 2 {
                                                        correctCountMath += 1
                                                        qsAnsweredMath += 1
                                                    }
                                                } else {
                                                    correct1Math = false
                                                    correct2Math = false
                                                    correct3Math = false
                                                    correct4Math = false
                                                    correct1StringMath = "false"
                                                    correctMath = false
                                                    wrongMath = true
                                                    if qsAnsweredMath == 2 {
                                                        qsAnsweredMath += 1
                                                    }
                                                }
                                                print("\(correctCountMath)/\(qsAnsweredMath)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
            //                                .frame(width: geo.size.width)
                                            .font(.custom("Futura-Medium", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .tint(Color(correct3Math ? "000000" : "FFFFFF"))
                                            .background(Color(correct3Math ? "A6FF91" : "007FFF"))
                                            .cornerRadius(30)
                                            .shadow(color: Color(correct3Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer4Math)") {
                                                if answer4Math == "15/8" || answer4Math == "6p + 14q - 7" || answer4Math == "144" || answer4Math == "i" || answer4Math == "360" {
                                                correct4Math = true
                                                correct4StringMath = "true"
                                                correctMath = true
                                                wrongMath = false
                                                    if qsAnsweredMath == 2 {
                                                        correctCountMath += 1
                                                        qsAnsweredMath += 1
                                                    }
                                                } else {
                                                    correct1Math = false
                                                    correct2Math = false
                                                    correct3Math = false
                                                    correct4Math = false
                                                    correct1StringMath = "false"
                                                    correctMath = false
                                                    wrongMath = true
                                                    if qsAnsweredMath == 2 {
                                                        qsAnsweredMath += 1
                                                    }
                                                }
                                                print("\(correctCountMath)/\(qsAnsweredMath)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
            //                                .frame(width: geo.size.width)
                                            .font(.custom("Futura-Medium", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .tint(Color(correct4Math ? "000000" : "FFFFFF"))
                                            .background(Color(correct4Math ? "A6FF91" : "007FFF"))
                                            .cornerRadius(30)
                                            .shadow(color: Color(correct4Math ? "A2A4A4" : "FFFFFF"), radius: 10, x: 0, y: 5)
                                            if correctMath == true {
                                                Spacer()
                                                Text("\(correctFeedback[Int.random(in: 0..<correctFeedback.count)])")
                                                    .font(.custom("Futura-Bold", fixedSize: correctMath ? 22.5 : 0))
                                                    .multilineTextAlignment(.center)
                                                    .opacity(correctMath ? 1 : 0)
                                                    .foregroundColor(Color("149600"))
                                                HStack {
                                                    Spacer()
                                                    NavigationLink(destination: Tips()) {
                                                        Text("\(correctCountMath)/\(qsAnsweredMath) Correct")
                                                            .font(.custom("Futura-Bold", fixedSize: 20))
                                                            .foregroundColor(Color("000000"))
                                                        Spacer()
                                                        Text("Home")
                                                            .font(.custom("Futura-Bold", fixedSize: 20))
                                                            .foregroundColor(Color("007FFF"))
                                                        Text("➔")
                                                            .font(.custom("Futura-Medium", fixedSize: 30))
                                                            .foregroundColor(Color("007FFF"))
                                                    }
                                                }
                                        } else if wrongMath == true {
                                            Spacer()
                                            Text("\(wrongFeedback[Int.random(in: 0..<wrongFeedback.count)])")
                                                .font(.custom("Futura-Bold", fixedSize: wrongMath ? 22.5 : 0))
                                                .multilineTextAlignment(.center)
                                                .opacity(wrongMath ? 1 : 0)
                                                .foregroundColor(Color("FF0057"))
                                        }
                                            //                        NavigationLink(destination: Home()) {
                                            //
                                            //                            Text("Go to Home")
                                            //                        }
            //                                Spacer()
                                        }
            //                        }
            //                    }
                                .padding()
                                .background(.white)
                                .cornerRadius(30)
                                .frame(maxWidth: UIScreen.main.bounds.width * 7/8)
                                
                                Spacer()
                            }
                            .frame(width: 400)
                            .task {
                                
                                correct1Math = false
                                correct2Math = false
                                correct3Math = false
                                correct4Math = false
                                correctMath = false
                                wrongMath = false
                                imgQ0Math = false
                                imgQ1Math = false
                                correct1StringMath = ""
                                correct2StringMath = ""
                                correct3StringMath = ""
                                correct4StringMath = ""
                                qNumMath = 0
                                aNumMath = 0
                                answer1Math = ""
                                answer2Math = ""
                                answer3Math = ""
                                answer4Math = ""
    //                            question1Math = ""
    //                            question2Math = ""
                                question3Math = ""
    //                            question4Math = ""
    //                            question5Math = ""
                                imgNameMath = ""
                                qNumMath = Int.random(in: 0..<questionsMath.count)
                                aNumMath = Int.random(in: 0...3)
                                while questionsMath[qNumMath] == "" {
                                    qNumMath = Int.random(in: 0..<questionsMath.count)
                                }
                                question3Math = questionsMath[qNumMath]
                                questionsTempMath.append(question3Math)
                                questionsMath[qNumMath] = ""
                                if qNumMath == 0 {
                                    imgNameMath = "mathQ1"
                                    imgQ0Math = true
                                    answer1Math = answersQ0Math[aNumMath]
                                    answersQ0TempMath.append(answer1Math)
                                    answersQ0Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ0Math.count)
                                    answer2Math = answersQ0Math[aNumMath]
                                    answersQ0TempMath.append(answer2Math)
                                    answersQ0Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ0Math.count)
                                    answer3Math = answersQ0Math[aNumMath]
                                    answersQ0TempMath.append(answer3Math)
                                    answersQ0Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ0Math.count)
                                    answer4Math = answersQ0Math[aNumMath]
                                    answersQ0TempMath.append(answer4Math)
                                    answersQ0Math.remove(at: aNumMath)
                                } else if qNumMath == 1 {
                                    imgNameMath = "mathQ2"
                                    imgQ1Math = true
                                    answer1Math = answersQ1Math[aNumMath]
                                    answersQ1TempMath.append(answer1Math)
                                    answersQ1Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ1Math.count)
                                    answer2Math = answersQ1Math[aNumMath]
                                    answersQ1TempMath.append(answer2Math)
                                    answersQ1Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ1Math.count)
                                    answer3Math = answersQ1Math[aNumMath]
                                    answersQ1TempMath.append(answer3Math)
                                    answersQ1Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ1Math.count)
                                    answer4Math = answersQ1Math[aNumMath]
                                    answersQ1TempMath.append(answer4Math)
                                    answersQ1Math.remove(at: aNumMath)
                                } else if qNumMath == 2 {
                                    answer1Math = answersQ2Math[aNumMath]
                                    answersQ2TempMath.append(answer1Math)
                                    answersQ2Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ2Math.count)
                                    answer2Math = answersQ2Math[aNumMath]
                                    answersQ2TempMath.append(answer2Math)
                                    answersQ2Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ2Math.count)
                                    answer3Math = answersQ2Math[aNumMath]
                                    answersQ2TempMath.append(answer3Math)
                                    answersQ2Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ2Math.count)
                                    answer4Math = answersQ2Math[aNumMath]
                                    answersQ2TempMath.append(answer4Math)
                                    answersQ2Math.remove(at: aNumMath)
                                } else if qNumMath == 3 {
                                    
                                    answer1Math = answersQ3Math[aNumMath]
                                    answersQ3TempMath.append(answer1Math)
                                    answersQ3Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ3Math.count)
                                    answer2Math = answersQ3Math[aNumMath]
                                    answersQ3TempMath.append(answer2Math)
                                    answersQ3Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ3Math.count)
                                    answer3Math = answersQ3Math[aNumMath]
                                    answersQ3TempMath.append(answer3Math)
                                    answersQ3Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ3Math.count)
                                    answer4Math = answersQ3Math[aNumMath]
                                    answersQ3TempMath.append(answer4Math)
                                    answersQ3Math.remove(at: aNumMath)
                                } else if qNumMath == 4 {
                                    answer1Math = answersQ4Math[aNumMath]
                                    answersQ4TempMath.append(answer1Math)
                                    answersQ4Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ4Math.count)
                                    answer2Math = answersQ4Math[aNumMath]
                                    answersQ4TempMath.append(answer2Math)
                                    answersQ4Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ4Math.count)
                                    answer3Math = answersQ4Math[aNumMath]
                                    answersQ4TempMath.append(answer3Math)
                                    answersQ4Math.remove(at: aNumMath)
                                    aNumMath = Int.random(in: 0..<answersQ4Math.count)
                                    answer4Math = answersQ4Math[aNumMath]
                                    answersQ4TempMath.append(answer4Math)
                                    answersQ4Math.remove(at: aNumMath)
                                }
                                
                            }
                            .transition(.move(edge: .trailing))
                            .zIndex(4)
                        }
                    }
                    
                    
                }
                .navigationBarBackButtonHidden(true)
            }
        }
}

struct Math_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
