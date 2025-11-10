<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Projects - Personal Portfolio</title>
  <style>
    body {
      margin: 0;
      font-family: "Segoe UI", Arial, sans-serif;
      background: linear-gradient(135deg, #f8f9fa, #e9ecef);
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
      transition: color 0.3s ease;
    }

    nav a:hover {
      color: #0056b3;
    }

    h1 {
      margin-top: 50px;
      font-size: 2.4em;
      letter-spacing: 1px;
      color: #222;
    }

    .projects-container {
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 25px;
      padding: 40px 20px;
    }

    .project {
      background: #fff;
      padding: 25px;
      border-radius: 15px;
      width: 90%;
      max-width: 500px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.1);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .project:hover {
      transform: translateY(-8px);
      box-shadow: 0 6px 20px rgba(0,0,0,0.12);
    }

    .project h3 {
      color: #007BFF;
      margin-bottom: 10px;
    }

    .project p {
      color: #555;
      line-height: 1.6;
    }

    footer {
      margin-top: 40px;
      color: #777;
      font-size: 14px;
      padding: 20px 0;
      text-align: center;
    }

    @media (max-width: 600px) {
      .project {
        width: 95%;
      }
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

  <!-- Projects Section -->
  <h1>My Projects</h1>
  <div class="projects-container">

    <div class="project">
      <h3>Library System</h3>
      <p>An OOP-based Java web app that manages books, borrowers, and records efficiently using Servlets and JDBC.</p>
    </div>

    <div class="project">
      <h3>Personal Portfolio</h3>
      <p>A responsive personal website that showcases skills, projects, and a contact form with modern UI built in JSP.</p>
    </div>

    <div class="project">
      <h3>Blog Platform (Vogg)</h3>
      <p>A dynamic story-sharing platform allowing users to post, edit, and view stories — powered by JSP, Servlets, and MySQL.</p>
    </div>

  </div>

  <footer>
    &copy; <%= java.time.Year.now() %> Victory Omoregie — Personal Portfolio. All Rights Reserved.
  </footer>



</body>
</html>
