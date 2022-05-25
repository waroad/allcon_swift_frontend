
import SwiftUI

struct NaviView: View {
//    @ObservedObject var viewModel = HomeViewModel()
    @ObservedObject var movieModel = MovieViewModel()

  var body: some View {
    NavigationView {
      List {
          NavigationLink("정보수정",
            destination: SettingView2())
        NavigationLink("취향재설정", destination: ColorDetail(color: .yellow))
        NavigationLink("회원탈퇴", destination: ColorDetail(color: .red))
      }
      .navigationTitle("마이페이지")
        VStack {
//           HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
           Spacer(minLength: 32.0)
//           EventsSectionView(events: $viewModel.events)
           Spacer(minLength: 32.0)
           SearchHistoryISectionView(movie: $movieModel.movies)
           Spacer(minLength: 32.0)
           InterestSectionView(movies: $movieModel.movies)
       }
    }
}

struct ColorDetail: View {
  var color: Color
  var body: some View {
    color
      .frame(width: 200, height: 200)
        .navigationTitle(color.description.capitalized)
  }
}

//struct ModiInfo: View {
//    typealias modi = Modi
//    var window: Modi
//    var body: some Modi{
//        window.navigationTitle("Modi")
//    }
//}

struct NaviView_Previews : PreviewProvider {
    static var previews: some View {
        NaviView()
    }
}
}
struct SettingView2: View {
    var body: some View {
        List {
            Section {
                SettingUserInfoSectionView2()
            }
            Button("회원 정보 수정") {}
                .accentColor(.black)
            Button("회원 탈퇴") {}
                .accentColor(.black)
        }
            .navigationTitle("설정")
            .listStyle(GroupedListStyle())
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfoSectionView2: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
//                Text(User.shared.username)
//                    .font(.title)
//                Text(User.shared.account)
//                    .font(.caption)
                Text("유저")
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("로그아웃")
                    .accentColor(.green)
                    .font(.system(size: 14.0, weight: .bold, design: .default))
            }
            .padding(8.0)
            .overlay(Capsule().stroke(Color.green))
        }
    }
}
