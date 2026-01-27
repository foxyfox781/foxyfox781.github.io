<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <title>Connexion – Univerbeta</title>
  <style>
    body {
      font-family: system-ui, sans-serif;
      background: #0f0f0f;
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    form {
      width: 320px;
    }
    input, button {
      width: 100%;
      padding: 12px;
      margin-bottom: 12px;
      border-radius: 6px;
      border: none;
    }
    button {
      background: #fff;
      color: #000;
      font-weight: 600;
      cursor: pointer;
    }
  </style>
</head>
<body>

<form id="login">
  <h2>Connexion Univerbeta</h2>
  <input type="email" id="email" placeholder="Email" required>
  <input type="password" id="password" placeholder="Mot de passe" required>
  <button>Se connecter</button>
</form>

<script>
document.getElementById("login").addEventListener("submit", async e => {
  e.preventDefault();

  const res = await fetch("/api/login", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      email: email.value,
      password: password.value
    })
  });

  if (res.ok) location.href = "/account";
  else alert("Connexion refusée");
});
</script>

</body>
</html>