<template>
  <div>
    <!-- This example requires Tailwind CSS v2.0+ -->
	<nav class="bg-[#34495E]">
	  <div class="max-w-7xl mx-auto px-2 sm:px-6 lg:px-8">
	    <div class="relative flex items-center justify-between h-16">
	      <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
	        <!-- Mobile menu button-->
	        <button @click='show_mobile_menu = !show_mobile_menu' type="button" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false">
	          <span class="sr-only">Open main menu</span>
	          <!--
	            Icon when menu is closed.
	            Heroicon name: outline/menu
	            Menu open: "hidden", Menu closed: "block"
	          -->
	          <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
	            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
	          </svg>
	          <!--
	            Icon when menu is open.

	            Heroicon name: outline/x

	            Menu open: "block", Menu closed: "hidden"
	          -->
	          <svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
	            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
	          </svg>
	        </button>
	      </div>
	      <div class="flex-1 flex items-center justify-center sm:items-stretch sm:justify-start">
	        <div class="flex-shrink-0 flex items-center">
	          <img class="block lg:hidden h-5 w-auto" src="/images/collective-logo.svg" alt="Collective">
	          <img class="hidden lg:block h-5 w-auto" src="/images/collective-logo.svg" alt="Collective">
	          <span class="mx-1 text-white">•</span>
	          <span class="text-[#61EB9C] font-extrabold">Challenge</span>
	        </div>
	        <div class="hidden sm:block sm:ml-6">
	          <div class="flex space-x-4">
	            <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
	            <a href="#" class="bg-gray-700 text-white px-3 py-2 rounded-md text-sm font-medium" aria-current="page">Products</a>

	            <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Categories</a>

	            <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Brands</a>

	            <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">About Us</a>
	          </div>
	        </div>
	      </div>
	      <div class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
	        <button type="button" class="bg-gray-800 p-1 rounded-full text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white">
	          <span class="sr-only">View notifications</span>
	          <!-- Heroicon name: outline/bell -->
	          <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
	            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
	          </svg>
	        </button>

	        <!-- Profile dropdown -->
	        <div class="ml-3 relative">
	          <div>
	            <button @blur='show_menu = !show_menu' @click='show_menu = !show_menu' type="button" class="bg-gray-800 flex text-sm rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white" id="user-menu-button" aria-expanded="false" aria-haspopup="true">
	              <span class="sr-only">Open user menu</span>
	              <img class="h-8 w-8 rounded-full" src="/images/user.png" alt="">
	            </button>
	          </div>

	          <!--
	            Dropdown menu, show/hide based on menu state.

	            Entering: "transition ease-out duration-100"
	              From: "transform opacity-0 scale-95"
	              To: "transform opacity-100 scale-100"
	            Leaving: "transition ease-in duration-75"
	              From: "transform opacity-100 scale-100"
	              To: "transform opacity-0 scale-95"
	          -->
	          <div class="origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg py-1 bg-white ring-1 ring-black ring-opacity-5 focus:outline-none" :class="(show_menu)? '' : 'hidden'" role="menu" aria-orientation="vertical" aria-labelledby="user-menu-button" tabindex="-1">
	            <!-- Active: "bg-gray-100", Not Active: "" -->
	            <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-0">Your Profile</a>
	            <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-1">Settings</a>
	            <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-2">Sign out</a>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>

	  <!-- Mobile menu, show/hide based on menu state. -->
	  <div class="sm:hidden" :class="(show_mobile_menu)?'':'hidden'" id="mobile-menu">
	    <div class="px-2 pt-2 pb-3 space-y-1">
	      <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
	      <a href="#" class="bg-gray-900 text-white block px-3 py-2 rounded-md text-base font-medium" aria-current="page">Dashboard</a>

	      <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Team</a>

	      <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Projects</a>

	      <a href="#" class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">Calendar</a>
	    </div>
	  </div>
	</nav>
	<!-- product list -->
	<div class="bg-gray-200  max-h-[100vh]">
	  <div class="max-w-2xl mx-auto py-16 px-4 sm:py-24 sm:px-6 lg:max-w-7xl lg:px-8">
	    <!-- Project description -->
		<div class="bg-white mb-2 shadow sm:rounded-lg">
		  <div class="px-4 py-5 sm:p-6">
		    <div class="sm:flex sm:items-start sm:justify-between">
		      <div>
		        <h3 class="text-lg leading-6 font-medium text-gray-900">
		          Searchable List Solution
		        </h3>
		        <div class="mt-2 max-w-xl text-sm text-gray-500">
		          <p class="text-lg">
		            Below is a minimalistic solution to the Collective Challenge as instructed. I have used <mark class="bg-[#61eb9c] px-1 rounded h-2">Laravel, Vuejs & Tailwind</mark> for this solution
		          </p>
		        </div>
		      </div>
		      <div class="mt-5 sm:mt-0 sm:ml-6 sm:flex-shrink-0 sm:flex sm:items-center">
		        <button disabled type="button" class="inline-flex items-center px-4 py-2 border border-transparent shadow-sm font-medium rounded-md text-white bg-gray-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 sm:text-sm">
		          Enjoy 😎
		        </button>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="bg-white rounded-lg">
		  <div>
		    <!--
		      Mobile filter dialog
		      Off-canvas menu for mobile, show/hide based on off-canvas menu state.
		    -->
		    <div class="fixed inset-0 flex z-40 lg:hidden" role="dialog" aria-modal="true" :class="(show_mobile_filer)?'' : 'hidden'">
		      <!--
		        Off-canvas menu overlay, show/hide based on off-canvas menu state.
		        Entering: "transition-opacity ease-linear duration-300"
		          From: "opacity-0"
		          To: "opacity-100"
		        Leaving: "transition-opacity ease-linear duration-300"
		          From: "opacity-100"
		          To: "opacity-0"
		      -->
		      <div class="fixed inset-0 bg-black bg-opacity-25" aria-hidden="true"></div>

		      <!--
		        Off-canvas menu, show/hide based on off-canvas menu state.

		        Entering: "transition ease-in-out duration-300 transform"
		          From: "translate-x-full"
		          To: "translate-x-0"
		        Leaving: "transition ease-in-out duration-300 transform"
		          From: "translate-x-0"
		          To: "translate-x-full"
		      -->
		      <div class="ml-auto relative max-w-xs w-full h-full bg-white shadow-xl py-4 pb-6 flex flex-col overflow-y-auto">
		        <div class="px-4 flex items-center justify-between">
		          <h2 class="text-lg font-medium text-gray-900">Filters</h2>
		          <button type="button" class="-mr-2 w-10 h-10 p-2 flex items-center justify-center text-gray-400 hover:text-gray-500" @blur="show_mobile_filer = false" @click="show_mobile_filer = false">
		            <span class="sr-only">Close menu</span>
		            <!-- Heroicon name: outline/x -->
		            <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
		              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
		            </svg>
		          </button>
		        </div>
				 <button @click="applyFilters" type="button" class="inline-flex items-center px-3 py-2 mb-1 border border-gray-300 shadow-sm text-sm leading-4 font-medium rounded-md text-gray-600  focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-[#61eb9c] ml-16" style="width: 45%">
					<!-- Heroicon name: solid/mail -->
					<svg xmlns="http://www.w3.org/2000/svg" class="-ml-0.5 mr-2 h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
					<path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4" />
					</svg>
					Apply Filters
					</button>
				<div class="px-5 mx-2 flex items-center justify-between">
					 <vue-range-slider style="width:100%" v-model="price_range" :min="min" :max="max" :formatter="formatter"></vue-range-slider>
				</div>
				
		        <!-- Filters -->
		        <form class="mt-1">
		          <div class="border-t border-gray-200 pt-4 pb-4">
		            <fieldset>
		              <legend class="w-full px-2">
		                <!-- Expand/collapse section button -->
		                <button type="button" class="w-full p-2 flex items-center justify-between text-gray-400 hover:text-gray-500" aria-controls="filter-section-1" aria-expanded="false">
		                  <span class="text-sm font-medium text-gray-900">
		                    Categories
		                  </span>
		                  <span class="ml-6 h-7 flex items-center">
		                    <!--
		                      Expand/collapse icon, toggle classes based on section open state.

		                      Heroicon name: solid/chevron-down

		                      Open: "-rotate-180", Closed: "rotate-0"
		                    -->
		                    <svg class="rotate-0 h-5 w-5 transform" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
		                      <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
		                    </svg>
		                  </span>
		                </button>
		              </legend>
		              <div class="pt-4 pb-2 px-4" id="filter-section-1">
		                <div class="space-y-6">
		                  <div :key="index" class="flex items-center" v-for="(category, index) in categories">
		                    <input id="category-0-mobile" v-model="selectedCategories" name="category[]" :value="category.id" type="checkbox" class="h-4 w-4 border-gray-300 rounded text-indigo-600 focus:ring-indigo-500">
		                    <label for="category-0-mobile" class="ml-3 text-sm text-gray-500">
		                      {{category.name}}
		                    </label>
		                  </div>

		                 
		                </div>
		              </div>
		            </fieldset>
		          </div>

		          <div class="border-t border-gray-200 pt-4 pb-4">
		            <fieldset>
		              <legend class="w-full px-2">
		                <!-- Expand/collapse section button -->
		                <button type="button" class="w-full p-2 flex items-center justify-between text-gray-400 hover:text-gray-500" aria-controls="filter-section-2" aria-expanded="false">
		                  <span class="text-sm font-medium text-gray-900">
		                    Sizes
		                  </span>
		                  <span class="ml-6 h-7 flex items-center">
		                    <!--
		                      Expand/collapse icon, toggle classes based on section open state.

		                      Heroicon name: solid/chevron-down

		                      Open: "-rotate-180", Closed: "rotate-0"
		                    -->
		                    <svg class="rotate-0 h-5 w-5 transform" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
		                      <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
		                    </svg>
		                  </span>
		                </button>
		              </legend>
		              <div class="pt-4 pb-2 px-4" id="filter-section-2">
		                <div class="space-y-6">
		                  
							 <div class="flex items-center">
		                      <input id="sizes-0" v-model="availability" name="availability" value="1" type="radio" class="h-4 w-4 border-gray-300 rounded text-indigo-600 focus:ring-indigo-500">
		                      <label for="sizes-0" class="ml-3 text-sm text-gray-600">
		                        Available
		                      </label>
		                    </div>

		                    <div class="flex items-center">
		                      <input id="sizes-1" v-model="availability" name="availability" value="0" type="radio" class="h-4 w-4 border-gray-300 rounded text-indigo-600 focus:ring-indigo-500">
		                      <label for="sizes-1" class="ml-3 text-sm text-gray-600">
		                        Out of Stock
		                      </label>
		                    </div>

		                </div>
		              </div>
		            </fieldset>
		          </div>
		        </form>
		      </div>
		    </div>

		    <main class="max-w-2xl mx-auto py-16 px-4 sm:py-24 sm:px-6 lg:max-w-7xl lg:px-8" style="padding-top: 30px">
		      <div class="border-b border-gray-200">
		      	<!-- /End replace -->
		     		<nav class="bg-white px-4 py-3 flex items-center justify-between border-gray-200 sm:px-6 mt-5" aria-label="Pagination">
						  <h2 class="text-2xl text-gray-700 font-bold">Products Listing</h2>
					  <div class="flex-1 flex justify-between sm:justify-end">
					  	 <p class="text-sm text-gray-700 mr-2 mt-1">
					      Showing
					      <span class="font-medium">{{products.from}}</span>
					      to
					      <span class="font-medium">{{products.to}}</span>
					      of
					      <span class="font-medium">{{products.total}}</span>
					      results
					    </p>
					    <button :disabled="(this.current_page === this.products.first_page)? true: false" @click="fetchPaginated('prev')" class="relative inline-flex items-center px-2 py-1 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50">
					      Previous
					    </button>
					    <button :disabled="(this.current_page === this.products.last_page)? true: false" @click="fetchPaginated('next')" class="ml-3 relative inline-flex items-center px-2 py-1 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50">
					      Next
					    </button>
					  </div>
					</nav>
		      </div>

		      <div class="pt-5 lg:grid lg:grid-cols-3 lg:gap-x-8 xl:grid-cols-4 max-h-[800px]">
		        <aside>
		          <h2 class="sr-only">Filters</h2>

		          <!-- Mobile filter dialog toggle, controls the 'mobileFilterDialogOpen' state. -->
		          <button type="button" @click="show_mobile_filer = !show_mobile_filer" class="inline-flex items-center lg:hidden">
		            <span class="text-sm font-medium text-gray-700">Filters</span>
		            <!-- Heroicon name: solid/plus-sm -->
		            <svg class="flex-shrink-0 ml-1 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
		              <path fill-rule="evenodd" d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z" clip-rule="evenodd" />
		            </svg>
		          </button>
				   <!-- <div class="mt-1 relative rounded-md shadow-sm lg:hidden xl:hidden">
						<input type="text" name="account-number" id="account-number" class="focus:ring-indigo-500 focus:border-indigo-500 block w-full pr-10 sm:text-sm border-gray-300 rounded-md" placeholder="Search for products">
						<div class="absolute inset-y-0 right-0 pr-3 flex items-center pointer-events-none">
						<svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
							</svg>
						</div>
					</div> -->
				  

		          <div class="hidden lg:block">
					  <!-- <div class="mt-1 relative rounded-md shadow-sm">
						<input type="text" name="account-number" id="account-number" class="focus:ring-indigo-500 focus:border-indigo-500 block w-full pr-10 sm:text-sm border-gray-300 rounded-md" placeholder="Search for products">
						<div class="absolute inset-y-0 right-0 pr-3 flex items-center pointer-events-none">
						<svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
							</svg>
						</div>
					</div> -->
					   
		            <form class="divide-y divide-gray-200 space-y-10">
		              <div class="pt-10">
						  <button @click="applyFilters" type="button" class="inline-flex items-center px-3 py-2 mb-1 border border-gray-300 shadow-sm text-sm leading-4 font-medium rounded-md text-gray-600  focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-[#61eb9c]">
							<!-- Heroicon name: solid/mail -->
							<svg xmlns="http://www.w3.org/2000/svg" class="-ml-0.5 mr-2 h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
							<path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4" />
							</svg>
							Apply Filters
							</button>
		                <fieldset class="mt-2">
		                  <legend class="block text-sm font-medium text-gray-900">
		                    Prices
		                  </legend>
		                  <div class="pt-6 space-y-3">
		                      <div class="flex items-center">
								 <vue-range-slider style="width:100%" v-model="price_range" :min="min" :max="max" :formatter="formatter"></vue-range-slider>

							</div>

		                  </div>
		                </fieldset>
		              </div>

					  <div class="pt-10">
		                <fieldset>
		                  <legend class="block text-sm font-medium text-gray-900">
		                    Categories
		                  </legend>
		                  <div class="pt-6 space-y-3">
		                      <div :key="index" class="flex items-center" v-for="(category, index) in categories">
								<input :id="category.id" v-model="selectedCategories" name="category[]" :value="category.id" type="checkbox" class="h-4 w-4 border-gray-300 rounded text-indigo-600 focus:ring-indigo-500">
								<label :for="category.id" class="ml-3 text-sm text-gray-500">
								{{category.name}}
								</label>
							</div>

		                  </div>
		                </fieldset>
		              </div>

		              <div class="pt-10">
		                <fieldset>
		                  <legend class="block text-sm font-medium text-gray-900">
		                    Store Availability
		                  </legend>
		                  <div class="pt-6 space-y-3">
		                    <div class="flex items-center">
		                      <input id="sizes-0" v-model="availability" name="availability" value="1" type="radio" class="h-4 w-4 border-gray-300 rounded text-indigo-600 focus:ring-indigo-500">
		                      <label for="sizes-0" class="ml-3 text-sm text-gray-600">
		                        Available
		                      </label>
		                    </div>

		                    <div class="flex items-center">
		                      <input id="sizes-1" v-model="availability" name="availability" value="0" type="radio" class="h-4 w-4 border-gray-300 rounded text-indigo-600 focus:ring-indigo-500">
		                      <label for="sizes-1" class="ml-3 text-sm text-gray-600">
		                        Out of Stock
		                      </label>
		                    </div>

		                    
		                  </div>
		                </fieldset>
		              </div>
		            </form>
		          </div>
		        </aside>

		        <!-- Product grid -->
		        <div class="mt-6 lg:mt-0 lg:col-span-2 xl:col-span-3 max-h-[800px] overflow-auto">
		          <!-- Replace with your content -->

		         <div v-if="loading" class="flex justify-center w-100 text-center">
			        <svg class="animate-spin -ml-1 mr-3 h-5 w-5 text-gray-600" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
			          <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
			          <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
			        </svg>
			        <span class="text-gray-600">Loading</span>
			      </div>

		          <!-- single product -->
				    <div v-else class="mt-8 grid grid-cols-1 gap-y-12 sm:grid-cols-2 sm:gap-x-6 lg:grid-cols-4 xl:gap-x-8 ">
				      <div :key="index" class="bg-white p-3 rounded-lg shadow-lg border-2" v-for="(product,index) in products.data">
				        <div class="relative">
				          <div class="relative w-full h-48 rounded-lg overflow-hidden">
				            <img src="/images/product.svg" alt="Front of zip tote bag with white canvas, black canvas straps and handle, and black zipper pulls." class="w-50 object-center object-cover">
				          </div>
				          <div class="relative mt-4">
				            <h3 class="text-sm font-bold text-gray-800 capitalize">{{product.name}}
				            	<span class="inline-flex items-center ml-3 px-2.5 py-0.5 rounded-lg text-xs font-medium shadow" :class="(product.available)? 'bg-green-100 text-green-800':'bg-red-100 text-red-800'">
								  {{(product.available)? 'Available' : 'Out of Stock'}}
								</span>
				            </h3>
				            <p class="mt-1 text-sm text-gray-500">
				            	{{truncateWords(product.description, 5)}}
				        	</p>
				          </div>
				          <div class="absolute top-0 inset-x-0 h-48 rounded-lg p-4 flex items-end justify-end overflow-hidden">
				            <div aria-hidden="true" class="absolute inset-x-0 bottom-0 h-36 bg-gradient-to-t from-black opacity-50"></div>
				            <p class="relative text-lg font-semibold text-white">${{product.price}}</p>
				          </div>
				        </div>
				        <div class="mt-6">
				          <a href="#" class="relative flex bg-gray-100 border border-transparent rounded-md py-2 px-8 items-center justify-center text-sm font-medium text-gray-900 hover:bg-gray-200">Add to Cart<span class="sr-only">, Zip Tote Basket</span></a>
				        </div>
				      </div>
				    </div>
					<div v-if="products.data.length <= 0">
						<div class="rounded-md bg-red-50 p-4">
							<div class="flex">
								<div class="flex-shrink-0">
								<!-- Heroicon name: solid/information-circle -->
								<svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-red-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
									<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
									</svg>
								</div>
								<div class="ml-3 flex-1 md:flex md:justify-between">
								<p class="text-sm text-red-700">
									<strong>No results found!</strong>
								</p>
								</div>
							</div>
							</div>
					</div>
		        </div>
		      </div>
		    </main>
		  </div>
		</div>

	  </div>
	</div>

    
  </div>
