import SwiftUI

struct PostContentView: View {
    
    let postContent: newsDataModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text(postContent.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text("Post criado por \(postContent.owner_username)")
                    .foregroundColor(.secondary)
                    .font(.footnote)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Post")
    }
}

struct PostContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostContentView(postContent: newsDataModel(id: "", title: "", created_at: "", tabcoins: 0, owner_username: "", slug: ""))
    }
}
