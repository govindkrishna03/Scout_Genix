import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;

  SignupPage({required this.onToggleTheme, required this.isDarkMode, Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = widget.isDarkMode;

    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      body: Stack(
        fit: StackFit.expand, // Make Stack fill entire screen
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 60),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: isDark ? Colors.white : Colors.black,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: 24),

                  // Name
                  TextField(
                    controller: nameController,
                    style: TextStyle(color: isDark ? Colors.white : Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: TextStyle(color: isDark ? Colors.grey : Colors.grey[600]),
                      filled: true,
                      fillColor: isDark ? Colors.grey[850] : Colors.grey[200],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 12),

                  // Email
                  TextField(
                    controller: emailController,
                    style: TextStyle(color: isDark ? Colors.white : Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: isDark ? Colors.grey : Colors.grey[600]),
                      filled: true,
                      fillColor: isDark ? Colors.grey[850] : Colors.grey[200],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 12),

                  // Password
                  TextField(
                    controller: passwordController,
                    obscureText: _obscurePassword,
                    style: TextStyle(color: isDark ? Colors.white : Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: isDark ? Colors.grey : Colors.grey[600]),
                      filled: true,
                      fillColor: isDark ? Colors.grey[850] : Colors.grey[200],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility_off : Icons.visibility,
                          color: isDark ? Colors.white70 : Colors.grey[700],
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 12),

                  // Confirm Password
                  TextField(
                    controller: confirmPasswordController,
                    obscureText: _obscureConfirmPassword,
                    style: TextStyle(color: isDark ? Colors.white : Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: isDark ? Colors.grey : Colors.grey[600]),
                      filled: true,
                      fillColor: isDark ? Colors.grey[850] : Colors.grey[200],
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirmPassword ? Icons.visibility_off : Icons.visibility,
                          color: isDark ? Colors.white70 : Colors.grey[700],
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 24),

                  ElevatedButton(
                    onPressed: () {
                      // Add form validation/signup logic here
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: Text("Create Account"),
                  ),

                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "Already have an account? Login",
                      style: TextStyle(color: isDark ? Colors.white70 : Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Theme toggle button bottom-left
          Positioned(
            left: 16,
            bottom: 16,
            child: IconButton(
              icon: Icon(
                isDark ? Icons.light_mode : Icons.dark_mode,
                color: isDark ? Colors.white : Colors.black,
              ),
              onPressed: widget.onToggleTheme,
              tooltip: isDark ? 'Switch to Light Mode' : 'Switch to Dark Mode',
            ),
          ),
        ],
      ),
    );
  }
}
