const http = require('http');
const fs = require('fs');
const path = require('path');
const formidable = require('formidable');

const server = http.createServer((req, res) => {
  const url = req.url;

  if (url === '/') {
    fs.readFile('index.html', (err, data) => {
      if (err) {
        res.writeHead(404, { 'Content-Type': 'text/plain' });
        res.end('Não encontrado');
      } else {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(data);
      }
    });
  } else if (url === '/about') {
    fs.readFile('about.html', (err, data) => {
      if (err) {
        res.writeHead(404, { 'Content-Type': 'text/plain' });
        res.end('Não encontrado');
      } else {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(data);

      }
    });
  } else if (url === '/post') {
    if (req.method === 'POST') {
      let body = '';
      req.on('data', (chunk) => {
        body += chunk;
      });
      req.on('end', () => {
        console.log('Recebi uma requisição POST com o corpo:', body);
        res.writeHead(200, { 'Content-Type': 'text/plain' });
        res.end('Recebi sua requisição POST!');
      });
    } else {
      res.writeHead(405, { 'Content-Type': 'text/plain' });
      res.end('Método não permitido');
    }
  } else if (url === '/upload') {
    if (req.method === 'POST') {
      const form = new formidable.IncomingForm();
      form.uploadDir = path.join(__dirname, 'uploads');
      form.keepExtensions = true;
      form.parse(req, (err, fields, files) => {
        if (err) {
          console.error('Erro ao salvar arquivo:', err);
          res.writeHead(500, { 'Content-Type': 'text/plain' });
          res.end('Erro ao salvar arquivo');
        } else if (!files.file) {
          res.writeHead(400, { 'Content-Type': 'text/plain' });
          res.end('Nenhum arquivo foi enviado');
        } else {
          console.log('Arquivo salvo com sucesso!');
          res.writeHead(200, { 'Content-Type': 'text/plain' });
          res.end('Arquivo salvo com sucesso!');
        }
      });

    } else if (req.method === 'GET') {
      res.writeHead(200, { 'Content-Type': 'text/html' });
      res.end(`
        <html>
          <body>
            <form action="/upload" method="post" enctype="multipart/form-data">
              <input type="file" name="file">
              <input type="submit" value="Upload">
            </form>
          </body>
        </html>
      `);
    } else {
      res.writeHead(405, { 'Content-Type': 'text/plain' });
      res.end('Método não permitido');
    }
  } else {
    // Rota 404
    res.writeHead(404, { 'Content-Type': 'text/html' });
    res.end(`



<html lang="pt-br">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Erro 404</title>
    <style>
      body {
        font-family: Arial, sans-serif;
          background: linear-gradient(to bottom, #007bff, #ffffff);
        text-align: center;
                margin: 0 auto;
        display: flex;
        flex-direction:column;
        justify-content: center;
        align-items: center;
        height: 100vh; 
      }
      
      h1 {
        color: #333;
        font-size: 36px;
        margin-bottom: 20px;
      }
      
      p {
        color: #666;
        font-size: 18px;
      }
    </style>
  </head>

  <body>
    <h1>Erro 404: Página não encontrada</h1>
    <p>A página que você está procurando não foi encontrada.</p>
  </body>
</html>







    `);
  }
});

server.listen(3000, () => {
  console.log('Servidor rodando na porta 3000');
});