</template>
<script>
const default_layout = "default"
import axios from 'axios'
import 'vue-range-component/dist/vue-range-slider.css'
import VueRangeSlider from 'vue-range-component'

import pagination from 'laravel-vue-pagination'

export default {
  components:{
  	pagination,
	VueRangeSlider
  },
  computed: {},
  data() {
      return {
      	show_mobile_filer: false,
      	show_mobile_menu:false,
      	show_menu: false,
      	loading: false,
		price_range:[0,100],
		min:0,
		max:100,

        products:{
            type:Object,
            default:null
        },
		query:'',
		categories: null,
		selectedCategories: [],
		availability: 1,
        current_page: 1,
      }
  },
  created(){
  	this.fetchPaginated()
	this.fetchCategories()
	this.fetchRange()

	this.formatter = value => `$${value}`
  },
  methods: {
  	async fetchPaginated(to = null){
  		this.loading = true
  		let page;
  		console.log('To value: ', to)
  		//if forward
  		if (to === 'next') {
  			// if nothing ahead, return
	  		if (this.current_page === this.products.last_page) {
	  			console.log('Current page is like last: ', this.current_page)
	  			this.loading = false
	  			return;
	  		}else{
	  			page = this.current_page+1
	  			console.log('Next page: ', page)
	  		}
  		}else if(to === 'prev'){
  			if (this.current_page === 1) {
  				console.log('Prev page is at first: ', this.current_page)
  				this.loading = false
	  			return;
	  		}else{
	  			page=this.current_page-1
	  			console.log('Prev page value: ', page)
	  		}
  		}else{
  			page = 1;
  		}
  		//update current
  		this.current_page = page

		await axios.get(`/api/products?page=${page}`).then(({data})=>{
            this.products = data
        }).catch(({ response })=>{
            console.error(response)
        }).finally(()=>{
        	this.loading = false
        })
  	},
	async fetchCategories(){
		await axios('/api/categories')
		.then(({data})=>{
			this.categories = data
		})
	},
	priceChanged(val){
		 this.rangeValue = val
	},
	async fetchRange(){
		await axios('/api/products/price_range')
		.then(({data})=>{
			this.min = data[0]
    		this.max = data[1]
		})
		.catch((error) => {console.log('Error: ', error)})
	},
	async applyFilters(){
		this.loading = true

		//construct filtration
		let url = `/api/products?price_range=${JSON.stringify(this.price_range)}&categories=${JSON.stringify(this.selectedCategories)}&availability=${this.availability}`;

		axios.get(url).then(({data})=>{
			console.log('After applying filters', data);
			this.products = data
		}).catch(({ response })=>{
			console.error(response)
		}).finally(()=>{
			this.loading = false
		})
	
	}
  }
};
</script>