import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/git_user_model.dart';
import '../../providers/git_user_provider.dart';

class GitUserScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Fetch the data from gitUser provider, which returns AsyncValue<List<GitUserModel>>
    final usersAsyncValue = ref.watch(gitUserProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Users'),
      ),
      body: usersAsyncValue.when(
        // Display the list of users when data is available
        data: (users) {
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];

              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar_url ?? ''),
                ),
                title: Text(user.login ?? 'No Username'),
                subtitle: Text(user.html_url ?? ''),
                onTap: () {
                  _showUserDetails(context, user);
                },
              );
            },
          );
        },
        // Show a loading indicator while fetching data
        loading: () => const Center(child: CircularProgressIndicator()),

        // Show an error message if something goes wrong
        error: (error, stackTrace) => Center(
          child: Text('Failed to load users: $error'),
        ),
      ),
    );
  }

  // Function to show more user details in a dialog (optional)
  void _showUserDetails(BuildContext context, GitUserModel user) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(user.login ?? 'No Username'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(user.avatar_url ?? ''),
            const SizedBox(height: 10),
            Text('User ID: ${user.id}'),
            Text('GitHub URL: ${user.html_url}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
