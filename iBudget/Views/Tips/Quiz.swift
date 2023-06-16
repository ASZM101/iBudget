//
//  Quiz.swift
//  Trivia
//
//  Created by Adriana Zambrano on 6/14/23.
//

import SwiftUI

struct Quiz: View {
    @State var next2 = false
    @State var next3 = false
    @State var next4 = false
    @State var next5 = false
    @State var next6 = false
    @State var next7 = false
    @State var next8 = false
    @State var next9 = false
    @State var next10 = false
    @State var wrongFeedback = ["Try Again!", "You Can Do It!", "Not Quite!"]
    @State var correctFeedback = ["That's Correct!", "You Aced It!", "Nice Job!"]
    @State var questionsTemp = [String]()
    @State var answersQ0Temp = [String]()
    @State var answersQ1Temp = [String]()
    @State var answersQ2Temp = [String]()
    @State var answersQ3Temp = [String]()
    @State var answersQ4Temp = [String]()
    @State var answersQ5Temp = [String]()
    @State var answersQ6Temp = [String]()
    @State var answersQ7Temp = [String]()
    @State var answersQ8Temp = [String]()
    @State var answersQ9Temp = [String]()
    @State var answersQ10Temp = [String]()
    @State var answersQ11Temp = [String]()
    @State var answersQ12Temp = [String]()
    @State var answersQ13Temp = [String]()
    @State var answersQ14Temp = [String]()
    @State var answersQ15Temp = [String]()
    @State var answersQ16Temp = [String]()
    @State var answersQ17Temp = [String]()
    @State var answersQ18Temp = [String]()
    @State var answersQ19Temp = [String]()
    @State var answersQ20Temp = [String]()
    @State var answersQ21Temp = [String]()
    @State var answersQ22Temp = [String]()
    @State var answersQ23Temp = [String]()
    @State var answersQ24Temp = [String]()
    @State var answersQ25Temp = [String]()
    @State var answersQ26Temp = [String]()
    @State var answersQ27Temp = [String]()
    @State var answersQ28Temp = [String]()
    @State var answersQ29Temp = [String]()
    @State var answersQ30Temp = [String]()
    @State var answersQ31Temp = [String]()
    @State var answersQ32Temp = [String]()
    @State var answersQ33Temp = [String]()
    @State var answersQ34Temp = [String]()
    @State var answersQ35Temp = [String]()
    @State var answersQ36Temp = [String]()
    @State var answersQ37Temp = [String]()
    @State var answersQ38Temp = [String]()
    @State var answersQ39Temp = [String]()
    @State var answersQ40Temp = [String]()
    @State var answersQ41Temp = [String]()
    @State var answersQ42Temp = [String]()
    @State var answersQ43Temp = [String]()
    @State var answersQ44Temp = [String]()
    @State var answersQ45Temp = [String]()
    @State var answersQ46Temp = [String]()
    @State var answersQ47Temp = [String]()
    @State var answersQ48Temp = [String]()
    @State var answersQ49Temp = [String]()
    @State var correctCount = 0
    @State var qsAnswered = 0
    @State var index1 = 0
    @State var index2 = 0
    @State var index3 = 0
    @State var index4 = 0
    @State var questions = [
            "What is the purpose of financial literacy?",
            "What are key areas of personal finance to master for financial literacy?",
            "How can you enhance your financial literacy?",
            "What should you consider when making impulsive purchases?",
            "How can you optimize tax benefits?",
            "What should you research before making investment decisions?",
            "What should you evaluate before borrowing money?",
            "Why is it important to develop a habit of saving regularly?",
            "How does enhancing financial literacy contribute to achieving long-term goals?",
            "What is the benefit of practicing prudent financial management?",
            "What is one advantage of using bank accounts instead of holding cash?",
            "Which type of bank operates exclusively through digital platforms?",
            "Which type of bank typically provides access to a network of ATMs?",
            "What is the main purpose of a savings account?",
            "Which type of account allows for frequent deposits and withdrawals?",
            "What is a characteristic of high-yield savings accounts?",
            "Why is it advisable to keep an emergency fund in a separate savings account?",
            "How much should you aim to save for an emergency fund?",
            "Which type of bank account is suitable for saving cash for short-term needs?",
            "What is the main benefit of utilizing bank accounts wisely?",
            "What is the key difference between credit and debit cards?",
            "How does responsible use of credit cards impact your financial well-being?",
            "What is a charge card?",
            "What is the primary advantage of using a debit card?",
            "What does APR stand for in credit cards?",
            "How does APR vary based on credit history?",
            "What role do credit scores play when applying for credit cards?",
            "Which type of credit card is suitable for individuals with a less-than-perfect credit history?",
            "What do travel rewards cards offer?",
            "Which type of credit card is beneficial for managing unpaid balances?",
            "What is the primary purpose of budgeting?",
            "Which guideline suggests dividing income into needs, savings, and wants?",
            "What is the purpose of tracking expenses in budgeting?",
            "How should income sources be recorded in budgeting?",
            "What are fixed expenses in budgeting?",
            "Why is prioritizing savings important in budgeting?",
            "How is the financial balance calculated in budgeting?",
            "What does the financial balance indicate in budgeting?",
            "Which component of budgeting helps identify unnecessary expenses?",
            "What is the key benefit of budgeting, as mentioned in the conclusion?",
            "What is the primary purpose of investing?",
            "What is the stock market?",
            "What is the role of a full-service broker?",
            "What is the purpose of diversifying your investment portfolio?",
            "What do stocks represent?",
            "What distinguishes ETFs from individual stocks?",
            "How do mutual funds differ from stocks and ETFs?",
            "What is the primary function of bonds?",
            "What is the main factor that determines the safety and stability of bonds?",
            "What is a crucial consideration before making investment decisions?"
        ]
    @State var answersQ0 = [
        "Making informed financial decisions",
        "Accumulating unnecessary debt",
        "Ignoring personal finance",
        "Avoiding tax benefits"
    ]

    @State var answersQ1 = [
        "Budgeting, saving, debt management, credit, and investing",
        "Cooking and gardening",
        "Fitness and nutrition",
        "Art and music appreciation"
    ]

    @State var answersQ2 = [
        "By automating savings and understanding fundamentals",
        "By avoiding savings accounts",
        "By accumulating unnecessary debt",
        "By ignoring tax benefits"
    ]

    @State var answersQ3 = [
        "Wants and needs",
        "Saving regularly",
        "Compound interest",
        "Long-term investments"
    ]

    @State var answersQ4 = [
        "Taking advantage of tax deductions and credits",
        "Minimizing debt",
        "Borrowing money wisely",
        "Making informed investment decisions"
    ]

    @State var answersQ5 = [
        "Different assets and their risk tolerance",
        "Wants and needs",
        "Budgeting techniques",
        "Saving accounts"
    ]

    @State var answersQ6 = [
        "Potential returns",
        "Saving regularly",
        "Compound interest",
        "Long-term investments"
    ]

    @State var answersQ7 = [
        "To automate savings and understand the fundamentals",
        "To accumulate unnecessary debt",
        "To minimize tax benefits",
        "To ignore personal finance"
    ]

    @State var answersQ8 = [
        "By mitigating hazards and making informed decisions",
        "By avoiding informed financial decisions",
        "By accumulating unnecessary debt",
        "By ignoring tax benefits"
    ]

    @State var answersQ9 = [
        "Minimizing debt and ensuring financial stability",
        "Accumulating unnecessary debt",
        "Ignoring personal finance",
        "Avoiding tax benefits"
    ]

    @State var answersQ10 = [
        "Protection against theft",
        "Higher interest rates",
        "Limited access to funds",
        "Inability to make purchases"
    ]

    @State var answersQ11 = [
        "Online Banks",
        "Brick-and-Mortar Banks",
        "Credit Unions",
        "Retail Banks"
    ]

    @State var answersQ12 = [
        "Retail Banks",
        "Credit Unions",
        "Online Banks",
        "High-Yield Savings Accounts"
    ]

    @State var answersQ13 = [
        "Saving for short-term goals",
        "Making numerous withdrawals per month",
        "Earning high-interest rates",
        "Depositing funds through ATMs"
    ]

    @State var answersQ14 = [
        "Checking Account",
        "Savings Account",
        "High-Yield Savings Account",
        "Retail Bank Account"
    ]

    @State var answersQ15 = [
        "Requirement for larger initial deposits and minimum balances",
        "Lower interest rates than regular savings accounts",
        "Lower fees compared to regular savings accounts",
        "Limited access to funds"
    ]

    @State var answersQ16 = [
        "To ensure financial stability during challenging times",
        "To earn higher interest rates",
        "To avoid overdraft fees",
        "To limit the frequency of withdrawals"
    ]

    @State var answersQ17 = [
        "Three to six months of living expenses",
        "One month of living expenses",
        "One year of living expenses",
        "No savings are necessary for emergencies"
    ]

    @State var answersQ18 = [
        "Savings Account",
        "Checking Account",
        "High-Yield Savings Account",
        "Retail Bank Account"
    ]

    @State var answersQ19 = [
        "Enhancing financial well-being",
        "Avoiding customer support",
        "Limiting accessibility to funds",
        "Eliminating the need for online banking"
    ]

    @State var answersQ20 = [
        "Credit cards contribute to building your credit history.",
        "Credit cards directly withdraw cash from your bank account.",
        "Debit cards allow you to borrow money from the card issuer.",
        "Debit cards charge interest on unpaid balances."
    ]

    @State var answersQ21 = [
        "It establishes a positive credit history.",
        "It accumulates debt quickly.",
        "It limits your chances of qualifying for loans.",
        "It reduces your credit rating."
    ]

    @State var answersQ22 = [
        "A credit card that requires full balance repayment each month.",
        "A credit card with flexible payment options.",
        "A type of debit card.",
        "A card that cannot be used for online transactions."
    ]

    @State var answersQ23 = [
        "It provides convenient access to funds from your bank account.",
        "It offers travel rewards and perks.",
        "It helps build a positive credit history.",
        "It offers a lower Annual Percentage Rate (APR)."
    ]

    @State var answersQ24 = [
        "Annual Percentage Rate",
        "Average Payment Requirement",
        "Applied Percentage Rate",
        "Annual Profit Ratio"
    ]

    @State var answersQ25 = [
        "It increases with poor credit history.",
        "It decreases with poor credit history.",
        "It remains the same for all credit cards.",
        "It is not affected by credit history."
    ]

    @State var answersQ26 = [
        "They determine the perks and benefits associated with the card.",
        "They determine the color of the card.",
        "They impact the APR of the card.",
        "They do not influence credit card applications."
    ]

    @State var answersQ27 = [
        "Secured credit cards/subprime credit cards",
        "Travel rewards cards",
        "Cash-back cards",
        "Balance transfer cards"
    ]

    @State var answersQ28 = [
        "Points or rewards for travel-related expenses",
        "Cash rewards for every transaction",
        "Discounts on everyday expenses",
        "Lower interest rates for balance transfers"
    ]

    @State var answersQ29 = [
        "Low/No-APR cards",
        "Cash-back cards",
        "Secured credit cards/subprime credit cards",
        "Travel rewards cards"
    ]

    @State var answersQ30 = [
        "Gaining financial stability",
        "Maximizing discretionary spending",
        "Tracking income sources",
        "Prioritizing savings"
    ]

    @State var answersQ31 = [
        "50-20-30 rule",
        "80-10-10 rule",
        "40-30-30 rule",
        "70-20-10 rule"
    ]

    @State var answersQ32 = [
        "Identifying unnecessary expenses",
        "Maximizing discretionary spending",
        "Prioritizing savings",
        "Increasing fixed expenses"
    ]

    @State var answersQ33 = [
        "Record all sources of income",
        "Only record regular paychecks",
        "Only record income from investments",
        "Ignore income from side jobs or projects"
    ]

    @State var answersQ34 = [
        "Mandatory purchases that remain relatively constant",
        "Extra purchases that fall into the realm of wants",
        "Variable expenses that change every month",
        "Expenses that are paid only once a year"
    ]

    @State var answersQ35 = [
        "It builds a safety net and works toward financial goals.",
        "It maximizes discretionary spending.",
        "It helps track income sources accurately.",
        "It ensures a surplus in the financial balance."
    ]

    @State var answersQ36 = [
        "Subtracting total income from total expenses",
        "Subtracting total expenses from total savings",
        "Subtracting total savings from total income",
        "Adding total income and total expenses"
    ]

    @State var answersQ37 = [
        "The financial surplus or shortfall",
        "The amount of discretionary spending available",
        "The amount of income earned",
        "The total amount saved"
    ]

    @State var answersQ38 = [
        "Tracking expenses",
        "Tracking income sources",
        "Calculating financial balance",
        "Prioritizing savings"
    ]

    @State var answersQ39 = [
        "Achieving financial stability",
        "Maximizing discretionary spending",
        "Eliminating all wants",
        "Increasing fixed expenses"
    ]

    @State var answersQ40 = [
        "Earning extra income",
        "Protecting savings",
        "Eliminating financial risk",
        "Minimizing tax liabilities"
    ]

    @State var answersQ41 = [
        "A collection of markets and exchanges where stocks and financial securities are traded",
        "A government agency that regulates investment activities",
        "A type of investment that guarantees fixed returns",
        "A financial institution that provides loans for investing"
    ]

    @State var answersQ42 = [
        "Facilitating investment transactions and providing advice",
        "Charging fees based on the amount of money invested",
        "Using algorithms to make investment decisions",
        "Managing diversified portfolios of securities"
    ]

    @State var answersQ43 = [
        "Minimizing risk by spreading investments across different assets",
        "Maximizing returns on investment",
        "Eliminating the need for a broker",
        "Investing solely in stocks for high-potential gains"
    ]

    @State var answersQ44 = [
        "Ownership in a company",
        "Debt instruments issued by governments",
        "Collections of securities, such as stocks and bonds",
        "Pooled money from multiple investors"
    ]

    @State var answersQ45 = [
        "They offer instant diversification and are professionally managed.",
        "They are less risky than individual stocks.",
        "They have fixed interest rates for investors.",
        "They can only be traded at the end of each trading day."
    ]

