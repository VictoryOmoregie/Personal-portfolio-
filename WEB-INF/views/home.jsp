<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Personal Portfolio - Home</title>
  <style>
    body {
      margin: 0;
      font-family: "Segoe UI", Arial, sans-serif;
      background: linear-gradient(to right, #f8f9fa, #e9ecef);
      display: flex;
      flex-direction: column;
      align-items: center;
      min-height: 100vh;
    }

    nav {
      width: 100%;
      background: #fff;
      box-shadow: 0 2px 10px rgba(0,0,0,0.05);
      padding: 15px 0;
      text-align: center;
      position: sticky;
      top: 0;
      z-index: 100;
    }

    nav a {
      margin: 0 15px;
      color: #007BFF;
      text-decoration: none;
      font-weight: 500;
      transition: color 0.3s;
    }

    nav a:hover {
      color: #0056b3;
    }

    h1 {
      margin-top: 60px;
      font-size: 2.5em;
      color: #222;
      letter-spacing: 1px;
      text-align: center;
    }

    form {
      background: #fff;
      padding: 40px 30px;
      border-radius: 15px;
      margin-top: 30px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.1);
      transition: transform 0.3s ease;
      text-align: center;
    }

    form:hover {
      transform: translateY(-5px);
    }

    input, textarea {
      width: 320px;
      margin: 12px 0;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 15px;
      transition: border-color 0.3s, box-shadow 0.3s;
      outline: none;
    }

    input:focus, textarea:focus {
      border-color: #007BFF;
      box-shadow: 0 0 6px rgba(0,123,255,0.3);
    }

    textarea {
      height: 100px;
      resize: none;
    }

    button {
      background: #007BFF;
      color: #fff;
      border: none;
      padding: 12px 25px;
      border-radius: 8px;
      font-size: 15px;
      cursor: pointer;
      transition: background 0.3s, transform 0.2s;
    }

    button:hover {
      background: #0056b3;
      transform: scale(1.05);
    }

    .msg {
      margin-top: 20px;
      color: green;
      font-weight: bold;
      font-size: 16px;
      animation: fadeIn 1s ease;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(10px); }
      to { opacity: 1; transform: translateY(0); }
    }

    footer {
      margin-top: auto;
      padding: 20px 0;
      color: #777;
      font-size: 14px;
      text-align: center;
    }
  </style>
</head>
<body>

  <!-- Navigation Bar -->
  <nav>
    <a href="home.jsp">Home</a>
    <a href="projects.jsp">Projects</a>
    <a href="contact.jsp">Contact</a>
  </nav>

  <!-- Main Content -->
  <h1>Welcome to My Personal Portfolio</h1>
  <form action="contact" method="post">
    <h2>Get in Touch</h2>
    <input type="text" name="name" placeholder="Your Name" required><br>
    <input type="email" name="email" placeholder="Your Email" required><br>
    <textarea name="message" placeholder="Your Message..." required></textarea><br>
    <button type="submit">Send Message</button>

    <div class="msg">
      <c:if test="${not empty message}">
        ${message}
      </c:if>
    </div>
  </form>

    <footer>
    &copy; <%= java.time.Year.now() %> Victory Omoregie — Personal Portfolio. All Rights Reserved.
    </footer>



</body>
</html>
