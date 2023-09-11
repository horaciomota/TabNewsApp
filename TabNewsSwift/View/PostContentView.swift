import SwiftUI

struct PostContentView: View {
    
    var postContent: postModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text(postContent.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text("Post criado por \(postContent.title)")
                    .foregroundColor(.secondary)
                    .font(.footnote)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Post")
        .task {
            do {
                postContent = try await fetchforContent(owner_username: "x", slug: "String")
            }catch {
                print("Something went wrong: \(error)")
            }
        }
    }
}

struct PostContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostContentView(postContent: newsDataModel(id: "", title: "", created_at: "", tabcoins: 0, owner_username: "", slug: ""))
    }
}
