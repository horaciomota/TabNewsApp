import SwiftUI

struct NewsCell: View {
    
    @State var ListofNews: [newsDataModel] = []
    
    var body: some View {
    
        NavigationView() {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 12) {
                    ForEach(ListofNews, id: \.id) { new in
                        NavigationLink(destination: PostContentView(postContent: newsDataModel(id: "1", title: "Título do Post", created_at: "Data de criação", tabcoins: 0, owner_username: "Usuário", slug: "slug"))) {
                            Text(new.title)
                                .font(.headline)
                                .foregroundColor(.primary)
                        }
                        Text("Post criado por \(new.owner_username)")
                            .foregroundColor(.secondary)
                            .font(.footnote)
                        }
                }.padding(.horizontal)
            }
            .navigationTitle("News")
            .task {
                do {
                    ListofNews = try await fetchNewPosts()
                } catch {
                    print("Something went wrong: \(error)")
                }
            }
        }
    }
}

struct NewsCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell(ListofNews: [newsDataModel(id: "", title: "", created_at: "", tabcoins: 1, owner_username: "", slug: "")])
    }
}
