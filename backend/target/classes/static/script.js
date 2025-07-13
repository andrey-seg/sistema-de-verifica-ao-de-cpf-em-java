document.getElementById("formPessoa").addEventListener("submit", async function(e) {
  e.preventDefault();
  const nome = document.getElementById("nome").value;
  const cpf = document.getElementById("cpf").value;
  const datanascimento = document.getElementById("datanascimento").value;

  await fetch("/pessoas", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ nome, cpf, datanascimento })
  });

  listar();
});

async function listar() {
  const res = await fetch("/pessoas");
  const pessoas = await res.json();
  const lista = document.getElementById("lista");
  lista.innerHTML = "";
  pessoas.forEach(p => {
    const li = document.createElement("li");
    li.textContent = `${p.nome} - ${p.cpf} - ${p.datanascimento}`;
    lista.appendChild(li);
  });
}

listar();
