import SwiftUI

struct ContentView: View {
    @State private var showContentView3 = false


    var body: some View {
        
       // var qw: Int = i;
     
           // /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
        
            NavigationView {
                VStack {
                    Button("Start") {
                        showContentView3 = true
                    }
                }
                .padding()
                .navigationBarHidden(showContentView3)
                .background(
                    NavigationLink(
                        destination: ContentView3(),
                        isActive: $showContentView3,
                        label: { EmptyView() }
                    )
                    .hidden()
                )}
            
        }
        
    }


struct ContentView3: View {
    @State private var i=0
    @State private var z = 0
    @State private var q = 0
    @State private var showContentView2 = false
    
    var x = ["1.นอนไม่หลับเพราะคิดมากหรือกังวลใจ", "2.สึกหงุดหงิด รำคาญใจ", "3.ทำอะไรไม่ได้เลยเพราะประสาทตึงเครียด", "4.มีความวุ่นวายใจ", "5.ไม่อยากพบปะผู้คน", "6.ปวดหัวข้างเดียวหรือปวดบริเวณขมับทั้ง 2 ข้าง", "7.รู้สึกไม่มีความสุขและเศร้าหมอง", "8.รู้สึกหมดหวังในชีวิต", "9.รู้สึกว่าตนเองไม่มีคุณค่า", "10.กระวนกระวายอยู่ตลอดเวลา","11.รู้สึกว่าตนเองไม่มีสมาธิ","12.รู้สึกเพลียจนไม่มีแรงทำอะไร","13รู้สึกเบื่อหน่ายไม่อยากทำอะไร","14.มีอาการหัวใจเต้นแรง","15.เสียงสั่น ปากสั่น และมือสั่น เวลาไม่พอใจ","16.รู้สึกผิดพลาดในการทำสิ่งต่างๆ","17.หรือเกร็งกล้ามเนื้อบริเวณท้ายทอย หลัง หรือไหล่","18.ตื่นเต้นง่ายกับเหตุการณ์ที่ไม่คุ้นเคย","19.มึนงง หรือเวียนศีรษะ","20.ความสุขทางเพศลดลง"]
    
    
    var body: some View {
        
       // var qw: Int = i;
        Gauge(value: Double(q) , in: 0...20) {
           // /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/
        
            NavigationView {
                VStack {
                    
                    Text("\(x[q])")
                        .font(.custom("Helvetica", size: 50))
                        .multilineTextAlignment(.center)
                        .lineLimit(5)
                        .padding(.bottom, 400.0)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    
                    Button(action: {
                        i += 1
                        if q < 21 {
                            q += 1
                        }
                        
                        // Check condition after button is pressed
                        if q == 20 {
                            z=i
                            q=0;i=0
                            
                            showContentView2 = true
                        }
                    }) {
                        Text("ไม่เคยเลย")
                            .foregroundColor(Color.black)
                            .frame(width: 500.0, height: 50.0)
                            .background(Color(red: 51/255.0, green: 255.0/255.0, blue: 206.0/255.0))
                            .font(.custom("Helvetica", size: 40))
                    }
                    .padding(.top, -400.0)
                    
                    Button(action: {
                        i += 2
                        if q < 21 {
                            q += 1
                        }
                        
                        // Check condition after button is pressed
                        if q == 20 {
                            z=i
                            q=0;i=0
                            
                            showContentView2 = true
                        }
                    }) {
                        Text("เป็นครั้งคราว")
                            .foregroundColor(Color.black)
                            .frame(width: 500.0, height: 50.0)
                            .background(Color(red: 51/255.0, green: 255.0/255.0, blue: 206.0/255.0))
                            .font(.custom("Helvetica", size: 40))
                    }
                    .padding(.top, -350.0)
                    
                    Button(action: {
                        i += 3
                        if q < 21 {
                            q += 1
                        }
                        
                        // Check condition after button is pressed
                        if q == 20 {
                            z=i
                            q=0;i=0
                            
                            showContentView2 = true
                        }
                    }) {
                        Text("เป็นบ่อยๆ")
                            .foregroundColor(Color.black)
                            .frame(width: 500.0, height: 50.0)
                            .background(Color(red: 51/255.0, green: 255.0/255.0, blue: 206.0/255.0))
                            .font(.custom("Helvetica", size: 40))
                    }
                    .padding(.top, -300.0)
                    
                    Button(action: {
                        i += 4
                        if q < 21 {
                            q += 1
                        }
                        
                        // Check condition after button is pressed
                        if q == 20 {
                            z=i
                            q=0;i=0
                            
                            showContentView2 = true
                        }
                    }) {
                        Text("เป็นประจำ")
                            .foregroundColor(Color.black)
                            .frame(width: 500.0, height: 50.0)
                            .background(Color(red: 51/255.0, green: 255.0/255.0, blue: 206.0/255.0))
                            .font(.custom("Helvetica", size: 40))
                    }
                    .padding(.top, -250.0)
                    
                    
                }
                .padding()
                .navigationBarHidden(showContentView2)
                .background(
                    NavigationLink(
                        destination: ContentView2(z: z),
                        isActive: $showContentView2,
                        label: { EmptyView() }
                    )
                    .hidden()
                )}
            
        }
        
    }

}
struct ContentView2: View {
    var z: Int
    var s=["0-10","10-20","20-30","30-40","40-50"]
    var body: some View {
        VStack {
            if (z<10){
                Text(s[0])
                .font(.title)}
            else if (z<=20){
                Text(s[1])
                .font(.title)
            }
            else if (z<=30){
                Text(s[2])
                .font(.title)
            }
            else if (z<=40){
                Text(s[3])
                .font(.title)
            }
            else if (z<=50){
                Text(s[4])
                .font(.title)
            }
            
            
            Text("i = \(z)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
