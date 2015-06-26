/* globals React */
'use strict';
var Employee = React.createClass({
  render: function () {
    console.log(this.props.employees[0].name);
    console.log(this);
 var EmployeeMap = this.props.employees.map(function(employee){
    return (
        <tr>
          <td>{employee.name}</td>
          <td>{employee.hire_date}</td>
          <td>{employee.title}</td>
          <td><button>Show</button></td>
          <td><button>Edit</button></td>
          <td><button>Fire</button></td>
        </tr>
    )
 });
    return (
        <section className="panel panel-default">
          <table className="table">
            <thead>
              <tr>
                <th>Name</th>
                <th>Hire date</th>
                <th>Title</th>
                <th>Company</th>
                <th colspan="3"></th>
              </tr>
            </thead>

            <tbody>
              <div>{EmployeeMap}</div>
            </tbody>
          </table>
          <br></br>
        </section>
     );
  }
});
  // var EmployeeInfo = React.createClass({
  //   render: function() {
  //     return (

  //     );
  //   }
    // showEm: function (){

    // },
    // editEm: function (){

    // },
    // fireEm: function (){

    // }
  // });
