using System;
using System.Security.Cryptography;
using System.Text;

namespace AuthLibrary
{
    public class PasswordHasher
    {
        // Hashes a password using SHA-256 and returns the result as a base 64 string
        public static string HashPassword(string password)
        {
            using (SHA256 sha = SHA256.Create())
            {
                byte[] bytes = Encoding.UTF8.GetBytes(password);
                byte[] hash = sha.ComputeHash(bytes);
                return Convert.ToBase64String(hash);
            }
        }

        // Compares a plain password to a hashed one by re-hashing and making sure they match
        public static bool VerifyPassword(string plain, string hash)
        {
            return HashPassword(plain) == hash;
        }
    }
}
