//
//  TipsBudget.swift
//  iBudget
//
//  Created by Adriana Zambrano on 6/14/23.
//

import SwiftUI

struct TipsBudget: View {
    var body: some View {
        
        ScrollView {
            
            ZStack {
                
                Color("mediumYellow")
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {
                    
                    Group {
                        
                        Text("Budgeting")
                            .font(.custom("GillSans-Bold", fixedSize: 40))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Budgeting is a fundamental tool that empowers individuals to take control of their spending, saving, and investing habits. By following simple yet effective guidelines, you can achieve financial stability and make informed decisions about your money. In this article, we will explore the basics of budgeting, including recommended rules, tracking income and expenses, and the importance of savings. Let's embark on the journey towards financial empowerment.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        
                        Text("Guiding Your Financial Choices")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Budgeting enables you to exercise control over your financial resources and make intentional decisions about how you allocate your income. One commonly recommended rule is the 50-20-30 guideline, which suggests dividing your income as follows: 50% for needs (essential expenses), 20% for savings, and 30% for wants (discretionary spending). This rule serves as a useful framework for balancing your financial priorities.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        Text("Recording Income Sources")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("To build an effective budget, it is essential to track your various sources of income. This includes documenting regular paychecks, income from investments, and any additional earnings from side jobs or projects. Keeping a record of your income sources provides a clear picture of your financial inflows and helps guide your budgeting decisions.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        Text("Tracking Expenses")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Accurate expense tracking is a vital component of successful budgeting. Start by recording your purchases and categorizing them into fixed expenses and discretionary spending. Fixed expenses consist of mandatory purchases that remain relatively constant, such as rent or mortgage payments, loan payments, and utilities. Discretionary spending covers extra purchases that fall into the realm of wants, such as dining out, shopping, travel, and other non-essential expenses. Utilize bank and credit card statements to assist you in accurately tracking your expenses.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        Text("Prioritizing Savings")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Budgeting allows you to allocate a portion of your income towards savings. Record the money you are saving, whether it is kept as cash, deposited into a savings account, invested, or directed towards retirement funds. Prioritizing regular savings contributions helps build a safety net and enables you to work towards your financial goals with confidence.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        Text("Calculating Your Balance")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("A critical aspect of budgeting is calculating your financial balance. By subtracting your total expenses from your income, you arrive at a clear figure that indicates your financial surplus or shortfall. This balance serves as a valuable tool to identify unnecessary expenses, adjust your budgeting priorities, and make informed financial decisions.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                        Text("Budgeting is the cornerstone of financial management, providing the foundation for controlling your spending, saving, and investing habits. By following simple guidelines like the 50-20-30 rule, tracking your income and expenses, prioritizing savings, and calculating your financial balance, you gain the knowledge and insights needed to make wise financial choices. Embrace the power of budgeting, and embark on a journey toward financial well-being and peace of mind. Remember, by taking control of your finances today, you shape a prosperous tomorrow.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    HStack {
                        
                        NavigationLink(destination: TipsCards()) {
                            
                            //                                            Button {
                            //                                                dismiss()
                            
                            //                                            } label: {
                            Image(systemName: "arrowshape.turn.up.backward.fill")
                                .frame(width: 60, height: 60)
//                                .resizable(resizingMode: .stretch)
//                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("black"))
                                .padding(.vertical, 10)
                            //                                            }
                            
                        }
                        
                        NavigationLink(destination: TipsCards()) {
                            Text("Back")
                                .font(.custom("GillSans-Bold", fixedSize: 25))
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 10)
                                .foregroundColor(Color("black"))
                            
                        }
                        
                        Spacer()
//                        
//                        
//                        NavigationLink(destination: Tips()) {
//                            
//                            Image(systemName: "lightbulb.fill")
//                                .frame(width: 60, height: 60)
////                                .resizable(resizingMode: .stretch)
////                                .aspectRatio(contentMode: .fit)
//                                .foregroundColor(Color("darkYellow"))
//                                .padding(.top, 10)
//                            
//                        }
//                        
//                        Spacer()
                        
                        NavigationLink(destination: TipsInvest()) {
                            Text("Next")
                                .font(.custom("GillSans-Bold", fixedSize: 25))
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 10)
                                .foregroundColor(Color("black"))
                            
                        }
                        
                        NavigationLink(destination: TipsInvest()) {
                            
                            //                                            Button {
                            //                                                dismiss()
                            
                            //                                            } label: {
                            Image(systemName: "arrowshape.turn.up.forward.fill")
                                .frame(width: 60, height: 60)
//                                .resizable(resizingMode: .stretch)
//                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color("black"))
                                .padding(.vertical, 10)
                            //                                            }
                            
                        }
                        
                    }
                    
                    
//                                        Text("")
//                                            .font(.custom("GillSans-Bold", fixedSize: 30))
//                                            .multilineTextAlignment(.center)
//                                            .padding(30)
                    
//                                        Text("")
//                                            .font(.custom("GillSans", fixedSize: 25))
//                                            .multilineTextAlignment(.center)
//                                            .padding(.horizontal, 10)
//                                            .padding(.bottom, 30)
                    
                    /*
                     
                     FUNDAMENTALS (Notes)
                     - Useful to know how to manage money to prevent unnecessary debt
                     - Many people, especially teenagers and young adults, don't fully understand basics of personal financial literacy
                     - Financial literacy: Life skill/ability to understand/make use of financial skills
                     - Helps you spend less income, create emergency fund, open retirement account, become more self-sufficient/financially independent
                     - Personal finance: individual finance decision-making, making/meeting financial goals, banking, budgeting, handling debt/credit, investing
                     - Main tips:
                        1. Understand fundamentals of finance to recognize opportunities and avoide financial issues
                        2. Start saving part of your money, and eventually, it will amount to a decent sum of money
                        3. Minimize all unnecessary debt by being cautious with spending your money
                        4. Reduce the amount of taxes you pay by claiming some of your deductions as a self-employed individual, starting a non-profit organization, investing in opportunity zones or opportunity funds, or opening an IRA, 401K, or both
                        5. Invest your money in stable and profitable assets
                        6. Borrow money strategically by using it to gain more profitable assets
                     
                     BANK ACCOUNTS (Notes)
                     - Safer than holding cash, protected, harder to steal, always have access to cash
                     - Allow you to use debit/credit card, payment apps, checks, ATM, money to buy/rent home, paycheck, interest on money
                     - Brick-and-mortar banks: located in buildings, many allow you to open/manage account online
                     - Online banks: completely online, no physical building, same services except not in person
                     - Retail banks: most common, for-profit companies, offer checking/savings accounts, loans, credit cards, insurance, some brick-and-mortar, some online, some both, many ATMs
                     - Credit unions: offer savings/checking accounts, loans, other financial products, not-for-profit organizations, lower fees/better interest rates for savings accounts/loans, personalized customer service, less ATMs
                     - Savings account: interest-bearing deposit account, pay low interest rate, safe/reliable, good for saving cash for short-term needs, limits on frequency for withdrawing money, flexible, good for emergency funds, saving for short-term goals, storing extra cash
                     - Checking account: deposit account, allow deposits/withdrawals, allow many withdrawals per month, earn little to no interest, deposit at ATMs/electronic transfers, withdraw at banks/ATMs/checks/debit cards, some have no fees, some monthly/overdrafts fees
                     - High-yield savings account: pays much higher interest, require bigger initial deposits, larger minimum balances, higher fees, online banks usually have higher interest
                     -Emergency fund: source of cash saved for fiancial hardships, job losses, medical bills, car repairs, use separate savings account, should have enough to cover 3-6 months of expenses, off-limits for paying regular expenses
                     
                     CREDIT VS. DEBIT (Notes)
                     - Credit cards: let you borrow money from issuer, pay back over time, don't pull cash from bank account, charged interest on remaining balance for every month money isn't payed in full, useful for large/unexpected expenses, debt can build quickly, difficult to pay off, responsible use/paying on time establishes credit history/good credit rating, qualify for best credit cards, get favorable interest rates on loans/mortages
                     - Charge cards: special credit cards, require full balance payed each month, less common
                     - Debit cards: take money directly from checking account, can't borrow money, can't spend more cash than you have in bank, don't help build credit history/rating
                     - APR: annual percentage rate, amount of interest owed to credit card issuer on unpaid balances, important when applying for credit card, can be very expensive when large balances are carried for extended periods of time, vary by type of credit card, increases with bad credit
                     - Credit scores can help determine which credit is best for you, impacts chances of getting approved, decide on credit cards based on perks
                     - Secured credit card/subprime credit card: if new to credit cards or bad credit, paying on time with these help raise credit score
                     - Travel rewards cards: if traveler, offer points for travel for money spent
                     - Cash-back cards: if non-traveler, receive small portion of money spent every month in cash/credit
                     - Balance transfer cards: if high interest rates on other cards, lower rates, help save money, pay off balances, improve credit score
                     - Low/No-APR cards: if often carry unpaid balance, help save a lot of money in interest payments
                     
                     BUDGETING (Notes)
                     - Tracker feature helps start budget
                     - Control spending/saving/investing
                     - Recommended rule: 50% needs, 20% savings, 30% wants
                     - Income: record money sources, paychecks, investments, side jobs/projects
                     - Expenses: record purchases, fixed expenses, discretionary spending, bank/credit card statements
                     - Fixed expenses: mandatory purchases, don't change much, rent/mortage payments, loan payments, utilities
                     - Discretionary spending: extra purchases, restaurant meals, shopping, clothes, travel, wants
                     - Savings: record money savable money, cash, savings account, investment, retirement
                     - Subtract expenses from income, result is balance, help identify unnecessary expenses
                     
                     INVESTMENTS (Notes)
                     - Invest savings wisely to try to make extra money
                     - Stock market/exchange: collections of markets/exchanges for buying/selling/trading stocks and financial securities
                     - Brocker: professional/platform that handles transactions, needed for buying stocks
                     - Full-service broker: charges fee for managing investments transactions/providing advice
                     - Online/discount broker: charges services based on amount of money invested
                     - Robo-advisor: trades/picks investments with little humans assistance
                     - Investments depend on how much money you have available and how much money you're willing to risk, have diverse portfolio/collection of investments
                     - Stock/shares/equity: partial ownership of company, gives you portion of company's assets/earnings, can vote in shareholder meetings, can sell shares to other people, prices fluctuate throughout day, depend on many factors, riskiest
                     - Exchange-traded fund/ETF: collection of securities like stocks, lets you purchase variety of stocks at once with one purchase, like mutual funds, both offer instant diversification and are professionally managed, listed on exchanges, trade throughout day like stocks, less risky than invidual stocks because of diversified securities
                     - Mutual funds: portfolio of securities, give investors access to diversified/professionally managed portfolios, low price, purchases are only at end of each trading day, less risky than stocks, charge annual fees/expense ratios/commisions
                     - Bonds: issued by companies/municipalities/states/govts, finance projects/operations, lend money to bond issuer, promises repayment and interest/coupon rate, fixed income because usually have fixed interest for investors, rates up, bonds fall, vice versa, maturity dates/time when bond must be returned to investor or investor will go bankrupt/risk default, high-rated/investment grade bonds are safer/stable, issuer is likely to pay bond, pay lower interest, safest, backed by US govt, inflation may decrease value of bond over time
                     
                     */
                    
                    
                    //                                    NavigationLink(destination: Quiz()) {
                    //
                    //                                        Button{} label: {
                    //
                    //                                            Text("Practice Quiz")
                    //                                                .foregroundColor(Color("white"))
                    //                                                .font(.custom("GillSans-Bold", fixedSize: 30))
                    //
                    //                                        }
                    //                                        .padding(.horizontal, 30)
                    //                                        .padding(.vertical, 15)
                    //                                        .background(Color("darkYellow"))
                    //                                        .clipShape(Capsule())
                    //
                    // }
//
//                                        Spacer()
                    
                }
                .padding(.horizontal, 20)
                
            }
//            .toolbar {
//
////                ToolbarItemGroup(placement: .status) {
//
//                    ToolbarItem(placement: .bottomBar) {
//
//                        NavigationLink(destination: Tips()) {
//
//                            //                                            Button {
//                            //                                                dismiss()
//
//                            //                                            } label: {
//                            Image(systemName: "arrowshape.turn.up.backward.fill")
//                                .resizable(resizingMode: .stretch)
//                                .aspectRatio(contentMode: .fit)
//                                .foregroundColor(Color("black"))
//                                .padding(.vertical, 10)
//                            //                                            }
//
//                        }
//                        //                    .padding(.left, 10)
//
//
//                    }
//
//                    ToolbarItem(placement: .bottomBar) {
//
//                        NavigationLink(destination: Tips()) {
//                            Text("Back")
//                                .font(.custom("GillSans-Bold", fixedSize: 25))
//                                .multilineTextAlignment(.center)
//                                .padding(.vertical, 10)
//                                .foregroundColor(Color("black"))
//
//                        }
//
//                    }
//
//                    ToolbarItem(placement: .bottomBar) {
//
//                        Spacer()
//
//                        NavigationLink(destination: Tips()) {
//
//                            Image(systemName: "lightbulb.fill")
//                                .foregroundColor(Color("darkYellow"))
//                                .padding(.top, 10)
//
//                        }
//
//                        Spacer()
//
//                    }
//
//                    ToolbarItem(placement: .bottomBar) {
//
//                        NavigationLink(destination: TipsBanks()) {
//                            Text("Next")
//                                .font(.custom("GillSans-Bold", fixedSize: 25))
//                                .multilineTextAlignment(.center)
//                                .padding(.vertical, 10)
//                                .foregroundColor(Color("black"))
//
//                        }
//
//                    }
//
//                    ToolbarItem(placement: .bottomBar) {
//
//                        NavigationLink(destination: TipsBanks()) {
//
//                            //                                            Button {
//                            //                                                dismiss()
//
//                            //                                            } label: {
//                            Image(systemName: "arrowshape.turn.up.forward.fill")
//                                .resizable(resizingMode: .stretch)
//                                .aspectRatio(contentMode: .fit)
//                                .foregroundColor(Color("black"))
//                                .padding(.vertical, 10)
//                            //                                            }
//
//                        }
//
//
//                    }
////                }
//
//            }
//            .toolbarBackground(Color("mediumYellow"), for: .navigationBar)

        }
        .scrollIndicators(.visible)
        .navigationBarBackButtonHidden(true)
        .background(Color("mediumYellow"))
        
    }
}

struct TipsBudget_Previews: PreviewProvider {
    static var previews: some View {
        TipsBudget()
    }
}
