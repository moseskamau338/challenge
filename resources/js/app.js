// require('./bootstrap');
import Vue from 'vue'

Vue.mixin({
	methods: {
		truncateWords(str, max = 90) {
		  const array = str.trim().split(' ');
		  const ellipsis = array.length > max ? '...' : '';

		  return array.slice(0, max).join(' ') + ellipsis;
		},
	}
})


//Main pages
import App from './views/App.vue'


const app = new Vue({
    el: '#app',
    components: { App }
})
