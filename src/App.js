import './App.css';
import React from "react";

function App() {
  return (
    <div className="App d-flex flex-column justify-content-center align-items-center">
      <h1>Blockchain UI</h1>
      <div className="card w-75">
        <div className="card-header">
          Featured
        </div>
        <div className="card-body">
          <h5 className="card-title">Check Status</h5>
          <p className="card-text">Check current command status</p>
          <a onClick={() => alert("Désolé mais ça marche pas !")} className="btn btn-primary">Check</a>
        </div>
      </div>
    </div>
  );
}

export default App;
