// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.13 and less than 0.9.0
pragma solidity ^0.8.10;

contract alumno{

string private _nombre; 
string private _apellido;
string private _curso;
address private _docente;
mapping(string => uint) private _nota_materias;

constructor(string memory nombre_, string memory apellido_, string memory curso_){
        _nombre = nombre_;
        _apellido = apellido_;
        _curso = curso_;
        _docente = msg.sender;
    }

function apellido() public view returns (string memory){
        return _apellido;
    }
function nombre_completo() public view returns (string memory){
        return string.concat(_nombre,_apellido);
    }
function curso() public view returns (string memory){
        return _curso;
    }
function set_nota_materia(string memory materia, uint nota) public{
        require(msg.sender == _docente, "Solo el docente puede poner las notas");
        _nota_materias[materia] = nota;
    }
function nota_materia(string memory materia) public view returns (uint){
        return _nota_materias[materia];
    }
function aprobo(string memory materia) public view returns (bool){
    bool _aprobo = false;
        if(_nota_materias[materia] >= 60){
            _aprobo = true;
            return _aprobo;
        }
        else{
            return _aprobo;
        }
    }
}