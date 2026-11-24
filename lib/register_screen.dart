import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Top Header with Badge
                  Row(
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(
                          Icons.person_add_alt_1,
                          color: theme.colorScheme.primary,
                          size: 26,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Create Account',
                              style: theme.textTheme.headlineMedium,
                            ),
                            Text(
                              'Set up your profile to get started',
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 22),

                  // Static Full Name Field
                  const _RegisterFieldBox(
                    label: 'Full Name',
                    placeholder: 'Juan Dela Cruz',
                    icon: Icons.badge_outlined,
                  ),

                  const SizedBox(height: 14),

                  // Static Email Field
                  const _RegisterFieldBox(
                    label: 'Email Address',
                    placeholder: 'juan.delacruz@ntc.edu.ph',
                    icon: Icons.email_outlined,
                  ),

                  const SizedBox(height: 14),

                  // Static Password Field
                  const _RegisterFieldBox(
                    label: 'Password',
                    placeholder: 'Create a password',
                    icon: Icons.lock_outline,
                  ),

                  const SizedBox(height: 14),

                  // Static Confirm Password Field
                  const _RegisterFieldBox(
                    label: 'Confirm Password',
                    placeholder: 'Re-enter your password',
                    icon: Icons.verified_user_outlined,
                  ),

                  const SizedBox(height: 14),

                  // Static Terms Row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.check_box,
                        size: 20,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'I agree to the Terms of Service and Privacy Policy.',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 22),

                  // Static Create Account Button
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Create Account',
                      style: theme.textTheme.labelLarge,
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Static Login Prompt
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: theme.textTheme.bodyMedium,
                      ),
                      Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _RegisterFieldBox extends StatelessWidget {
  final String label;
  final String placeholder;
  final IconData icon;

  const _RegisterFieldBox({
    required this.label,
    required this.placeholder,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFCBD5E1)),
          ),
          child: Row(
            children: [
              Icon(icon, size: 20, color: const Color(0xFF64748B)),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  placeholder,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF94A3B8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}