//
//  TipsInvest.swift
//  iBudget
//
//  Created by Adriana Zambrano on 6/14/23.
//

import SwiftUI

struct TipsInvest: View {
    var body: some View {
        
        ScrollView {
            
            ZStack {
                
                Color("mediumYellow")
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {
                    
                    Group {
                        
                        Text("Investments")
                            .font(.custom("GillSans-Bold", fixedSize: 40))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Investing your savings wisely can provide an opportunity to grow your wealth and potentially earn extra income. In this article, we will explore the fundamentals of investing, including key investment options and concepts. Whether you're new to investing or looking to expand your knowledge, understanding these basics will help you make informed decisions about your financial future.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        
                        Text("Stock Market")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("The stock market, also known as the stock exchange, is a collection of markets and exchanges where stocks and financial securities are bought, sold, and traded. To participate in the stock market, you will need the assistance of a broker, either in the form of a professional or an online platform.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        
                        Text("Brokers")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("There are different types of brokers available to facilitate your investment transactions. Full-service brokers charge fees for managing investments and providing advice. Online or discount brokers, on the other hand, charge fees based on the amount of money invested. Another option is a robo-advisor, which uses algorithms to make investment decisions with minimal human intervention.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        
                        Text("Diversifying Your Portfolio")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Investments depend on the amount of money you have available and your risk tolerance. It is advisable to build a diverse portfolio, which means investing in a collection of different types of investments. Diversification helps spread the risk and potentially increase the chances of returns.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        
                        Text("Stocks")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Stocks, also referred to as shares or equity, represent partial ownership in a company. Owning stocks grants you a portion of the company's assets and earnings. As a shareholder, you may have the right to vote in shareholder meetings. Stocks can be bought and sold to other investors, and their prices fluctuate throughout the trading day. Investing in individual stocks carries higher risk compared to other investment options.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        
                        Text("Exchange-Traded Funds (ETFs)")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Exchange-Traded Funds (ETFs) are collections of securities, such as stocks, that allow you to purchase a variety of stocks with one investment. Similar to mutual funds, ETFs offer instant diversification and are professionally managed. ETFs are listed on exchanges and can be traded throughout the trading day. They are considered less risky than individual stocks due to their diversified nature.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        
                        Text("Mutual Funds")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Mutual funds pool money from multiple investors to create a portfolio of securities. They provide access to diversified and professionally managed portfolios. Unlike stocks and ETFs, mutual fund purchases are only executed at the end of each trading day. While they carry less risk than individual stocks, mutual funds charge annual fees, expense ratios, and commissions.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    Group {
                        
                        Text("Bonds")
                            .font(.custom("GillSans-Bold", fixedSize: 30))
                            .multilineTextAlignment(.center)
                            .padding(30)
                        
                        Text("Bonds are debt instruments issued by companies, municipalities, states, or governments to finance projects or operations. When you invest in bonds, you are lending money to the bond issuer in exchange for repayment with interest, known as the coupon rate. Bonds offer fixed income because they usually have a fixed interest rate for investors. Bond prices fluctuate inversely with interest rates. Higher-rated or investment-grade bonds are considered safer and more stable. Government-backed bonds, such as U.S. Treasury bonds, are the safest. However, it's important to note that inflation may decrease the value of a bond over time.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                        Text("Investing is a journey that requires understanding and careful decision-making. By grasping the basics of the stock market, types of brokers, diversification, and investment options such as stocks, ETFs, mutual funds, and bonds, you can make more informed choices about growing your wealth. Remember, investing involves risks, and it's crucial to assess your financial goals and risk tolerance before making any investment decisions. Seek advice from financial professionals when necessary and continue to expand your knowledge to navigate the ever-changing landscape of investing.")
                            .font(.custom("GillSans", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .padding(.bottom, 30)
                        
                    }
                    
                    HStack {
                        
                        NavigationLink(destination: TipsBudget()) {
                            
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
                        
                        NavigationLink(destination: TipsBudget()) {
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
                        
                        NavigationLink(destination: Quiz()) {
                            Text("Quiz")
                                .font(.custom("GillSans-Bold", fixedSize: 25))
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 10)
                                .foregroundColor(Color("black"))
                            
                        }
                        
                        NavigationLink(destination: Quiz()) {
                            
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
        .scrollIndicators(.hidden)
        .navigationBarBackButtonHidden(true)
        .background(Color("mediumYellow"))
        
    }
}

struct TipsInvest_Previews: PreviewProvider {
    static var previews: some View {
        TipsInvest()
    }
}
