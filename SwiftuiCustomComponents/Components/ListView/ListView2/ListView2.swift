//
//  ListView2.swift
//  SwiftuiCustomComponents
//
//  Created by Zakarai Lachkar on 3/8/2023.
//

import SwiftUI

struct ListView2: View {
    var body: some View {
        CustomList()
    }
}

struct CustomList: UIViewControllerRepresentable {
    typealias UIViewControllerType = CustomRController

    func makeUIViewController(context: Context) -> CustomRController {
        return CustomRController()
    }

    func updateUIViewController(_ uiViewController: CustomRController, context: Context) {}
}

class CustomRController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let tableView = UITableView(frame: .zero)
        tableView.dataSource = self

        let refreshControl = UIRefreshControl()
        
        // Remplacer par votre loader personnalisé
//        let loadingView = UIActivityIndicatorView(style: .large)
//        loadingView.color = .red
//        loadingView.startAnimating()
//        refreshControl.addSubview(loadingView)
        let loadingView = UIHostingController(rootView: AnyView(
            Loader1()
                .frame(width: 20, height: 20)
        ))
        loadingView.view.frame = refreshControl.bounds
        refreshControl.addSubview(loadingView.view)
        
        refreshControl.tintColor = .clear
        refreshControl.addTarget(self, action: #selector(refreshData), for: .valueChanged)

        tableView.refreshControl = refreshControl
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    @objc private func refreshData(_ refreshControl: UIRefreshControl) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            refreshControl.endRefreshing()
        }
    }
}

extension CustomRController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") ?? UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "Item \(indexPath.row)"
        return cell
    }
}

struct ListView2_Previews: PreviewProvider {
    static var previews: some View {
        ListView2()
    }
}
