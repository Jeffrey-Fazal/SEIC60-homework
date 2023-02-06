import React, { Component } from 'react';
import axios from 'axios';

class PokeCard extends Component {
    constructor() {
        super();
        this.state = {
            pokeName: '',
            image: '',
        };
        this.fetchData = this.fetchData.bind(this)
    }

    fetchData() {
        const pokeURL = `https://pokeapi.co/api/v2/pokemon/1/`
        axios.get(pokeURL).then((response) => {
            const pokeName = response.data.name; this.setState({pokeName: pokeName});
            const image = response.data.sprites["front_default"]; this.setState({image: image})
            console.log(response)
        })
        }
    

        // axios.get(flickrURL, { params: flickrParams }).then((response) => {
        //     const images = response.data.photos.photo.map(generateURL);
        //     this.setState({images: images});
        // });

    render() {
        return(
            <div className='poke-card'>
                <p>Poke Game</p>
                <button type="button" onClick={ this.fetchData }>Draw Card</button>
                <p>{this.state.pokeName}</p>
                <img src={this.state.image} alt={this.state.pokeName}></img>
            </div>
        ); 
    }

}



export default PokeCard;