    @State var answersQ46 = [
        "They pool money from multiple investors.",
        "They can be traded throughout the trading day.",
        "They have fixed interest rates for investors.",
        "They carry a higher risk than individual stocks."
    ]

    @State var answersQ47 = [
        "Lending money to a bond issuer in exchange for repayment with interest",
        "Owning a portion of a company's assets and earnings",
        "Pooling money from multiple investors to create a portfolio of securities",
        "Guaranteeing fixed returns on investment"
    ]

    @State var answersQ48 = [
        "The presence of government backing",
        "The level of annual fees and commissions",
        "The ability to trade throughout the trading day",
        "The availability of professional management"
    ]

    @State var answersQ49 = [
        "Seeking advice from financial professionals",
        "Understanding the stock market",
        "Investing solely in high-risk assets",
        "Maximizing annual fees and expense ratios"
    ]

    
    
    @State var answersQ0Copy = ["Making informed financial decisions", "Accumulating unnecessary debt", "Ignoring personal finance", "Avoiding tax benefits"]
    @State var answersQ1Copy = ["Budgeting, saving, debt management, credit, and investing", "Cooking and gardening", "Fitness and nutrition", "Art and music appreciation"]
    @State var answersQ2Copy = ["By automating savings and understanding fundamentals", "By avoiding savings accounts", "By accumulating unnecessary debt", "By ignoring tax benefits"]
    @State var answersQ3Copy = ["Wants and needs", "Saving regularly", "Compound interest", "Long-term investments"]
    @State var answersQ4Copy = ["Taking advantage of tax deductions and credits", "Minimizing debt", "Borrowing money wisely", "Making informed investment decisions"]
    @State var answersQ5Copy = ["Different assets and their risk tolerance", "Wants and needs", "Budgeting techniques", "Saving accounts"]
    @State var answersQ6Copy = ["Potential returns", "Saving regularly", "Compound interest", "Long-term investments"]
    @State var answersQ7Copy = ["To automate savings and understand the fundamentals", "To accumulate unnecessary debt", "To minimize tax benefits", "To ignore personal finance"]
    @State var answersQ8Copy = ["By mitigating hazards and making informed decisions", "By avoiding informed financial decisions", "By accumulating unnecessary debt", "By ignoring tax benefits"]
    @State var answersQ9Copy = ["Minimizing debt and ensuring financial stability", "Accumulating unnecessary debt", "Ignoring personal finance", "Avoiding tax benefits"]
    @State var answersQ10Copy = ["Protection against theft", "Higher interest rates", "Limited access to funds", "Inability to make purchases"]
    @State var answersQ11Copy = ["Online Banks", "Brick-and-Mortar Banks", "Credit Unions", "Retail Banks"]
    @State var answersQ12Copy = ["Retail Banks", "Credit Unions", "Online Banks", "High-Yield Savings Accounts"]
    @State var answersQ13Copy = ["Saving for short-term goals", "Making numerous withdrawals per month", "Earning high-interest rates", "Depositing funds through ATMs"]
    @State var answersQ14Copy = ["Checking Account", "Savings Account", "High-Yield Savings Account", "Retail Bank Account"]
    @State var answersQ15Copy = ["Requirement for larger initial deposits and minimum balances", "Lower interest rates than regular savings accounts", "Lower fees compared to regular savings accounts", "Limited access to funds"]
    @State var answersQ16Copy = ["To ensure financial stability during challenging times", "To earn higher interest rates", "To avoid overdraft fees", "To limit the frequency of withdrawals"]
    @State var answersQ17Copy = ["Three to six months of living expenses", "One month of living expenses", "One year of living expenses", "No savings are necessary for emergencies"]
    @State var answersQ18Copy = ["Savings Account", "Checking Account", "High-Yield Savings Account", "Retail Bank Account"]
    @State var answersQ19Copy = ["Enhancing financial well-being", "Avoiding customer support", "Limiting accessibility to funds", "Eliminating the need for online banking"]
    @State var answersQ20Copy = ["Credit cards contribute to building your credit history", "Credit cards directly withdraw cash from your bank account", "Debit cards allow you to borrow money from the card issuer", "Debit cards charge interest on unpaid balances"]
    @State var answersQ21Copy = ["It establishes a positive credit history", "It accumulates debt quickly", "It limits your chances of qualifying for loans", "It reduces your credit rating"]
    @State var answersQ22Copy = ["A credit card that requires full balance repayment each month", "A credit card with flexible payment options", "A type of debit card", "A card that cannot be used for online transactions"]
    @State var answersQ23Copy = ["It provides convenient access to funds from your bank account", "It offers travel rewards and perks", "It helps build a positive credit history", "It offers a lower Annual Percentage Rate (APR)"]
    @State var answersQ24Copy = ["Annual Percentage Rate", "Average Payment Requirement", "Applied Percentage Rate", "Annual Profit Ratio"]
    @State var answersQ25Copy = ["It increases with poor credit history", "It decreases with poor credit history", "It remains the same for all credit cards", "It is not affected by credit history"]
    @State var answersQ26Copy = ["They determine the perks and benefits associated with the card", "They determine the color of the card", "They impact the APR of the card", "They do not influence credit card applications"]
    @State var answersQ27Copy = ["Secured credit cards/subprime credit cards", "Travel rewards cards", "Cash-back cards", "Balance transfer cards"]
    @State var answersQ28Copy = ["Points or rewards for travel-related expenses", "Cash rewards for every transaction", "Discounts on everyday expenses", "Lower interest rates for balance transfers"]
    @State var answersQ29Copy = ["Low/No-APR cards", "Cash-back cards", "Secured credit cards/subprime credit cards", "Travel rewards cards"]
    @State var answersQ30Copy = ["Gaining financial stability", "Maximizing discretionary spending", "Tracking income sources", "Prioritizing savings"]
    @State var answersQ31Copy = ["50-20-30 rule", "80-10-10 rule", "40-30-30 rule", "70-20-10 rule"]
    @State var answersQ32Copy = ["Identifying unnecessary expenses", "Maximizing discretionary spending", "Prioritizing savings", "Increasing fixed expenses"]
    @State var answersQ33Copy = ["Record all sources of income", "Only record regular paychecks", "Only record income from investments", "Ignore income from side jobs or projects"]
    @State var answersQ34Copy = ["Mandatory purchases that remain relatively constant", "Extra purchases that fall into the realm of wants", "Variable expenses that change every month", "Expenses that are paid only once a year"]
    @State var answersQ35Copy = ["It builds a safety net and works toward financial goals", "It maximizes discretionary spending", "It helps track income sources accurately", "It ensures a surplus in the financial balance"]
    @State var answersQ36Copy = ["Subtracting total income from total expenses", "Subtracting total expenses from total savings", "Subtracting total savings from total income", "Adding total income and total expenses"]
    @State var answersQ37Copy = ["The financial surplus or shortfall", "The amount of discretionary spending available", "The amount of income earned", "The total amount saved"]
    @State var answersQ38Copy = ["Tracking expenses", "Tracking income sources", "Calculating financial balance", "Prioritizing savings"]
    @State var answersQ39Copy = ["Achieving financial stability", "Maximizing discretionary spending", "Eliminating all wants", "Increasing fixed expenses"]
    @State var answersQ40Copy = ["Earning extra income", "Protecting savings", "Eliminating financial risk", "Minimizing tax liabilities"]
    @State var answersQ41Copy = ["A collection of markets and exchanges where stocks and financial securities are traded", "A government agency that regulates investment activities", "A type of investment that guarantees fixed returns", "A financial institution that provides loans for investing"]
    @State var answersQ42Copy = ["Facilitating investment transactions and providing advice", "Charging fees based on the amount of money invested", "Using algorithms to make investment decisions", "Managing diversified portfolios of securities"]
    @State var answersQ43Copy = ["Minimizing risk by spreading investments across different assets", "Maximizing returns on investment", "Eliminating the need for a broker", "Investing solely in stocks for high-potential gains"]
    @State var answersQ44Copy = ["Ownership in a company", "Debt instruments issued by governments", "Collections of securities, such as stocks and bonds", "Pooled money from multiple investors"]
    @State var answersQ45Copy = ["They offer instant diversification and are professionally managed", "They are less risky than individual stocks", "They have fixed interest rates for investors", "They can only be traded at the end of each trading day"]
    @State var answersQ46Copy = ["They pool money from multiple investors", "They can be traded throughout the trading day", "They have fixed interest rates for investors", "They carry a higher risk than individual stocks"]
    @State var answersQ47Copy = ["Lending money to a bond issuer in exchange for repayment with interest", "Owning a portion of a company's assets and earnings", "Pooling money from multiple investors to create a portfolio of securities", "Guaranteeing fixed returns on investment"]
    @State var answersQ48Copy = ["The presence of government backing", "The level of annual fees and commissions", "The ability to trade throughout the trading day", "The availability of professional management"]
    @State var answersQ49Copy = ["Seeking advice from financial professionals", "Understanding the stock market", "Investing solely in high-risk assets", "Maximizing annual fees and expense ratios"]
    @State var qNum = 0
    @State var aNum = 0
    @State var answer1 = ""
    @State var answer2 = ""
    @State var answer3 = ""
    @State var answer4 = ""
    @State var question1 = ""
    @State var question2 = ""
    @State var question3 = ""
    @State var question4 = ""
    @State var question5 = ""
    @State var question6 = ""
    @State var question7 = ""
    @State var question8 = ""
    @State var question9 = ""
    @State var question10 = ""
    @State var correct1 = false
    @State var correct2 = false
    @State var correct3 = false
    @State var correct4 = false
    @State var correct = false
    @State var wrong = false
    @State var correct1String = ""
    @State var correct2String = ""
    @State var correct3String = ""
    @State var correct4String = ""
    var body: some View {
            NavigationStack {
                
                ZStack {
                    
                    Color("mediumYellow")
                        .ignoresSafeArea()
                    
                    if !next2 {
                        
                        HStack(alignment: .center, spacing: 20) {
                            
                            Spacer()
                            
                                    VStack(spacing: 10) {
                                        
                                        Spacer()
                                        VStack {
                                            Text("\(question1)")
                                                .font(.custom("GillSans-Semibold", fixedSize: 27))
                                                .multilineTextAlignment(.center)
                                        }
                                        .frame(maxWidth: .infinity)
                                        
                                        Spacer()
                                        Button("\(answer1)") {
                                            if index1 == 0 {
                                                correct1 = true
                                                correct1String = "true"
                                                correct = true
                                                wrong = false
                                                if qsAnswered == 0 {
                                                    correctCount += 1
                                                    qsAnswered += 1
                                                }
                                            } else {
                                                correct1 = false
                                                correct2 = false
                                                correct3 = false
                                                correct4 = false
                                                correct2String = "false"
                                                correct = false
                                                wrong = true
                                                if qsAnswered == 0 {
                                                    qsAnswered += 1
                                                }
                                            }
                                            print("\(correctCount)/\(qsAnswered)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
                                        .font(.custom("GillSans", fixedSize: 22.5))
                                        .padding(.all, 10.0)
                                        .foregroundColor(Color(correct1 ? "000000" : "FFFFFF"))
                                        .background(Color(correct1 ? "A6FF91" : "red"))
                                        .cornerRadius(30)
                                        .shadow(color: correct1 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        Button("\(answer2)") {
                                            if index2 == 0 {
                                                correct2 = true
                                                correct2String = "true"
                                                correct = true
                                                wrong = false
                                                if qsAnswered == 0 {
                                                    correctCount += 1
                                                    qsAnswered += 1
                                                }
                                            } else {
                                                correct1 = false
                                                correct2 = false
                                                correct3 = false
                                                correct4 = false
                                                correct2String = "false"
                                                correct = false
                                                wrong = true
                                                if qsAnswered == 0 {
                                                    qsAnswered += 1
                                                }
                                            }
                                            print("\(correctCount)/\(qsAnswered)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
                                        .font(.custom("GillSans", fixedSize: 22.5))
                                        
                                        .padding(.all, 10.0)
                                        .foregroundColor(Color(correct2 ? "000000" : "FFFFFF"))
                                        .background(Color(correct2 ? "A6FF91" : "darkYellow"))
                                        .cornerRadius(30)
                                        .shadow(color: correct2 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        Button("\(answer3)") {
                                            if index3 == 0 {
                                                correct3 = true
                                                correct3String = "true"
                                                correct = true
                                                wrong = false
                                                if qsAnswered == 0 {
                                                    correctCount += 1
                                                    qsAnswered += 1
                                                }
                                            } else {
                                                correct1 = false
                                                correct2 = false
                                                correct3 = false
                                                correct4 = false
                                                correct3String = "false"
                                                correct = false
                                                wrong = true
                                                if qsAnswered == 0 {
                                                    qsAnswered += 1
                                                }
                                            }
                                            print("\(correctCount)/\(qsAnswered)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
                                        .font(.custom("GillSans", fixedSize: 22.5))
                                        
                                        .padding(.all, 10.0)
                                        .foregroundColor(Color(correct3 ? "000000" : "FFFFFF"))
                                        .background(Color(correct3 ? "A6FF91" : "green"))
                                        .cornerRadius(30)
                                        .shadow(color: correct3 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        Button("\(answer4)") {
                                            if index4 == 0 {
                                            correct4 = true
                                            correct4String = "true"
                                            correct = true
                                            wrong = false
                                                if qsAnswered == 0 {
                                                    correctCount += 1
                                                    qsAnswered += 1
                                                }
                                            } else {
                                                correct1 = false
                                                correct2 = false
                                                correct3 = false
                                                correct4 = false
                                                correct4String = "false"
                                                correct = false
                                                wrong = true
                                                if qsAnswered == 0 {
                                                    qsAnswered += 1
                                                }
                                            }
                                            print("\(correctCount)/\(qsAnswered)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
                                        .font(.custom("GillSans", fixedSize: 22.5))
                                        
                                        .padding(.all, 10.0)
                                        .foregroundColor(Color(correct4 ? "000000" : "FFFFFF"))
                                        .background(Color(correct4 ? "A6FF91" : "blue"))
                                        .cornerRadius(30)
                                        .shadow(color: correct4 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        
                                        if correct == true {
                                            
                                            Spacer()
                                            Text("\(correctFeedback[Int.random(in: 0..<correctFeedback.count)])")
                                                .font(.custom("GillSans-Bold", fixedSize: correct ? 22.5 : 0))
                                                .multilineTextAlignment(.center)
                                                .opacity(correct ? 1 : 0)
                                                .foregroundColor(Color("green"))
                                            HStack {
                                                Spacer()
                                                    Text("Next")
                                                        .font(.custom("GillSans-Bold", fixedSize: 20))
                                                        .foregroundColor(Color("007FFF"))
                                                        .onTapGesture {
                                                            withAnimation(.spring()) {
                                                                next2.toggle()
                                                            }
                                                        }
                                                    Text("➔")
                                                        .font(.custom("GillSans", fixedSize: 30))
                                                        .foregroundColor(Color("007FFF"))
                                                        .onTapGesture {
                                                            withAnimation(.spring()) {
                                                                next2.toggle()
                                                            }
                                                        }
   
                                            }
                                    } else if wrong == true {
                                            
                                            Spacer()
                                        Text("\(wrongFeedback[Int.random(in: 0..<wrongFeedback.count)])")
                                                .font(.custom("GillSans-Bold", fixedSize: wrong ? 22.5 : 0))
                                                .multilineTextAlignment(.center)
                                                .opacity(wrong ? 1 : 0)
                                                .foregroundColor(Color("red"))
                                        }

                                    }
                            .padding()
                            .background(Color("lightYellow"))
                            .cornerRadius(30)
                            .shadow(color: Color("darkGray"), radius: 10, x: 0, y: 5)
                            .frame(width: UIScreen.main.bounds.width * 7/8, height: UIScreen.main.bounds.height * 17/24)

                            Spacer()
                        }
                        .frame(width: 400)
                        .task {
                            
                            print(questions.count)
                            print(answersQ0Copy.count)
//                            correct1 = false
//                            correct2 = false
//                            correct3 = false
//                            correct4 = false
//                            correct = false
//                            wrong = false
//                            correct1String = ""
//                            correct2String = ""
//                            correct3String = ""
//                            correct4String = ""
//                            qNum = 0
//                            aNum = 0
//                            answer1 = ""
//                            answer2 = ""
//                            answer3 = ""
//                            answer4 = ""
//                            question2 = ""
//                            qNum = Int.random(in: 0..<questions.count)
//                            aNum = Int.random(in: 0..<answersQ0Copy.count)
//                            while questions[qNum] == "" {
//                                qNum = Int.random(in: 0..<questions.count)
//                            }
//                            question2 = questions[qNum]
//                            questionsTemp.append(question2)
//                            questions[qNum] = ""
                            qNum = Int.random(in: 0..<questions.count)
                            aNum = Int.random(in: 0..<4)
                            question1 = questions[qNum]
                            print(qNum)
                            questionsTemp.append(question1)
                            questions[qNum] = ""
                            func generateElseIfStatements(questionNumber: Int, answers: inout [String], answersTemp: inout [String], answersCopy: inout [String]) {
                                answer1 = answers[aNum]
                                answersTemp.append(answer1)
                                answers.remove(at: aNum)
                                index1 = answersCopy.firstIndex(of: answer1)!
                                aNum = Int.random(in: 0..<answers.count)
                                answer2 = answers[aNum]
                                answersTemp.append(answer2)
                                answers.remove(at: aNum)
                                index2 = answersCopy.firstIndex(of: answer2)!
                                aNum = Int.random(in: 0..<answers.count)
                                answer3 = answers[aNum]
                                answersTemp.append(answer3)
                                answers.remove(at: aNum)
                                index3 = answersCopy.firstIndex(of: answer3)!
                                aNum = Int.random(in: 0..<answers.count)
                                answer4 = answers[aNum]
                                answersTemp.append(answer4)
                                answers.remove(at: aNum)
                                index4 = answersCopy.firstIndex(of: answer4)!
                            }
                            if qNum == 0 {
                                answer1 = answersQ0[aNum]
                                answersQ0Temp.append(answer1)
                                answersQ0.remove(at: aNum)
                                index1 = answersQ0Copy.firstIndex(of: answer1)!
                                aNum = Int.random(in: 0..<answersQ0.count)
                                answer2 = answersQ0[aNum]
                                answersQ0Temp.append(answer2)
                                answersQ0.remove(at: aNum)
                                index2 = answersQ0Copy.firstIndex(of: answer2)!
                                aNum = Int.random(in: 0..<answersQ0.count)
                                answer3 = answersQ0[aNum]
                                answersQ0Temp.append(answer3)
                                answersQ0.remove(at: aNum)
                                index3 = answersQ0Copy.firstIndex(of: answer3)!
                                aNum = Int.random(in: 0..<answersQ0.count)
                                answer4 = answersQ0[aNum]
                                answersQ0Temp.append(answer4)
                                answersQ0.remove(at: aNum)
                                index4 = answersQ0Copy.firstIndex(of: answer4)!
                            } else if qNum == 1 {
                                
                                generateElseIfStatements(questionNumber: 1, answers: &answersQ1, answersTemp: &answersQ1Temp, answersCopy: &answersQ1Copy)
                            } else if qNum == 2 {
                                
                                generateElseIfStatements(questionNumber: 2, answers: &answersQ2, answersTemp: &answersQ2Temp, answersCopy: &answersQ2Copy)
                            } else if qNum == 3 {
                                
                                generateElseIfStatements(questionNumber: 3, answers: &answersQ3, answersTemp: &answersQ3Temp, answersCopy: &answersQ47Copy)
                            } else if qNum == 4 {
                                
                                generateElseIfStatements(questionNumber: 4, answers: &answersQ4, answersTemp: &answersQ4Temp, answersCopy: &answersQ4Copy)
                            } else if qNum == 5 {
                                
                                generateElseIfStatements(questionNumber: 5, answers: &answersQ5, answersTemp: &answersQ5Temp, answersCopy: &answersQ5Copy)
                            } else if qNum == 6 {
                                
                                generateElseIfStatements(questionNumber: 6, answers: &answersQ6, answersTemp: &answersQ6Temp, answersCopy: &answersQ6Copy)
                            } else if qNum == 7 {
                                
                                generateElseIfStatements(questionNumber: 7, answers: &answersQ7, answersTemp: &answersQ7Temp, answersCopy: &answersQ7Copy)
                            } else if qNum == 8 {
                                
                                generateElseIfStatements(questionNumber: 8, answers: &answersQ8, answersTemp: &answersQ8Temp, answersCopy: &answersQ8Copy)
                            } else if qNum == 9 {
                                
                                generateElseIfStatements(questionNumber: 9, answers: &answersQ9, answersTemp: &answersQ9Temp, answersCopy: &answersQ9Copy)
                            } else if qNum == 10 {
                                
                                generateElseIfStatements(questionNumber: 10, answers: &answersQ10, answersTemp: &answersQ10Temp, answersCopy: &answersQ10Copy)
                            } else if qNum == 11 {
                                
                                generateElseIfStatements(questionNumber: 11, answers: &answersQ11, answersTemp: &answersQ11Temp, answersCopy: &answersQ11Copy)
                            } else if qNum == 12 {
                                
                                generateElseIfStatements(questionNumber: 12, answers: &answersQ12, answersTemp: &answersQ12Temp, answersCopy: &answersQ12Copy)
                            } else if qNum == 13 {
                                
                                generateElseIfStatements(questionNumber: 13, answers: &answersQ13, answersTemp: &answersQ13Temp, answersCopy: &answersQ13Copy)
                            } else if qNum == 14 {
                                
                                generateElseIfStatements(questionNumber: 14, answers: &answersQ14, answersTemp: &answersQ14Temp, answersCopy: &answersQ14Copy)
                            } else if qNum == 15 {
                                
                                generateElseIfStatements(questionNumber: 15, answers: &answersQ15, answersTemp: &answersQ15Temp, answersCopy: &answersQ15Copy)
                            } else if qNum == 16 {
                                
                                generateElseIfStatements(questionNumber: 16, answers: &answersQ16, answersTemp: &answersQ16Temp, answersCopy: &answersQ16Copy)
                            } else if qNum == 17 {
                                
                                generateElseIfStatements(questionNumber: 17, answers: &answersQ17, answersTemp: &answersQ17Temp, answersCopy: &answersQ17Copy)
                            } else if qNum == 18 {
                                
                                generateElseIfStatements(questionNumber: 18, answers: &answersQ18, answersTemp: &answersQ18Temp, answersCopy: &answersQ18Copy)
                            } else if qNum == 19 {
                                
                                generateElseIfStatements(questionNumber: 19, answers: &answersQ19, answersTemp: &answersQ19Temp, answersCopy: &answersQ19Copy)
                            } else if qNum == 20 {
                                
                                generateElseIfStatements(questionNumber: 20, answers: &answersQ20, answersTemp: &answersQ20Temp, answersCopy: &answersQ20Copy)
                            } else if qNum == 21 {
                                
                                generateElseIfStatements(questionNumber: 21, answers: &answersQ21, answersTemp: &answersQ21Temp, answersCopy: &answersQ21Copy)
                            } else if qNum == 22 {
                                
                                generateElseIfStatements(questionNumber: 22, answers: &answersQ22, answersTemp: &answersQ22Temp, answersCopy: &answersQ22Copy)
                            } else if qNum == 23 {
                                
                                generateElseIfStatements(questionNumber: 23, answers: &answersQ23, answersTemp: &answersQ23Temp, answersCopy: &answersQ23Copy)
                            } else if qNum == 24 {
                                
                                generateElseIfStatements(questionNumber: 24, answers: &answersQ24, answersTemp: &answersQ24Temp, answersCopy: &answersQ24Copy)
                            } else if qNum == 25 {
                                
                                generateElseIfStatements(questionNumber: 25, answers: &answersQ25, answersTemp: &answersQ25Temp, answersCopy: &answersQ25Copy)
                            } else if qNum == 26 {
                                
                                generateElseIfStatements(questionNumber: 26, answers: &answersQ26, answersTemp: &answersQ26Temp, answersCopy: &answersQ26Copy)
                            }
                            else if qNum == 27 {
                                
                                generateElseIfStatements(questionNumber: 27, answers: &answersQ27, answersTemp: &answersQ27Temp, answersCopy: &answersQ27Copy)
                            } else if qNum == 28 {
                                
                                generateElseIfStatements(questionNumber: 28, answers: &answersQ28, answersTemp: &answersQ28Temp, answersCopy: &answersQ28Copy)
                            } else if qNum == 29 {
                                
                                generateElseIfStatements(questionNumber: 29, answers: &answersQ29, answersTemp: &answersQ29Temp, answersCopy: &answersQ29Copy)
                            } else if qNum == 30 {
                                
                                generateElseIfStatements(questionNumber: 30, answers: &answersQ30, answersTemp: &answersQ30Temp, answersCopy: &answersQ30Copy)
                            } else if qNum == 31 {
                                generateElseIfStatements(questionNumber: 31, answers: &answersQ31, answersTemp: &answersQ31Temp, answersCopy: &answersQ31Copy)
                            } else if qNum == 32 {
                                generateElseIfStatements(questionNumber: 32, answers: &answersQ32, answersTemp: &answersQ32Temp, answersCopy: &answersQ32Copy)
                            } else if qNum == 33 {
                                generateElseIfStatements(questionNumber: 33, answers: &answersQ33, answersTemp: &answersQ33Temp, answersCopy: &answersQ33Copy)
                            } else if qNum == 34 {
                                generateElseIfStatements(questionNumber: 34, answers: &answersQ34, answersTemp: &answersQ34Temp, answersCopy: &answersQ34Copy)
                            } else if qNum == 35 {
                                generateElseIfStatements(questionNumber: 35, answers: &answersQ35, answersTemp: &answersQ35Temp, answersCopy: &answersQ35Copy)
                            } else if qNum == 36 {
                                generateElseIfStatements(questionNumber: 36, answers: &answersQ36, answersTemp: &answersQ36Temp, answersCopy: &answersQ36Copy)
                            } else if qNum == 37 {
                                generateElseIfStatements(questionNumber: 37, answers: &answersQ37, answersTemp: &answersQ37Temp, answersCopy: &answersQ37Copy)
                            } else if qNum == 38 {
                                generateElseIfStatements(questionNumber: 38, answers: &answersQ38, answersTemp: &answersQ38Temp, answersCopy: &answersQ38Copy)
                            } else if qNum == 39 {
                                generateElseIfStatements(questionNumber: 39, answers: &answersQ39, answersTemp: &answersQ39Temp, answersCopy: &answersQ39Copy)
                            } else if qNum == 40 {
                                generateElseIfStatements(questionNumber: 40, answers: &answersQ40, answersTemp: &answersQ40Temp, answersCopy: &answersQ40Copy)
                            } else if qNum == 41 {
                                generateElseIfStatements(questionNumber: 41, answers: &answersQ41, answersTemp: &answersQ41Temp, answersCopy: &answersQ41Copy)
                            } else if qNum == 42 {
                                generateElseIfStatements(questionNumber: 42, answers: &answersQ42, answersTemp: &answersQ42Temp, answersCopy: &answersQ42Copy)
                            } else if qNum == 43 {
                                generateElseIfStatements(questionNumber: 43, answers: &answersQ43, answersTemp: &answersQ43Temp, answersCopy: &answersQ43Copy)
                            } else if qNum == 44 {
                                generateElseIfStatements(questionNumber: 44, answers: &answersQ44, answersTemp: &answersQ44Temp, answersCopy: &answersQ44Copy)
                            } else if qNum == 45 {
                                generateElseIfStatements(questionNumber: 45, answers: &answersQ45, answersTemp: &answersQ45Temp, answersCopy: &answersQ45Copy)
                            } else if qNum == 46 {
                                generateElseIfStatements(questionNumber: 46, answers: &answersQ46, answersTemp: &answersQ46Temp, answersCopy: &answersQ46Copy)
                            } else if qNum == 47 {
                                
                                generateElseIfStatements(questionNumber: 47, answers: &answersQ47, answersTemp: &answersQ47Temp, answersCopy: &answersQ47Copy)
                            } else if qNum == 48 {
                                generateElseIfStatements(questionNumber: 48, answers: &answersQ48, answersTemp: &answersQ48Temp, answersCopy: &answersQ48Copy)
                            }else if qNum == 49 {
                                generateElseIfStatements(questionNumber: 49, answers: &answersQ49, answersTemp: &answersQ49Temp, answersCopy: &answersQ49Copy)
                            }
                            
                        }
                    } else {
                        
                        if !next3 {
                            
                            HStack(alignment: .center, spacing: 20) {
                                
                                Spacer()
                                
                                        VStack(spacing: 10) {
                                            
                                            Spacer()
                                            VStack {
                                                Text("\(question2)")
                                                    .font(.custom("GillSans-Semibold", fixedSize: 27))
                                                    .multilineTextAlignment(.center)
                                            }
                                            .frame(maxWidth: .infinity)
                                            
                                            Spacer()
                                            Button("\(answer1)") {
                                                if index1 == 0 {
                                                    correct1 = true
                                                    correct1String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 1 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct2String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 1 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct1 ? "000000" : "FFFFFF"))
                                            .background(Color(correct1 ? "A6FF91" : "red"))
                                            .cornerRadius(30)
                                            .shadow(color: correct1 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer2)") {
                                                if index2 == 0 {
                                                    correct2 = true
                                                    correct2String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 1 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct2String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 1 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct2 ? "000000" : "FFFFFF"))
                                            .background(Color(correct2 ? "A6FF91" : "darkYellow"))
                                            .cornerRadius(30)
                                            .shadow(color: correct2 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer3)") {
                                                if index3 == 0 {
                                                    correct3 = true
                                                    correct3String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 1 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct3String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 1 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct3 ? "000000" : "FFFFFF"))
                                            .background(Color(correct3 ? "A6FF91" : "green"))
                                            .cornerRadius(30)
                                            .shadow(color: correct3 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer4)") {
                                                if index4 == 0 {
                                                correct4 = true
                                                correct4String = "true"
                                                correct = true
                                                wrong = false
                                                    if qsAnswered == 1 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct4String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 1 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct4 ? "000000" : "FFFFFF"))
                                            .background(Color(correct4 ? "A6FF91" : "blue"))
                                            .cornerRadius(30)
                                            .shadow(color: correct4 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            
                                            if correct == true {
                                                
                                                Spacer()
                                                Text("\(correctFeedback[Int.random(in: 0..<correctFeedback.count)])")
                                                    .font(.custom("GillSans-Bold", fixedSize: correct ? 22.5 : 0))
                                                    .multilineTextAlignment(.center)
                                                    .opacity(correct ? 1 : 0)
                                                    .foregroundColor(Color("green"))
                                                HStack {
                                                    Spacer()
                                                        Text("Next")
                                                            .font(.custom("GillSans-Bold", fixedSize: 20))
                                                            .foregroundColor(Color("007FFF"))
                                                            .onTapGesture {
                                                                withAnimation(.spring()) {
                                                                    next2.toggle()
                                                                }
                                                            }
                                                        Text("➔")
                                                            .font(.custom("GillSans", fixedSize: 30))
                                                            .foregroundColor(Color("007FFF"))
                                                            .onTapGesture {
                                                                withAnimation(.spring()) {
                                                                    next2.toggle()
                                                                }
                                                            }
       
                                                }
                                        } else if wrong == true {
                                                
                                                Spacer()
                                            Text("\(wrongFeedback[Int.random(in: 0..<wrongFeedback.count)])")
                                                    .font(.custom("GillSans-Bold", fixedSize: wrong ? 22.5 : 0))
                                                    .multilineTextAlignment(.center)
                                                    .opacity(wrong ? 1 : 0)
                                                    .foregroundColor(Color("red"))
                                            }

                                        }
                                .padding()
                                .background(Color("lightYellow"))
                                .cornerRadius(30)
                                .shadow(color: Color("darkGray"), radius: 10, x: 0, y: 5)
                                .frame(width: UIScreen.main.bounds.width * 7/8, height: UIScreen.main.bounds.height * 17/24)

                                Spacer()
                            }
                            .frame(width: 400)
                            .task {
                                
                                correct1 = false
                                correct2 = false
                                correct3 = false
                                correct4 = false
                                correct = false
                                wrong = false
                                correct1String = ""
                                correct2String = ""
                                correct3String = ""
                                correct4String = ""
                                qNum = 0
                                aNum = 0
                                answer1 = ""
                                answer2 = ""
                                answer3 = ""
                                answer4 = ""
                                question2 = ""
                                qNum = Int.random(in: 0..<questions.count)
                                aNum = Int.random(in: 0..<4)
                                while questions[qNum] == "" {
                                    qNum = Int.random(in: 0..<questions.count)
                                }
                                question2 = questions[qNum]
                                questionsTemp.append(question2)
                                questions[qNum] = ""
                                func generateElseIfStatements(questionNumber: Int, answers: inout [String], answersTemp: inout [String], answersCopy: inout [String]) {
                                    answer1 = answers[aNum]
                                    answersTemp.append(answer1)
                                    answers.remove(at: aNum)
                                    index1 = answersCopy.firstIndex(of: answer1)!
                                    aNum = Int.random(in: 0..<answers.count)
                                    answer2 = answers[aNum]
                                    answersTemp.append(answer2)
                                    answers.remove(at: aNum)
                                    index2 = answersCopy.firstIndex(of: answer2)!
                                    aNum = Int.random(in: 0..<answers.count)
                                    answer3 = answers[aNum]
                                    answersTemp.append(answer3)
                                    answers.remove(at: aNum)
                                    index3 = answersCopy.firstIndex(of: answer3)!
                                    aNum = Int.random(in: 0..<answers.count)
                                    answer4 = answers[aNum]
                                    answersTemp.append(answer4)
                                    answers.remove(at: aNum)
                                    index4 = answersCopy.firstIndex(of: answer4)!
                                }
                                if qNum == 0 {
                                    answer1 = answersQ0[aNum]
                                    answersQ0Temp.append(answer1)
                                    answersQ0.remove(at: aNum)
                                    index1 = answersQ0Copy.firstIndex(of: answer1)!
                                    aNum = Int.random(in: 0..<answersQ0.count)
                                    answer2 = answersQ0[aNum]
                                    answersQ0Temp.append(answer2)
                                    answersQ0.remove(at: aNum)
                                    index2 = answersQ0Copy.firstIndex(of: answer2)!
                                    aNum = Int.random(in: 0..<answersQ0.count)
                                    answer3 = answersQ0[aNum]
                                    answersQ0Temp.append(answer3)
                                    answersQ0.remove(at: aNum)
                                    index3 = answersQ0Copy.firstIndex(of: answer3)!
                                    aNum = Int.random(in: 0..<answersQ0.count)
                                    answer4 = answersQ0[aNum]
                                    answersQ0Temp.append(answer4)
                                    answersQ0.remove(at: aNum)
                                    index4 = answersQ0Copy.firstIndex(of: answer4)!
                                } else if qNum == 1 {
                                    
                                    generateElseIfStatements(questionNumber: 1, answers: &answersQ1, answersTemp: &answersQ1Temp, answersCopy: &answersQ1Copy)
                                } else if qNum == 2 {
                                    
                                    generateElseIfStatements(questionNumber: 2, answers: &answersQ2, answersTemp: &answersQ2Temp, answersCopy: &answersQ2Copy)
                                } else if qNum == 3 {
                                    
                                    generateElseIfStatements(questionNumber: 3, answers: &answersQ3, answersTemp: &answersQ3Temp, answersCopy: &answersQ47Copy)
                                } else if qNum == 4 {
                                    
                                    generateElseIfStatements(questionNumber: 4, answers: &answersQ4, answersTemp: &answersQ4Temp, answersCopy: &answersQ4Copy)
                                } else if qNum == 5 {
                                    
                                    generateElseIfStatements(questionNumber: 5, answers: &answersQ5, answersTemp: &answersQ5Temp, answersCopy: &answersQ5Copy)
                                } else if qNum == 6 {
                                    
                                    generateElseIfStatements(questionNumber: 6, answers: &answersQ6, answersTemp: &answersQ6Temp, answersCopy: &answersQ6Copy)
                                } else if qNum == 7 {
                                    
                                    generateElseIfStatements(questionNumber: 7, answers: &answersQ7, answersTemp: &answersQ7Temp, answersCopy: &answersQ7Copy)
                                } else if qNum == 8 {
                                    
                                    generateElseIfStatements(questionNumber: 8, answers: &answersQ8, answersTemp: &answersQ8Temp, answersCopy: &answersQ8Copy)
                                } else if qNum == 9 {
                                    
                                    generateElseIfStatements(questionNumber: 9, answers: &answersQ9, answersTemp: &answersQ9Temp, answersCopy: &answersQ9Copy)
                                } else if qNum == 10 {
                                    
                                    generateElseIfStatements(questionNumber: 10, answers: &answersQ10, answersTemp: &answersQ10Temp, answersCopy: &answersQ10Copy)
                                } else if qNum == 11 {
                                    
                                    generateElseIfStatements(questionNumber: 11, answers: &answersQ11, answersTemp: &answersQ11Temp, answersCopy: &answersQ11Copy)
                                } else if qNum == 12 {
                                    
                                    generateElseIfStatements(questionNumber: 12, answers: &answersQ12, answersTemp: &answersQ12Temp, answersCopy: &answersQ12Copy)
                                } else if qNum == 13 {
                                    
                                    generateElseIfStatements(questionNumber: 13, answers: &answersQ13, answersTemp: &answersQ13Temp, answersCopy: &answersQ13Copy)
                                } else if qNum == 14 {
                                    
                                    generateElseIfStatements(questionNumber: 14, answers: &answersQ14, answersTemp: &answersQ14Temp, answersCopy: &answersQ14Copy)
                                } else if qNum == 15 {
                                    
                                    generateElseIfStatements(questionNumber: 15, answers: &answersQ15, answersTemp: &answersQ15Temp, answersCopy: &answersQ15Copy)
                                } else if qNum == 16 {
                                    
                                    generateElseIfStatements(questionNumber: 16, answers: &answersQ16, answersTemp: &answersQ16Temp, answersCopy: &answersQ16Copy)
                                } else if qNum == 17 {
                                    
                                    generateElseIfStatements(questionNumber: 17, answers: &answersQ17, answersTemp: &answersQ17Temp, answersCopy: &answersQ17Copy)
                                } else if qNum == 18 {
                                    
                                    generateElseIfStatements(questionNumber: 18, answers: &answersQ18, answersTemp: &answersQ18Temp, answersCopy: &answersQ18Copy)
                                } else if qNum == 19 {
                                    
                                    generateElseIfStatements(questionNumber: 19, answers: &answersQ19, answersTemp: &answersQ19Temp, answersCopy: &answersQ19Copy)
                                } else if qNum == 20 {
                                    
                                    generateElseIfStatements(questionNumber: 20, answers: &answersQ20, answersTemp: &answersQ20Temp, answersCopy: &answersQ20Copy)
                                } else if qNum == 21 {
                                    
                                    generateElseIfStatements(questionNumber: 21, answers: &answersQ21, answersTemp: &answersQ21Temp, answersCopy: &answersQ21Copy)
                                } else if qNum == 22 {
                                    
                                    generateElseIfStatements(questionNumber: 22, answers: &answersQ22, answersTemp: &answersQ22Temp, answersCopy: &answersQ22Copy)
                                } else if qNum == 23 {
                                    
                                    generateElseIfStatements(questionNumber: 23, answers: &answersQ23, answersTemp: &answersQ23Temp, answersCopy: &answersQ23Copy)
                                } else if qNum == 24 {
                                    
                                    generateElseIfStatements(questionNumber: 24, answers: &answersQ24, answersTemp: &answersQ24Temp, answersCopy: &answersQ24Copy)
                                } else if qNum == 25 {
                                    
                                    generateElseIfStatements(questionNumber: 25, answers: &answersQ25, answersTemp: &answersQ25Temp, answersCopy: &answersQ25Copy)
                                } else if qNum == 26 {
                                    
                                    generateElseIfStatements(questionNumber: 26, answers: &answersQ26, answersTemp: &answersQ26Temp, answersCopy: &answersQ26Copy)
                                }
                                else if qNum == 27 {
                                    
                                    generateElseIfStatements(questionNumber: 27, answers: &answersQ27, answersTemp: &answersQ27Temp, answersCopy: &answersQ27Copy)
                                } else if qNum == 28 {
                                    
                                    generateElseIfStatements(questionNumber: 28, answers: &answersQ28, answersTemp: &answersQ28Temp, answersCopy: &answersQ28Copy)
                                } else if qNum == 29 {
                                    
                                    generateElseIfStatements(questionNumber: 29, answers: &answersQ29, answersTemp: &answersQ29Temp, answersCopy: &answersQ29Copy)
                                } else if qNum == 30 {
                                    
                                    generateElseIfStatements(questionNumber: 30, answers: &answersQ30, answersTemp: &answersQ30Temp, answersCopy: &answersQ30Copy)
                                } else if qNum == 31 {
                                    generateElseIfStatements(questionNumber: 31, answers: &answersQ31, answersTemp: &answersQ31Temp, answersCopy: &answersQ31Copy)
                                } else if qNum == 32 {
                                    generateElseIfStatements(questionNumber: 32, answers: &answersQ32, answersTemp: &answersQ32Temp, answersCopy: &answersQ32Copy)
                                } else if qNum == 33 {
                                    generateElseIfStatements(questionNumber: 33, answers: &answersQ33, answersTemp: &answersQ33Temp, answersCopy: &answersQ33Copy)
                                } else if qNum == 34 {
                                    generateElseIfStatements(questionNumber: 34, answers: &answersQ34, answersTemp: &answersQ34Temp, answersCopy: &answersQ34Copy)
                                } else if qNum == 35 {
                                    generateElseIfStatements(questionNumber: 35, answers: &answersQ35, answersTemp: &answersQ35Temp, answersCopy: &answersQ35Copy)
                                } else if qNum == 36 {
                                    generateElseIfStatements(questionNumber: 36, answers: &answersQ36, answersTemp: &answersQ36Temp, answersCopy: &answersQ36Copy)
                                } else if qNum == 37 {
                                    generateElseIfStatements(questionNumber: 37, answers: &answersQ37, answersTemp: &answersQ37Temp, answersCopy: &answersQ37Copy)
                                } else if qNum == 38 {
                                    generateElseIfStatements(questionNumber: 38, answers: &answersQ38, answersTemp: &answersQ38Temp, answersCopy: &answersQ38Copy)
                                } else if qNum == 39 {
                                    generateElseIfStatements(questionNumber: 39, answers: &answersQ39, answersTemp: &answersQ39Temp, answersCopy: &answersQ39Copy)
                                } else if qNum == 40 {
                                    generateElseIfStatements(questionNumber: 40, answers: &answersQ40, answersTemp: &answersQ40Temp, answersCopy: &answersQ40Copy)
                                } else if qNum == 41 {
                                    generateElseIfStatements(questionNumber: 41, answers: &answersQ41, answersTemp: &answersQ41Temp, answersCopy: &answersQ41Copy)
                                } else if qNum == 42 {
                                    generateElseIfStatements(questionNumber: 42, answers: &answersQ42, answersTemp: &answersQ42Temp, answersCopy: &answersQ42Copy)
                                } else if qNum == 43 {
                                    generateElseIfStatements(questionNumber: 43, answers: &answersQ43, answersTemp: &answersQ43Temp, answersCopy: &answersQ43Copy)
                                } else if qNum == 44 {
                                    generateElseIfStatements(questionNumber: 44, answers: &answersQ44, answersTemp: &answersQ44Temp, answersCopy: &answersQ44Copy)
                                } else if qNum == 45 {
                                    generateElseIfStatements(questionNumber: 45, answers: &answersQ45, answersTemp: &answersQ45Temp, answersCopy: &answersQ45Copy)
                                } else if qNum == 46 {
                                    generateElseIfStatements(questionNumber: 46, answers: &answersQ46, answersTemp: &answersQ46Temp, answersCopy: &answersQ46Copy)
                                } else if qNum == 47 {
                                    
                                    generateElseIfStatements(questionNumber: 47, answers: &answersQ47, answersTemp: &answersQ47Temp, answersCopy: &answersQ47Copy)
                                } else if qNum == 48 {
                                    generateElseIfStatements(questionNumber: 48, answers: &answersQ48, answersTemp: &answersQ48Temp, answersCopy: &answersQ48Copy)
                                }else if qNum == 49 {
                                    generateElseIfStatements(questionNumber: 49, answers: &answersQ49, answersTemp: &answersQ49Temp, answersCopy: &answersQ49Copy)
                                }
                                
                            }
                            .transition(.move(edge: .trailing))
                            .zIndex(2)
                        } else {
                            
                            if !next4 {
                                
                                HStack(alignment: .center, spacing: 20) {
                                    
                                    Spacer()
                                    
                                    VStack(spacing: 10) {
                                        
                                        Spacer()
                                        VStack {
                                            Text("\(question3)")
                                                .font(.custom("GillSans-Semibold", fixedSize: 27))
                                                .multilineTextAlignment(.center)
                                        }
                                        .frame(maxWidth: .infinity)
                                        
                                        Spacer()
                                        Button("\(answer1)") {
                                            if index1 == 0 {
                                                correct1 = true
                                                correct1String = "true"
                                                correct = true
                                                wrong = false
                                                if qsAnswered == 2 {
                                                    correctCount += 1
                                                    qsAnswered += 1
                                                }
                                            } else {
                                                correct1 = false
                                                correct2 = false
                                                correct3 = false
                                                correct4 = false
                                                correct2String = "false"
                                                correct = false
                                                wrong = true
                                                if qsAnswered == 2 {
                                                    qsAnswered += 1
                                                }
                                            }
                                            print("\(correctCount)/\(qsAnswered)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
                                        .font(.custom("GillSans", fixedSize: 22.5))
                                        .padding(.all, 10.0)
                                        .foregroundColor(Color(correct1 ? "000000" : "FFFFFF"))
                                        .background(Color(correct1 ? "A6FF91" : "red"))
                                        .cornerRadius(30)
                                        .shadow(color: correct1 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        Button("\(answer2)") {
                                            if index2 == 0 {
                                                correct2 = true
                                                correct2String = "true"
                                                correct = true
                                                wrong = false
                                                if qsAnswered == 2 {
                                                    correctCount += 1
                                                    qsAnswered += 1
                                                }
                                            } else {
                                                correct1 = false
                                                correct2 = false
                                                correct3 = false
                                                correct4 = false
                                                correct2String = "false"
                                                correct = false
                                                wrong = true
                                                if qsAnswered == 2 {
                                                    qsAnswered += 1
                                                }
                                            }
                                            print("\(correctCount)/\(qsAnswered)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
                                        .font(.custom("GillSans", fixedSize: 22.5))
                                        
                                        .padding(.all, 10.0)
                                        .foregroundColor(Color(correct2 ? "000000" : "FFFFFF"))
                                        .background(Color(correct2 ? "A6FF91" : "darkYellow"))
                                        .cornerRadius(30)
                                        .shadow(color: correct2 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        Button("\(answer3)") {
                                            if index3 == 0 {
                                                correct3 = true
                                                correct3String = "true"
                                                correct = true
                                                wrong = false
                                                if qsAnswered == 2 {
                                                    correctCount += 1
                                                    qsAnswered += 1
                                                }
                                            } else {
                                                correct1 = false
                                                correct2 = false
                                                correct3 = false
                                                correct4 = false
                                                correct3String = "false"
                                                correct = false
                                                wrong = true
                                                if qsAnswered == 2 {
                                                    qsAnswered += 1
                                                }
                                            }
                                            print("\(correctCount)/\(qsAnswered)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
                                        .font(.custom("GillSans", fixedSize: 22.5))
                                        
                                        .padding(.all, 10.0)
                                        .foregroundColor(Color(correct3 ? "000000" : "FFFFFF"))
                                        .background(Color(correct3 ? "A6FF91" : "green"))
                                        .cornerRadius(30)
                                        .shadow(color: correct3 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        Button("\(answer4)") {
                                            if index4 == 0 {
                                                correct4 = true
                                                correct4String = "true"
                                                correct = true
                                                wrong = false
                                                if qsAnswered == 2 {
                                                    correctCount += 1
                                                    qsAnswered += 1
                                                }
                                            } else {
                                                correct1 = false
                                                correct2 = false
                                                correct3 = false
                                                correct4 = false
                                                correct4String = "false"
                                                correct = false
                                                wrong = true
                                                if qsAnswered == 2 {
                                                    qsAnswered += 1
                                                }
                                            }
                                            print("\(correctCount)/\(qsAnswered)")
                                        }
                                        .frame(width: UIScreen.main.bounds.width * 3/4)
                                        .font(.custom("GillSans", fixedSize: 22.5))
                                        
                                        .padding(.all, 10.0)
                                        .foregroundColor(Color(correct4 ? "000000" : "FFFFFF"))
                                        .background(Color(correct4 ? "A6FF91" : "blue"))
                                        .cornerRadius(30)
                                        .shadow(color: correct4 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                        
                                        if correct == true {
                                            
                                            Spacer()
                                            Text("\(correctFeedback[Int.random(in: 0..<correctFeedback.count)])")
                                                .font(.custom("GillSans-Bold", fixedSize: correct ? 22.5 : 0))
                                                .multilineTextAlignment(.center)
                                                .opacity(correct ? 1 : 0)
                                                .foregroundColor(Color("green"))
                                            HStack {
                                                Spacer()
                                                    Text("Next")
                                                        .font(.custom("GillSans-Bold", fixedSize: 20))
                                                        .foregroundColor(Color("007FFF"))
                                                        .onTapGesture {
                                                            withAnimation(.spring()) {
                                                                next2.toggle()
                                                            }
                                                        }
                                                    Text("➔")
                                                        .font(.custom("GillSans", fixedSize: 30))
                                                        .foregroundColor(Color("007FFF"))
                                                        .onTapGesture {
                                                            withAnimation(.spring()) {
                                                                next2.toggle()
                                                            }
                                                        }
   
                                            }
                                    } else if wrong == true {
                                            
                                            Spacer()
                                        Text("\(wrongFeedback[Int.random(in: 0..<wrongFeedback.count)])")
                                                .font(.custom("GillSans-Bold", fixedSize: wrong ? 22.5 : 0))
                                                .multilineTextAlignment(.center)
                                                .opacity(wrong ? 1 : 0)
                                                .foregroundColor(Color("red"))
                                        }
                                        
                                    }
                                    .padding()
                                    .background(Color("lightYellow"))
                                    .cornerRadius(30)
                                    .shadow(color: Color("darkGray"), radius: 10, x: 0, y: 5)
                                    .frame(width: UIScreen.main.bounds.width * 7/8, height: UIScreen.main.bounds.height * 17/24)
                                    
                                    Spacer()
                                }
                                .frame(width: 400)
                                .task {
                                    
                                    correct1 = false
                                    correct2 = false
                                    correct3 = false
                                    correct4 = false
                                    correct = false
                                    wrong = false
                                    correct1String = ""
                                    correct2String = ""
                                    correct3String = ""
                                    correct4String = ""
                                    qNum = 0
                                    aNum = 0
                                    answer1 = ""
                                    answer2 = ""
                                    answer3 = ""
                                    answer4 = ""
                                    question3 = ""
                                    qNum = Int.random(in: 0..<questions.count)
                                    aNum = Int.random(in: 0..<4)
                                    while questions[qNum] == "" {
                                        qNum = Int.random(in: 0..<questions.count)
                                    }
                                    question3 = questions[qNum]
                                    questionsTemp.append(question3)
                                    questions[qNum] = ""
                                    func generateElseIfStatements(questionNumber: Int, answers: inout [String], answersTemp: inout [String], answersCopy: inout [String]) {
                                        answer1 = answers[aNum]
                                        answersTemp.append(answer1)
                                        answers.remove(at: aNum)
                                        index1 = answersCopy.firstIndex(of: answer1)!
                                        aNum = Int.random(in: 0..<answers.count)
                                        answer2 = answers[aNum]
                                        answersTemp.append(answer2)
                                        answers.remove(at: aNum)
                                        index2 = answersCopy.firstIndex(of: answer2)!
                                        aNum = Int.random(in: 0..<answers.count)
                                        answer3 = answers[aNum]
                                        answersTemp.append(answer3)
                                        answers.remove(at: aNum)
                                        index3 = answersCopy.firstIndex(of: answer3)!
                                        aNum = Int.random(in: 0..<answers.count)
                                        answer4 = answers[aNum]
                                        answersTemp.append(answer4)
                                        answers.remove(at: aNum)
                                        index4 = answersCopy.firstIndex(of: answer4)!
                                    }
                                    if qNum == 0 {
                                        answer1 = answersQ0[aNum]
                                        answersQ0Temp.append(answer1)
                                        answersQ0.remove(at: aNum)
                                        index1 = answersQ0Copy.firstIndex(of: answer1)!
                                        aNum = Int.random(in: 0..<answersQ0.count)
                                        answer2 = answersQ0[aNum]
                                        answersQ0Temp.append(answer2)
                                        answersQ0.remove(at: aNum)
                                        index2 = answersQ0Copy.firstIndex(of: answer2)!
                                        aNum = Int.random(in: 0..<answersQ0.count)
                                        answer3 = answersQ0[aNum]
                                        answersQ0Temp.append(answer3)
                                        answersQ0.remove(at: aNum)
                                        index3 = answersQ0Copy.firstIndex(of: answer3)!
                                        aNum = Int.random(in: 0..<answersQ0.count)
                                        answer4 = answersQ0[aNum]
                                        answersQ0Temp.append(answer4)
                                        answersQ0.remove(at: aNum)
                                        index4 = answersQ0Copy.firstIndex(of: answer4)!
                                    } else if qNum == 1 {
                                        
                                        generateElseIfStatements(questionNumber: 1, answers: &answersQ1, answersTemp: &answersQ1Temp, answersCopy: &answersQ1Copy)
                                    } else if qNum == 2 {
                                        
                                        generateElseIfStatements(questionNumber: 2, answers: &answersQ2, answersTemp: &answersQ2Temp, answersCopy: &answersQ2Copy)
                                    } else if qNum == 3 {
                                        
                                        generateElseIfStatements(questionNumber: 3, answers: &answersQ3, answersTemp: &answersQ3Temp, answersCopy: &answersQ47Copy)
                                    } else if qNum == 4 {
                                        
                                        generateElseIfStatements(questionNumber: 4, answers: &answersQ4, answersTemp: &answersQ4Temp, answersCopy: &answersQ4Copy)
                                    } else if qNum == 5 {
                                        
                                        generateElseIfStatements(questionNumber: 5, answers: &answersQ5, answersTemp: &answersQ5Temp, answersCopy: &answersQ5Copy)
                                    } else if qNum == 6 {
                                        
                                        generateElseIfStatements(questionNumber: 6, answers: &answersQ6, answersTemp: &answersQ6Temp, answersCopy: &answersQ6Copy)
                                    } else if qNum == 7 {
                                        
                                        generateElseIfStatements(questionNumber: 7, answers: &answersQ7, answersTemp: &answersQ7Temp, answersCopy: &answersQ7Copy)
                                    } else if qNum == 8 {
                                        
                                        generateElseIfStatements(questionNumber: 8, answers: &answersQ8, answersTemp: &answersQ8Temp, answersCopy: &answersQ8Copy)
                                    } else if qNum == 9 {
                                        
                                        generateElseIfStatements(questionNumber: 9, answers: &answersQ9, answersTemp: &answersQ9Temp, answersCopy: &answersQ9Copy)
                                    } else if qNum == 10 {
                                        
                                        generateElseIfStatements(questionNumber: 10, answers: &answersQ10, answersTemp: &answersQ10Temp, answersCopy: &answersQ10Copy)
                                    } else if qNum == 11 {
                                        
                                        generateElseIfStatements(questionNumber: 11, answers: &answersQ11, answersTemp: &answersQ11Temp, answersCopy: &answersQ11Copy)
                                    } else if qNum == 12 {
                                        
                                        generateElseIfStatements(questionNumber: 12, answers: &answersQ12, answersTemp: &answersQ12Temp, answersCopy: &answersQ12Copy)
                                    } else if qNum == 13 {
                                        
                                        generateElseIfStatements(questionNumber: 13, answers: &answersQ13, answersTemp: &answersQ13Temp, answersCopy: &answersQ13Copy)
                                    } else if qNum == 14 {
                                        
                                        generateElseIfStatements(questionNumber: 14, answers: &answersQ14, answersTemp: &answersQ14Temp, answersCopy: &answersQ14Copy)
                                    } else if qNum == 15 {
                                        
                                        generateElseIfStatements(questionNumber: 15, answers: &answersQ15, answersTemp: &answersQ15Temp, answersCopy: &answersQ15Copy)
                                    } else if qNum == 16 {
                                        
                                        generateElseIfStatements(questionNumber: 16, answers: &answersQ16, answersTemp: &answersQ16Temp, answersCopy: &answersQ16Copy)
                                    } else if qNum == 17 {
                                        
                                        generateElseIfStatements(questionNumber: 17, answers: &answersQ17, answersTemp: &answersQ17Temp, answersCopy: &answersQ17Copy)
                                    } else if qNum == 18 {
                                        
                                        generateElseIfStatements(questionNumber: 18, answers: &answersQ18, answersTemp: &answersQ18Temp, answersCopy: &answersQ18Copy)
                                    } else if qNum == 19 {
                                        
                                        generateElseIfStatements(questionNumber: 19, answers: &answersQ19, answersTemp: &answersQ19Temp, answersCopy: &answersQ19Copy)
                                    } else if qNum == 20 {
                                        
                                        generateElseIfStatements(questionNumber: 20, answers: &answersQ20, answersTemp: &answersQ20Temp, answersCopy: &answersQ20Copy)
                                    } else if qNum == 21 {
                                        
                                        generateElseIfStatements(questionNumber: 21, answers: &answersQ21, answersTemp: &answersQ21Temp, answersCopy: &answersQ21Copy)
                                    } else if qNum == 22 {
                                        
                                        generateElseIfStatements(questionNumber: 22, answers: &answersQ22, answersTemp: &answersQ22Temp, answersCopy: &answersQ22Copy)
                                    } else if qNum == 23 {
                                        
                                        generateElseIfStatements(questionNumber: 23, answers: &answersQ23, answersTemp: &answersQ23Temp, answersCopy: &answersQ23Copy)
                                    } else if qNum == 24 {
                                        
                                        generateElseIfStatements(questionNumber: 24, answers: &answersQ24, answersTemp: &answersQ24Temp, answersCopy: &answersQ24Copy)
                                    } else if qNum == 25 {
                                        
                                        generateElseIfStatements(questionNumber: 25, answers: &answersQ25, answersTemp: &answersQ25Temp, answersCopy: &answersQ25Copy)
                                    } else if qNum == 26 {
                                        
                                        generateElseIfStatements(questionNumber: 26, answers: &answersQ26, answersTemp: &answersQ26Temp, answersCopy: &answersQ26Copy)
                                    }
                                    else if qNum == 27 {
                                        
                                        generateElseIfStatements(questionNumber: 27, answers: &answersQ27, answersTemp: &answersQ27Temp, answersCopy: &answersQ27Copy)
                                    } else if qNum == 28 {
                                        
                                        generateElseIfStatements(questionNumber: 28, answers: &answersQ28, answersTemp: &answersQ28Temp, answersCopy: &answersQ28Copy)
                                    } else if qNum == 29 {
                                        
                                        generateElseIfStatements(questionNumber: 29, answers: &answersQ29, answersTemp: &answersQ29Temp, answersCopy: &answersQ29Copy)
                                    } else if qNum == 30 {
                                        
                                        generateElseIfStatements(questionNumber: 30, answers: &answersQ30, answersTemp: &answersQ30Temp, answersCopy: &answersQ30Copy)
                                    } else if qNum == 31 {
                                        generateElseIfStatements(questionNumber: 31, answers: &answersQ31, answersTemp: &answersQ31Temp, answersCopy: &answersQ31Copy)
                                    } else if qNum == 32 {
                                        generateElseIfStatements(questionNumber: 32, answers: &answersQ32, answersTemp: &answersQ32Temp, answersCopy: &answersQ32Copy)
                                    } else if qNum == 33 {
                                        generateElseIfStatements(questionNumber: 33, answers: &answersQ33, answersTemp: &answersQ33Temp, answersCopy: &answersQ33Copy)
                                    } else if qNum == 34 {
                                        generateElseIfStatements(questionNumber: 34, answers: &answersQ34, answersTemp: &answersQ34Temp, answersCopy: &answersQ34Copy)
                                    } else if qNum == 35 {
                                        generateElseIfStatements(questionNumber: 35, answers: &answersQ35, answersTemp: &answersQ35Temp, answersCopy: &answersQ35Copy)
                                    } else if qNum == 36 {
                                        generateElseIfStatements(questionNumber: 36, answers: &answersQ36, answersTemp: &answersQ36Temp, answersCopy: &answersQ36Copy)
                                    } else if qNum == 37 {
                                        generateElseIfStatements(questionNumber: 37, answers: &answersQ37, answersTemp: &answersQ37Temp, answersCopy: &answersQ37Copy)
                                    } else if qNum == 38 {
                                        generateElseIfStatements(questionNumber: 38, answers: &answersQ38, answersTemp: &answersQ38Temp, answersCopy: &answersQ38Copy)
                                    } else if qNum == 39 {
                                        generateElseIfStatements(questionNumber: 39, answers: &answersQ39, answersTemp: &answersQ39Temp, answersCopy: &answersQ39Copy)
                                    } else if qNum == 40 {
                                        generateElseIfStatements(questionNumber: 40, answers: &answersQ40, answersTemp: &answersQ40Temp, answersCopy: &answersQ40Copy)
                                    } else if qNum == 41 {
                                        generateElseIfStatements(questionNumber: 41, answers: &answersQ41, answersTemp: &answersQ41Temp, answersCopy: &answersQ41Copy)
                                    } else if qNum == 42 {
                                        generateElseIfStatements(questionNumber: 42, answers: &answersQ42, answersTemp: &answersQ42Temp, answersCopy: &answersQ42Copy)
                                    } else if qNum == 43 {
                                        generateElseIfStatements(questionNumber: 43, answers: &answersQ43, answersTemp: &answersQ43Temp, answersCopy: &answersQ43Copy)
                                    } else if qNum == 44 {
                                        generateElseIfStatements(questionNumber: 44, answers: &answersQ44, answersTemp: &answersQ44Temp, answersCopy: &answersQ44Copy)
                                    } else if qNum == 45 {
                                        generateElseIfStatements(questionNumber: 45, answers: &answersQ45, answersTemp: &answersQ45Temp, answersCopy: &answersQ45Copy)
                                    } else if qNum == 46 {
                                        generateElseIfStatements(questionNumber: 46, answers: &answersQ46, answersTemp: &answersQ46Temp, answersCopy: &answersQ46Copy)
                                    } else if qNum == 47 {
                                        
                                        generateElseIfStatements(questionNumber: 47, answers: &answersQ47, answersTemp: &answersQ47Temp, answersCopy: &answersQ47Copy)
                                    } else if qNum == 48 {
                                        generateElseIfStatements(questionNumber: 48, answers: &answersQ48, answersTemp: &answersQ48Temp, answersCopy: &answersQ48Copy)
                                    }else if qNum == 49 {
                                        generateElseIfStatements(questionNumber: 49, answers: &answersQ49, answersTemp: &answersQ49Temp, answersCopy: &answersQ49Copy)
                                    }
                                    
                                }
                                .transition(.move(edge: .trailing))
                                .zIndex(4)
                            } else {
                                
                                if !next5 {
                                    
                                    HStack(alignment: .center, spacing: 20) {
                                        
                                        Spacer()
                                        
                                        VStack(spacing: 10) {
                                            
                                            Spacer()
                                            VStack {
                                                Text("\(question4)")
                                                    .font(.custom("GillSans-Semibold", fixedSize: 27))
                                                    .multilineTextAlignment(.center)
                                            }
                                            .frame(maxWidth: .infinity)
                                            
                                            Spacer()
                                            Button("\(answer1)") {
                                                if index1 == 0 {
                                                    correct1 = true
                                                    correct1String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 3 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct2String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 3 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct1 ? "000000" : "FFFFFF"))
                                            .background(Color(correct1 ? "A6FF91" : "red"))
                                            .cornerRadius(30)
                                            .shadow(color: correct1 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer2)") {
                                                if index2 == 0 {
                                                    correct2 = true
                                                    correct2String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 3 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct2String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 3 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct2 ? "000000" : "FFFFFF"))
                                            .background(Color(correct2 ? "A6FF91" : "darkYellow"))
                                            .cornerRadius(30)
                                            .shadow(color: correct2 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer3)") {
                                                if index3 == 0 {
                                                    correct3 = true
                                                    correct3String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 3 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct3String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 3 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct3 ? "000000" : "FFFFFF"))
                                            .background(Color(correct3 ? "A6FF91" : "green"))
                                            .cornerRadius(30)
                                            .shadow(color: correct3 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer4)") {
                                                if index4 == 0 {
                                                    correct4 = true
                                                    correct4String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 3 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct4String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 3 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct4 ? "000000" : "FFFFFF"))
                                            .background(Color(correct4 ? "A6FF91" : "blue"))
                                            .cornerRadius(30)
                                            .shadow(color: correct4 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            
                                            if correct == true {
                                                
                                                Spacer()
                                                Text("\(correctFeedback[Int.random(in: 0..<correctFeedback.count)])")
                                                    .font(.custom("GillSans-Bold", fixedSize: correct ? 22.5 : 0))
                                                    .multilineTextAlignment(.center)
                                                    .opacity(correct ? 1 : 0)
                                                    .foregroundColor(Color("green"))
                                                HStack {
                                                    Spacer()
                                                        Text("Next")
                                                            .font(.custom("GillSans-Bold", fixedSize: 20))
                                                            .foregroundColor(Color("007FFF"))
                                                            .onTapGesture {
                                                                withAnimation(.spring()) {
                                                                    next2.toggle()
                                                                }
                                                            }
                                                        Text("➔")
                                                            .font(.custom("GillSans", fixedSize: 30))
                                                            .foregroundColor(Color("007FFF"))
                                                            .onTapGesture {
                                                                withAnimation(.spring()) {
                                                                    next2.toggle()
                                                                }
                                                            }
       
                                                }
                                        } else if wrong == true {
                                                
                                                Spacer()
                                            Text("\(wrongFeedback[Int.random(in: 0..<wrongFeedback.count)])")
                                                    .font(.custom("GillSans-Bold", fixedSize: wrong ? 22.5 : 0))
                                                    .multilineTextAlignment(.center)
                                                    .opacity(wrong ? 1 : 0)
                                                    .foregroundColor(Color("red"))
                                            }
                                            
                                        }
                                        .padding()
                                        .background(Color("lightYellow"))
                                        .cornerRadius(30)
                                        .shadow(color: Color("darkGray"), radius: 10, x: 0, y: 5)
                                        .frame(width: UIScreen.main.bounds.width * 7/8, height: UIScreen.main.bounds.height * 17/24)
                                        
                                        Spacer()
                                    }
                                    .frame(width: 400)
                                    .task {
                                        
                                        correct1 = false
                                        correct2 = false
                                        correct3 = false
                                        correct4 = false
                                        correct = false
                                        wrong = false
                                        correct1String = ""
                                        correct2String = ""
                                        correct3String = ""
                                        correct4String = ""
                                        qNum = 0
                                        aNum = 0
                                        answer1 = ""
                                        answer2 = ""
                                        answer3 = ""
                                        answer4 = ""
                                        question4 = ""
                                        qNum = Int.random(in: 0..<questions.count)
                                        aNum = Int.random(in: 0..<4)
                                        while questions[qNum] == "" {
                                            qNum = Int.random(in: 0..<questions.count)
                                        }
                                        question4 = questions[qNum]
                                        questionsTemp.append(question4)
                                        questions[qNum] = ""
                                        func generateElseIfStatements(questionNumber: Int, answers: inout [String], answersTemp: inout [String], answersCopy: inout [String]) {
                                            answer1 = answers[aNum]
                                            answersTemp.append(answer1)
                                            answers.remove(at: aNum)
                                            index1 = answersCopy.firstIndex(of: answer1)!
                                            aNum = Int.random(in: 0..<answers.count)
                                            answer2 = answers[aNum]
                                            answersTemp.append(answer2)
                                            answers.remove(at: aNum)
                                            index2 = answersCopy.firstIndex(of: answer2)!
                                            aNum = Int.random(in: 0..<answers.count)
                                            answer3 = answers[aNum]
                                            answersTemp.append(answer3)
                                            answers.remove(at: aNum)
                                            index3 = answersCopy.firstIndex(of: answer3)!
                                            aNum = Int.random(in: 0..<answers.count)
                                            answer4 = answers[aNum]
                                            answersTemp.append(answer4)
                                            answers.remove(at: aNum)
                                            index4 = answersCopy.firstIndex(of: answer4)!
                                        }
                                        if qNum == 0 {
                                            answer1 = answersQ0[aNum]
                                            answersQ0Temp.append(answer1)
                                            answersQ0.remove(at: aNum)
                                            index1 = answersQ0Copy.firstIndex(of: answer1)!
                                            aNum = Int.random(in: 0..<answersQ0.count)
                                            answer2 = answersQ0[aNum]
                                            answersQ0Temp.append(answer2)
                                            answersQ0.remove(at: aNum)
                                            index2 = answersQ0Copy.firstIndex(of: answer2)!
                                            aNum = Int.random(in: 0..<answersQ0.count)
                                            answer3 = answersQ0[aNum]
                                            answersQ0Temp.append(answer3)
                                            answersQ0.remove(at: aNum)
                                            index3 = answersQ0Copy.firstIndex(of: answer3)!
                                            aNum = Int.random(in: 0..<answersQ0.count)
                                            answer4 = answersQ0[aNum]
                                            answersQ0Temp.append(answer4)
                                            answersQ0.remove(at: aNum)
                                            index4 = answersQ0Copy.firstIndex(of: answer4)!
                                        } else if qNum == 1 {
                                            
                                            generateElseIfStatements(questionNumber: 1, answers: &answersQ1, answersTemp: &answersQ1Temp, answersCopy: &answersQ1Copy)
                                        } else if qNum == 2 {
                                            
                                            generateElseIfStatements(questionNumber: 2, answers: &answersQ2, answersTemp: &answersQ2Temp, answersCopy: &answersQ2Copy)
                                        } else if qNum == 3 {
                                            
                                            generateElseIfStatements(questionNumber: 3, answers: &answersQ3, answersTemp: &answersQ3Temp, answersCopy: &answersQ47Copy)
                                        } else if qNum == 4 {
                                            
                                            generateElseIfStatements(questionNumber: 4, answers: &answersQ4, answersTemp: &answersQ4Temp, answersCopy: &answersQ4Copy)
                                        } else if qNum == 5 {
                                            
                                            generateElseIfStatements(questionNumber: 5, answers: &answersQ5, answersTemp: &answersQ5Temp, answersCopy: &answersQ5Copy)
                                        } else if qNum == 6 {
                                            
                                            generateElseIfStatements(questionNumber: 6, answers: &answersQ6, answersTemp: &answersQ6Temp, answersCopy: &answersQ6Copy)
                                        } else if qNum == 7 {
                                            
                                            generateElseIfStatements(questionNumber: 7, answers: &answersQ7, answersTemp: &answersQ7Temp, answersCopy: &answersQ7Copy)
                                        } else if qNum == 8 {
                                            
                                            generateElseIfStatements(questionNumber: 8, answers: &answersQ8, answersTemp: &answersQ8Temp, answersCopy: &answersQ8Copy)
                                        } else if qNum == 9 {
                                            
                                            generateElseIfStatements(questionNumber: 9, answers: &answersQ9, answersTemp: &answersQ9Temp, answersCopy: &answersQ9Copy)
                                        } else if qNum == 10 {
                                            
                                            generateElseIfStatements(questionNumber: 10, answers: &answersQ10, answersTemp: &answersQ10Temp, answersCopy: &answersQ10Copy)
                                        } else if qNum == 11 {
                                            
                                            generateElseIfStatements(questionNumber: 11, answers: &answersQ11, answersTemp: &answersQ11Temp, answersCopy: &answersQ11Copy)
                                        } else if qNum == 12 {
                                            
                                            generateElseIfStatements(questionNumber: 12, answers: &answersQ12, answersTemp: &answersQ12Temp, answersCopy: &answersQ12Copy)
                                        } else if qNum == 13 {
                                            
                                            generateElseIfStatements(questionNumber: 13, answers: &answersQ13, answersTemp: &answersQ13Temp, answersCopy: &answersQ13Copy)
                                        } else if qNum == 14 {
                                            
                                            generateElseIfStatements(questionNumber: 14, answers: &answersQ14, answersTemp: &answersQ14Temp, answersCopy: &answersQ14Copy)
                                        } else if qNum == 15 {
                                            
                                            generateElseIfStatements(questionNumber: 15, answers: &answersQ15, answersTemp: &answersQ15Temp, answersCopy: &answersQ15Copy)
                                        } else if qNum == 16 {
                                            
                                            generateElseIfStatements(questionNumber: 16, answers: &answersQ16, answersTemp: &answersQ16Temp, answersCopy: &answersQ16Copy)
                                        } else if qNum == 17 {
                                            
                                            generateElseIfStatements(questionNumber: 17, answers: &answersQ17, answersTemp: &answersQ17Temp, answersCopy: &answersQ17Copy)
                                        } else if qNum == 18 {
                                            
                                            generateElseIfStatements(questionNumber: 18, answers: &answersQ18, answersTemp: &answersQ18Temp, answersCopy: &answersQ18Copy)
                                        } else if qNum == 19 {
                                            
                                            generateElseIfStatements(questionNumber: 19, answers: &answersQ19, answersTemp: &answersQ19Temp, answersCopy: &answersQ19Copy)
                                        } else if qNum == 20 {
                                            
                                            generateElseIfStatements(questionNumber: 20, answers: &answersQ20, answersTemp: &answersQ20Temp, answersCopy: &answersQ20Copy)
                                        } else if qNum == 21 {
                                            
                                            generateElseIfStatements(questionNumber: 21, answers: &answersQ21, answersTemp: &answersQ21Temp, answersCopy: &answersQ21Copy)
                                        } else if qNum == 22 {
                                            
                                            generateElseIfStatements(questionNumber: 22, answers: &answersQ22, answersTemp: &answersQ22Temp, answersCopy: &answersQ22Copy)
                                        } else if qNum == 23 {
                                            
                                            generateElseIfStatements(questionNumber: 23, answers: &answersQ23, answersTemp: &answersQ23Temp, answersCopy: &answersQ23Copy)
                                        } else if qNum == 24 {
                                            
                                            generateElseIfStatements(questionNumber: 24, answers: &answersQ24, answersTemp: &answersQ24Temp, answersCopy: &answersQ24Copy)
                                        } else if qNum == 25 {
                                            
                                            generateElseIfStatements(questionNumber: 25, answers: &answersQ25, answersTemp: &answersQ25Temp, answersCopy: &answersQ25Copy)
                                        } else if qNum == 26 {
                                            
                                            generateElseIfStatements(questionNumber: 26, answers: &answersQ26, answersTemp: &answersQ26Temp, answersCopy: &answersQ26Copy)
                                        }
                                        else if qNum == 27 {
                                            
                                            generateElseIfStatements(questionNumber: 27, answers: &answersQ27, answersTemp: &answersQ27Temp, answersCopy: &answersQ27Copy)
                                        } else if qNum == 28 {
                                            
                                            generateElseIfStatements(questionNumber: 28, answers: &answersQ28, answersTemp: &answersQ28Temp, answersCopy: &answersQ28Copy)
                                        } else if qNum == 29 {
                                            
                                            generateElseIfStatements(questionNumber: 29, answers: &answersQ29, answersTemp: &answersQ29Temp, answersCopy: &answersQ29Copy)
                                        } else if qNum == 30 {
                                            
                                            generateElseIfStatements(questionNumber: 30, answers: &answersQ30, answersTemp: &answersQ30Temp, answersCopy: &answersQ30Copy)
                                        } else if qNum == 31 {
                                            generateElseIfStatements(questionNumber: 31, answers: &answersQ31, answersTemp: &answersQ31Temp, answersCopy: &answersQ31Copy)
                                        } else if qNum == 32 {
                                            generateElseIfStatements(questionNumber: 32, answers: &answersQ32, answersTemp: &answersQ32Temp, answersCopy: &answersQ32Copy)
                                        } else if qNum == 33 {
                                            generateElseIfStatements(questionNumber: 33, answers: &answersQ33, answersTemp: &answersQ33Temp, answersCopy: &answersQ33Copy)
                                        } else if qNum == 34 {
                                            generateElseIfStatements(questionNumber: 34, answers: &answersQ34, answersTemp: &answersQ34Temp, answersCopy: &answersQ34Copy)
                                        } else if qNum == 35 {
                                            generateElseIfStatements(questionNumber: 35, answers: &answersQ35, answersTemp: &answersQ35Temp, answersCopy: &answersQ35Copy)
                                        } else if qNum == 36 {
                                            generateElseIfStatements(questionNumber: 36, answers: &answersQ36, answersTemp: &answersQ36Temp, answersCopy: &answersQ36Copy)
                                        } else if qNum == 37 {
                                            generateElseIfStatements(questionNumber: 37, answers: &answersQ37, answersTemp: &answersQ37Temp, answersCopy: &answersQ37Copy)
                                        } else if qNum == 38 {
                                            generateElseIfStatements(questionNumber: 38, answers: &answersQ38, answersTemp: &answersQ38Temp, answersCopy: &answersQ38Copy)
                                        } else if qNum == 39 {
                                            generateElseIfStatements(questionNumber: 39, answers: &answersQ39, answersTemp: &answersQ39Temp, answersCopy: &answersQ39Copy)
                                        } else if qNum == 40 {
                                            generateElseIfStatements(questionNumber: 40, answers: &answersQ40, answersTemp: &answersQ40Temp, answersCopy: &answersQ40Copy)
                                        } else if qNum == 41 {
                                            generateElseIfStatements(questionNumber: 41, answers: &answersQ41, answersTemp: &answersQ41Temp, answersCopy: &answersQ41Copy)
                                        } else if qNum == 42 {
                                            generateElseIfStatements(questionNumber: 42, answers: &answersQ42, answersTemp: &answersQ42Temp, answersCopy: &answersQ42Copy)
                                        } else if qNum == 43 {
                                            generateElseIfStatements(questionNumber: 43, answers: &answersQ43, answersTemp: &answersQ43Temp, answersCopy: &answersQ43Copy)
                                        } else if qNum == 44 {
                                            generateElseIfStatements(questionNumber: 44, answers: &answersQ44, answersTemp: &answersQ44Temp, answersCopy: &answersQ44Copy)
                                        } else if qNum == 45 {
                                            generateElseIfStatements(questionNumber: 45, answers: &answersQ45, answersTemp: &answersQ45Temp, answersCopy: &answersQ45Copy)
                                        } else if qNum == 46 {
                                            generateElseIfStatements(questionNumber: 46, answers: &answersQ46, answersTemp: &answersQ46Temp, answersCopy: &answersQ46Copy)
                                        } else if qNum == 47 {
                                            
                                            generateElseIfStatements(questionNumber: 47, answers: &answersQ47, answersTemp: &answersQ47Temp, answersCopy: &answersQ47Copy)
                                        } else if qNum == 48 {
                                            generateElseIfStatements(questionNumber: 48, answers: &answersQ48, answersTemp: &answersQ48Temp, answersCopy: &answersQ48Copy)
                                        }else if qNum == 49 {
                                            generateElseIfStatements(questionNumber: 49, answers: &answersQ49, answersTemp: &answersQ49Temp, answersCopy: &answersQ49Copy)
                                        }
                                        
                                    }
                                    .transition(.move(edge: .trailing))
                                    .zIndex(6)
                                } else {
                                    
                                    HStack(alignment: .center, spacing: 20) {
                                        
                                        Spacer()
                                        
                                        VStack(spacing: 10) {
                                            
                                            Spacer()
                                            VStack {
                                                Text("\(question5)")
                                                    .font(.custom("GillSans-Semibold", fixedSize: 27))
                                                    .multilineTextAlignment(.center)
                                            }
                                            .frame(maxWidth: .infinity)
                                            
                                            Spacer()
                                            Button("\(answer1)") {
                                                if index1 == 0 {
                                                    correct1 = true
                                                    correct1String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 4 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct2String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 4 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct1 ? "000000" : "FFFFFF"))
                                            .background(Color(correct1 ? "A6FF91" : "red"))
                                            .cornerRadius(30)
                                            .shadow(color: correct1 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer2)") {
                                                if index2 == 0 {
                                                    correct2 = true
                                                    correct2String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 4 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct2String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 4 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct2 ? "000000" : "FFFFFF"))
                                            .background(Color(correct2 ? "A6FF91" : "darkYellow"))
                                            .cornerRadius(30)
                                            .shadow(color: correct2 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer3)") {
                                                if index3 == 0 {
                                                    correct3 = true
                                                    correct3String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 4 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct3String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 4 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct3 ? "000000" : "FFFFFF"))
                                            .background(Color(correct3 ? "A6FF91" : "green"))
                                            .cornerRadius(30)
                                            .shadow(color: correct3 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            Button("\(answer4)") {
                                                if index4 == 0 {
                                                    correct4 = true
                                                    correct4String = "true"
                                                    correct = true
                                                    wrong = false
                                                    if qsAnswered == 4 {
                                                        correctCount += 1
                                                        qsAnswered += 1
                                                    }
                                                } else {
                                                    correct1 = false
                                                    correct2 = false
                                                    correct3 = false
                                                    correct4 = false
                                                    correct4String = "false"
                                                    correct = false
                                                    wrong = true
                                                    if qsAnswered == 4 {
                                                        qsAnswered += 1
                                                    }
                                                }
                                                print("\(correctCount)/\(qsAnswered)")
                                            }
                                            .frame(width: UIScreen.main.bounds.width * 3/4)
                                            .font(.custom("GillSans", fixedSize: 22.5))
                                            
                                            .padding(.all, 10.0)
                                            .foregroundColor(Color(correct4 ? "000000" : "FFFFFF"))
                                            .background(Color(correct4 ? "A6FF91" : "blue"))
                                            .cornerRadius(30)
                                            .shadow(color: correct4 ? Color("A2A4A4") : Color("FFFFFF"), radius: 10, x: 0, y: 5)
                                            
                                            if correct == true {
                                                Spacer()
                                                Text("\(correctFeedback[Int.random(in: 0..<correctFeedback.count)])")
                                                    .font(.custom("GillSans-Bold", fixedSize: correct ? 22.5 : 0))
                                                    .multilineTextAlignment(.center)
                                                    .opacity(correct ? 1 : 0)
                                                    .foregroundColor(Color("149600"))
                                                HStack {
                                                    Spacer()
                                                    NavigationLink(destination: Tips()) {
                                                        Text("\(correctCount)/\(qsAnswered) Correct")
                                                            .font(.custom("GillSans-Bold", fixedSize: 20))
                                                            .foregroundColor(Color("000000"))
                                                        Spacer()
                                                        Text("Tips")
                                                            .font(.custom("GillSans-Bold", fixedSize: 20))
                                                            .foregroundColor(Color("007FFF"))
                                                        Text("➔")
                                                            .font(.custom("GillSans", fixedSize: 30))
                                                            .foregroundColor(Color("007FFF"))
                                                    }
                                                }
                                            } else if wrong == true {
                                                
                                                Spacer()
                                                Text("\(wrongFeedback[Int.random(in: 0..<wrongFeedback.count)])")
                                                    .font(.custom("GillSans-Bold", fixedSize: wrong ? 22.5 : 0))
                                                    .multilineTextAlignment(.center)
                                                    .opacity(wrong ? 1 : 0)
                                                    .foregroundColor(Color("red"))
                                            }
                                            
                                        }
                                        .padding()
                                        .background(Color("lightYellow"))
                                        .cornerRadius(30)
                                        .shadow(color: Color("darkGray"), radius: 10, x: 0, y: 5)
                                        .frame(width: UIScreen.main.bounds.width * 7/8, height: UIScreen.main.bounds.height * 17/24)
                                        
                                        Spacer()
                                    }
                                    .frame(width: 400)
                                    .task {
                                        
                                        correct1 = false
                                        correct2 = false
                                        correct3 = false
                                        correct4 = false
                                        correct = false
                                        wrong = false
                                        correct1String = ""
                                        correct2String = ""
                                        correct3String = ""
                                        correct4String = ""
                                        qNum = 0
                                        aNum = 0
                                        answer1 = ""
                                        answer2 = ""
                                        answer3 = ""
                                        answer4 = ""
                                        question5 = ""
                                        qNum = Int.random(in: 0..<questions.count)
                                        aNum = Int.random(in: 0..<4)
                                        while questions[qNum] == "" {
                                            qNum = Int.random(in: 0..<questions.count)
                                        }
                                        question5 = questions[qNum]
                                        questionsTemp.append(question5)
                                        questions[qNum] = ""
                                        func generateElseIfStatements(questionNumber: Int, answers: inout [String], answersTemp: inout [String], answersCopy: inout [String]) {
                                            answer1 = answers[aNum]
                                            answersTemp.append(answer1)
                                            answers.remove(at: aNum)
                                            index1 = answersCopy.firstIndex(of: answer1)!
                                            aNum = Int.random(in: 0..<answers.count)
                                            answer2 = answers[aNum]
                                            answersTemp.append(answer2)
                                            answers.remove(at: aNum)
                                            index2 = answersCopy.firstIndex(of: answer2)!
                                            aNum = Int.random(in: 0..<answers.count)
                                            answer3 = answers[aNum]
                                            answersTemp.append(answer3)
                                            answers.remove(at: aNum)
                                            index3 = answersCopy.firstIndex(of: answer3)!
                                            aNum = Int.random(in: 0..<answers.count)
                                            answer4 = answers[aNum]
                                            answersTemp.append(answer4)
                                            answers.remove(at: aNum)
                                            index4 = answersCopy.firstIndex(of: answer4)!
                                        }
                                        if qNum == 0 {
                                            answer1 = answersQ0[aNum]
                                            answersQ0Temp.append(answer1)
                                            answersQ0.remove(at: aNum)
                                            index1 = answersQ0Copy.firstIndex(of: answer1)!
                                            aNum = Int.random(in: 0..<answersQ0.count)
                                            answer2 = answersQ0[aNum]
                                            answersQ0Temp.append(answer2)
                                            answersQ0.remove(at: aNum)
                                            index2 = answersQ0Copy.firstIndex(of: answer2)!
                                            aNum = Int.random(in: 0..<answersQ0.count)
                                            answer3 = answersQ0[aNum]
                                            answersQ0Temp.append(answer3)
                                            answersQ0.remove(at: aNum)
                                            index3 = answersQ0Copy.firstIndex(of: answer3)!
                                            aNum = Int.random(in: 0..<answersQ0.count)
                                            answer4 = answersQ0[aNum]
                                            answersQ0Temp.append(answer4)
                                            answersQ0.remove(at: aNum)
                                            index4 = answersQ0Copy.firstIndex(of: answer4)!
                                        } else if qNum == 1 {
                                            
                                            generateElseIfStatements(questionNumber: 1, answers: &answersQ1, answersTemp: &answersQ1Temp, answersCopy: &answersQ1Copy)
                                        } else if qNum == 2 {
                                            
                                            generateElseIfStatements(questionNumber: 2, answers: &answersQ2, answersTemp: &answersQ2Temp, answersCopy: &answersQ2Copy)
                                        } else if qNum == 3 {
                                            
                                            generateElseIfStatements(questionNumber: 3, answers: &answersQ3, answersTemp: &answersQ3Temp, answersCopy: &answersQ47Copy)
                                        } else if qNum == 4 {
                                            
                                            generateElseIfStatements(questionNumber: 4, answers: &answersQ4, answersTemp: &answersQ4Temp, answersCopy: &answersQ4Copy)
                                        } else if qNum == 5 {
                                            
                                            generateElseIfStatements(questionNumber: 5, answers: &answersQ5, answersTemp: &answersQ5Temp, answersCopy: &answersQ5Copy)
                                        } else if qNum == 6 {
                                            
                                            generateElseIfStatements(questionNumber: 6, answers: &answersQ6, answersTemp: &answersQ6Temp, answersCopy: &answersQ6Copy)
                                        } else if qNum == 7 {
                                            
                                            generateElseIfStatements(questionNumber: 7, answers: &answersQ7, answersTemp: &answersQ7Temp, answersCopy: &answersQ7Copy)
                                        } else if qNum == 8 {
                                            
                                            generateElseIfStatements(questionNumber: 8, answers: &answersQ8, answersTemp: &answersQ8Temp, answersCopy: &answersQ8Copy)
                                        } else if qNum == 9 {
                                            
                                            generateElseIfStatements(questionNumber: 9, answers: &answersQ9, answersTemp: &answersQ9Temp, answersCopy: &answersQ9Copy)
                                        } else if qNum == 10 {
                                            
                                            generateElseIfStatements(questionNumber: 10, answers: &answersQ10, answersTemp: &answersQ10Temp, answersCopy: &answersQ10Copy)
                                        } else if qNum == 11 {
                                            
                                            generateElseIfStatements(questionNumber: 11, answers: &answersQ11, answersTemp: &answersQ11Temp, answersCopy: &answersQ11Copy)
                                        } else if qNum == 12 {
                                            
                                            generateElseIfStatements(questionNumber: 12, answers: &answersQ12, answersTemp: &answersQ12Temp, answersCopy: &answersQ12Copy)
                                        } else if qNum == 13 {
                                            
                                            generateElseIfStatements(questionNumber: 13, answers: &answersQ13, answersTemp: &answersQ13Temp, answersCopy: &answersQ13Copy)
                                        } else if qNum == 14 {
                                            
                                            generateElseIfStatements(questionNumber: 14, answers: &answersQ14, answersTemp: &answersQ14Temp, answersCopy: &answersQ14Copy)
                                        } else if qNum == 15 {
                                            
                                            generateElseIfStatements(questionNumber: 15, answers: &answersQ15, answersTemp: &answersQ15Temp, answersCopy: &answersQ15Copy)
                                        } else if qNum == 16 {
                                            
                                            generateElseIfStatements(questionNumber: 16, answers: &answersQ16, answersTemp: &answersQ16Temp, answersCopy: &answersQ16Copy)
                                        } else if qNum == 17 {
                                            
                                            generateElseIfStatements(questionNumber: 17, answers: &answersQ17, answersTemp: &answersQ17Temp, answersCopy: &answersQ17Copy)
                                        } else if qNum == 18 {
                                            
                                            generateElseIfStatements(questionNumber: 18, answers: &answersQ18, answersTemp: &answersQ18Temp, answersCopy: &answersQ18Copy)
                                        } else if qNum == 19 {
                                            
                                            generateElseIfStatements(questionNumber: 19, answers: &answersQ19, answersTemp: &answersQ19Temp, answersCopy: &answersQ19Copy)
                                        } else if qNum == 20 {
                                            
                                            generateElseIfStatements(questionNumber: 20, answers: &answersQ20, answersTemp: &answersQ20Temp, answersCopy: &answersQ20Copy)
                                        } else if qNum == 21 {
                                            
                                            generateElseIfStatements(questionNumber: 21, answers: &answersQ21, answersTemp: &answersQ21Temp, answersCopy: &answersQ21Copy)
                                        } else if qNum == 22 {
                                            
                                            generateElseIfStatements(questionNumber: 22, answers: &answersQ22, answersTemp: &answersQ22Temp, answersCopy: &answersQ22Copy)
                                        } else if qNum == 23 {
                                            
                                            generateElseIfStatements(questionNumber: 23, answers: &answersQ23, answersTemp: &answersQ23Temp, answersCopy: &answersQ23Copy)
                                        } else if qNum == 24 {
                                            
                                            generateElseIfStatements(questionNumber: 24, answers: &answersQ24, answersTemp: &answersQ24Temp, answersCopy: &answersQ24Copy)
                                        } else if qNum == 25 {
                                            
                                            generateElseIfStatements(questionNumber: 25, answers: &answersQ25, answersTemp: &answersQ25Temp, answersCopy: &answersQ25Copy)
                                        } else if qNum == 26 {
                                            
                                            generateElseIfStatements(questionNumber: 26, answers: &answersQ26, answersTemp: &answersQ26Temp, answersCopy: &answersQ26Copy)
                                        }
                                        else if qNum == 27 {
                                            
                                            generateElseIfStatements(questionNumber: 27, answers: &answersQ27, answersTemp: &answersQ27Temp, answersCopy: &answersQ27Copy)
                                        } else if qNum == 28 {
                                            
                                            generateElseIfStatements(questionNumber: 28, answers: &answersQ28, answersTemp: &answersQ28Temp, answersCopy: &answersQ28Copy)
                                        } else if qNum == 29 {
                                            
                                            generateElseIfStatements(questionNumber: 29, answers: &answersQ29, answersTemp: &answersQ29Temp, answersCopy: &answersQ29Copy)
                                        } else if qNum == 30 {
                                            
                                            generateElseIfStatements(questionNumber: 30, answers: &answersQ30, answersTemp: &answersQ30Temp, answersCopy: &answersQ30Copy)
                                        } else if qNum == 31 {
                                            generateElseIfStatements(questionNumber: 31, answers: &answersQ31, answersTemp: &answersQ31Temp, answersCopy: &answersQ31Copy)
                                        } else if qNum == 32 {
                                            generateElseIfStatements(questionNumber: 32, answers: &answersQ32, answersTemp: &answersQ32Temp, answersCopy: &answersQ32Copy)
                                        } else if qNum == 33 {
                                            generateElseIfStatements(questionNumber: 33, answers: &answersQ33, answersTemp: &answersQ33Temp, answersCopy: &answersQ33Copy)
                                        } else if qNum == 34 {
                                            generateElseIfStatements(questionNumber: 34, answers: &answersQ34, answersTemp: &answersQ34Temp, answersCopy: &answersQ34Copy)
                                        } else if qNum == 35 {
                                            generateElseIfStatements(questionNumber: 35, answers: &answersQ35, answersTemp: &answersQ35Temp, answersCopy: &answersQ35Copy)
                                        } else if qNum == 36 {
                                            generateElseIfStatements(questionNumber: 36, answers: &answersQ36, answersTemp: &answersQ36Temp, answersCopy: &answersQ36Copy)
                                        } else if qNum == 37 {
                                            generateElseIfStatements(questionNumber: 37, answers: &answersQ37, answersTemp: &answersQ37Temp, answersCopy: &answersQ37Copy)
                                        } else if qNum == 38 {
                                            generateElseIfStatements(questionNumber: 38, answers: &answersQ38, answersTemp: &answersQ38Temp, answersCopy: &answersQ38Copy)
                                        } else if qNum == 39 {
                                            generateElseIfStatements(questionNumber: 39, answers: &answersQ39, answersTemp: &answersQ39Temp, answersCopy: &answersQ39Copy)
                                        } else if qNum == 40 {
                                            generateElseIfStatements(questionNumber: 40, answers: &answersQ40, answersTemp: &answersQ40Temp, answersCopy: &answersQ40Copy)
                                        } else if qNum == 41 {
                                            generateElseIfStatements(questionNumber: 41, answers: &answersQ41, answersTemp: &answersQ41Temp, answersCopy: &answersQ41Copy)
                                        } else if qNum == 42 {
                                            generateElseIfStatements(questionNumber: 42, answers: &answersQ42, answersTemp: &answersQ42Temp, answersCopy: &answersQ42Copy)
                                        } else if qNum == 43 {
                                            generateElseIfStatements(questionNumber: 43, answers: &answersQ43, answersTemp: &answersQ43Temp, answersCopy: &answersQ43Copy)
                                        } else if qNum == 44 {
                                            generateElseIfStatements(questionNumber: 44, answers: &answersQ44, answersTemp: &answersQ44Temp, answersCopy: &answersQ44Copy)
                                        } else if qNum == 45 {
                                            generateElseIfStatements(questionNumber: 45, answers: &answersQ45, answersTemp: &answersQ45Temp, answersCopy: &answersQ45Copy)
                                        } else if qNum == 46 {
                                            generateElseIfStatements(questionNumber: 46, answers: &answersQ46, answersTemp: &answersQ46Temp, answersCopy: &answersQ46Copy)
                                        } else if qNum == 47 {
                                            
                                            generateElseIfStatements(questionNumber: 47, answers: &answersQ47, answersTemp: &answersQ47Temp, answersCopy: &answersQ47Copy)
                                        } else if qNum == 48 {
                                            generateElseIfStatements(questionNumber: 48, answers: &answersQ48, answersTemp: &answersQ48Temp, answersCopy: &answersQ48Copy)
                                        }else if qNum == 49 {
                                            generateElseIfStatements(questionNumber: 49, answers: &answersQ49, answersTemp: &answersQ49Temp, answersCopy: &answersQ49Copy)
                                        }
                                        
                                    }
                                    .transition(.move(edge: .trailing))
                                    .zIndex(4)
                                }
                            }
                        }
                    }
                    
                    
                }
                .navigationBarBackButtonHidden(true)
            }
        }
}

struct _Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
