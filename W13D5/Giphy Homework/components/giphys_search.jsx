import React from 'react';

import GiphysIndex from './giphys_index';


class GiphysSearch extends React.Component {
  constructor(){
    super();
    this.state = {
      searchTerm: ''
    }
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    this.setState({searchTerm: e.currentTarget.value});
  }

  handleSubmit(e){
    this.props.fetchSearchGiphys(searchTerm);
  }

  render() {
    return (
      <div>
        <form>
          <input type="text" onChange={this.handleChange}/>
          <button type="submit" onClick={this.handleSubmit}></button>
        </form>
      </div>
    )
  }
}

export default GiphysSearch;