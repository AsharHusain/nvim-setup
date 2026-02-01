local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {

  -- =====================================
  -- CP Template (cd - multi test)
  -- =====================================
  s("cd", {
    t({
      "#include <bits/stdc++.h>",
      "using namespace std;",
      "",
      "#define fastIO() ios::sync_with_stdio(false); cin.tie(nullptr)",
      "#define ll long long",
      "#define all(x) (x).begin(), (x).end()",
      "#define sz(x) int((x).size())",
      "#define nl '\\n'",
      "",
      "template<class T>",
      "istream& operator>>(istream &is, vector<T> &v) {",
      "    for (auto &x : v) is >> x;",
      "    return is;",
      "}",
      "",
      "template<class T>",
      "ostream& operator<<(ostream &os, const vector<T> &v) {",
      "    for (int i = 0; i < sz(v); i++)",
      "        os << v[i] << (i + 1 < sz(v) ? ' ' : '\\n');",
      "    return os;",
      "}",
      "",
      "int main() {",
      "    fastIO();",
      "    int t = 1;",
      "    cin >> t;",
      "    while (t--) {",
      "        "
    }),
    i(1), -- cursor position ($0)
    t({
      "",
      "    }",
      "}",
      "",
      "/*",
      "Notes:",
      "*/"
    }),
  }),

  -- =====================================
  -- CP Template (cc - single test)
  -- =====================================
  s("cc", {
    t({
      "#include <bits/stdc++.h>",
      "using namespace std;",
      "",
      "#define fastIO() ios::sync_with_stdio(false); cin.tie(nullptr)",
      "#define ll long long",
      "#define all(x) (x).begin(), (x).end()",
      "#define sz(x) int((x).size())",
      "#define nl '\\n'",
      "",
      "template<class T>",
      "istream& operator>>(istream &is, vector<T> &v) {",
      "    for (auto &x : v) is >> x;",
      "    return is;",
      "}",
      "",
      "template<class T>",
      "ostream& operator<<(ostream &os, const vector<T> &v) {",
      "    for (int i = 0; i < sz(v); i++)",
      "        os << v[i] << (i + 1 < sz(v) ? ' ' : '\\n');",
      "    return os;",
      "}",
      "",
      "int main() {",
      "    fastIO();",
      "    "
    }),
    i(1), -- cursor position ($0)
    t({
      "",
      "}",
      "",
      "/*",
      "Notes:",
      "*/"
    }),
  }),

  -- =====================================
  -- Sieve of Eratosthenes (siev)
  -- =====================================
  s("siev", {
    t({
      "// ---------- Sieve of Eratosthenes ----------",
      "const int MAXN = "
    }),
    i(1, "1000000"),
    t({
      ";",
      "vector<bool> is_prime(MAXN, true);",
      "vector<int> primes;",
      "",
      "void build_sieve() {",
      "    is_prime[0] = is_prime[1] = false;",
      "    for (int i = 2; i < MAXN; ++i) {",
      "        if (is_prime[i]) {",
      "            primes.push_back(i);",
      "            for (int j = i * 2; j < MAXN; j += i)",
      "                is_prime[j] = false;",
      "        }",
      "    }",
      "}"
    }),
  }),

})

