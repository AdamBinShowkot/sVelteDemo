<script>
  import { onMount } from "svelte";
  import RegistrationForm from './registrationForm.svelte'
  import LoginForm from './loginForm.svelte'
  export let data;

  let cart = [];
  let isLoggedIn=data.isLoggedIn;
  let isCheckout = false;
  let isRegModalOpen=false;
  let isLoginModalOpen=false;


  // Rregistration Infos State
  let registarInfo={
    agencyName:"",
    workstations:"",
    address:"",
    city:"",
    zipCode:"",
    contactName:"",
    title:"",
    email:"",
    referredBy:"",
    pseudoCity:"",
    arc:"",
    phone:"",
    fax:""
  }

  // Login Info State
  let loginInfo={
    email:"",
    password:""
  }


  // Handle close modal
  function closeModal() {
    isRegModalOpen = false;
  }

  // handle close modal with outside click
  function handleOutsideClick(event) {
    if (event.target === event.currentTarget) {
      closeModal();
    }
  }

  // handle close login  modal for outside click
  const handleOutSideClickLoginModal=(event)=>{
    if(event.target===event.currentTarget){
      isLoginModalOpen=false;
    }
  }

  // handle registar info on change
  const handleRegistrationInputChange=(e)=>{
    let {name,value}=e.target;

    let infos={...registarInfo};
    infos[name]=value;

    registarInfo=infos;
  }

  // handle login infor on change
  const handleLoginInputChange=(e)=>{
    let {name,value}=e.target;

    let infos={...loginInfo};

    infos[name]=value;

    loginInfo=infos;
  }

  // handle for registration submit
  const handleOnSubmit=()=>{

    let demoUser={
      username:registarInfo.email,
      password:"123456"
    }

    sessionStorage.setItem('user',JSON.stringify(demoUser));
    sessionStorage.setItem("registerInfo",JSON.stringify(registarInfo))
    let cartLists = JSON.parse(sessionStorage.getItem("cart"));

    if(cartLists){
      cart=cartLists
    }

    isLoggedIn=true
    isRegModalOpen=false;
  }

  // handle for login submit
  const onLogin=()=>{    
   
    if(loginInfo.email && loginInfo.password==="123456"){
      let demoLoginObj={
        email:loginInfo.email,
        password:loginInfo.password
      }

      sessionStorage.setItem('user',JSON.stringify(demoLoginObj))
      let cartLists = JSON.parse(sessionStorage.getItem("cart"));

      if(cartLists){
        cart=cartLists
      }
      
      isLoggedIn=true;
      isLoginModalOpen=false
    }else{
      alert("Wrong Password")
    }
  }

  function addItem(item) {
    console.log("Add ITEM");
    const product = { ...item }
    cart = [...cart, product];

    //create session storage cart item
    let stringCart = JSON.stringify(cart);
    sessionStorage.setItem("cart", stringCart);
  }
  function removeItem(idx) {
    cart.splice(idx, 1);
    cart = cart;
    //create session storage cart item
    let stringCart = JSON.stringify(cart);
    sessionStorage.setItem("cart", stringCart);
  }
  function emptyCart() {
    //remove cart session storage object & refresh cart totals
    if (sessionStorage.getItem("cart")) {
      sessionStorage.removeItem("cart");
      cart = [];
    }
  }
  function checkOut() {
    isCheckout = true;
    paypal
      .Buttons({
        // Sets up the transaction when a payment button is clicked
        createOrder: function () {
          return fetch("/paypal/create-paypal-order", {
            method: "post",
            headers: {
              "Content-Type": "application/json",
            },
            // use the "body" param to optionally pass additional order information
            // like product skus and quantities
            body: JSON.stringify({
              total,
            }),
          })
            .then((response) => response.json())
            .then((order) => order.id);
        },
        // Finalize the transaction after payer approval
        onApprove: function (data) {
          return fetch("/paypal/capture-paypal-order", {
            method: "post",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify({
              orderID: data.orderID,
            }),
          })
            .then((response) => response.json())
            .then((orderData) => {
              // Successful capture! For dev/demo purposes:
              console.log(
                "Capture result",
                orderData,
                JSON.stringify(orderData, null, 2)
              );
              const transaction =
                orderData.purchase_units[0].payments.captures[0];
              alert(
                "Transaction " +
                  transaction.status +
                  ": " +
                  transaction.id +
                  "\n\nSee console for all available details"
              );
              // When ready to go live, remove the alert and show a success message within this page. For example:
              // var element = document.getElementById('paypal-button-container');
              // element.innerHTML = '<h3>Thank you for your payment!</h3>';
              // Or go to another URL:  actions.redirect('thank_you.html');
            });
        },
      })
      .render("#paypal-button-container");
  }

  // Similiar to componentDidMount() on react.
  onMount(() => {
    if (sessionStorage.getItem("cart") && sessionStorage.getItem("user")) {
      //get cart data & parse to array
      cart = JSON.parse(sessionStorage.getItem("cart"));
      isLoggedIn=true;
    }
  });



  $: itemTotal = cart.length?cart.length:0;
  $: total = cart.reduce((a, b) => a + b.price, 0);
</script>

<svelte:head>
  <title>Home</title>
  <meta name="description" content="Svelte demo app" />
  <script
    src="https://www.paypal.com/sdk/js?client-id=ATEsUhxXq7Xyo4I25OXKwxYyRbXe-4WrNLNCcQUU9ENsYm6Z-Yvl2JqjPLI414XXN14YGB87nBEzv5bx&currency=USD"
  ></script>
</svelte:head>

<section class="flex flex-wrap">
  <div class="lg:w-2/3 w-full p-2">
    <div class="flex item-baseline mb-8" style="width:100%;overflow:hidden">
        <div class="" style="width:50%">
          <h2 class="text-2xl font-bold">Products</h2>
        </div>
        {#if !isLoggedIn}
        <div class="flex item-baseline justify-end" style="width:50%">
          <a 
          class="text-sm underline hover:cursor-pointer text-blue-400 mr-2"  
          on:click={() => isLoginModalOpen=true}
          href={null}
          >
            Login
          </a>
          <a 
          class="text-sm underline hover:cursor-pointer text-blue-400"
          on:click={() => isRegModalOpen=true}
          href={null}
          >
            Register
          </a>
        </div>
        {/if}
    </div>
    <div>
      <ul class="">
        {#each data.items as item}
          <li class="flex flex-wrap border p-2 mb-2 items-center">
            <div class="flex flex-column items-center w-full">
              <div class="lg:w-2/5 w-full p-2">
                <h2 class="text-md font-bold">{item.title}</h2>
                <h3>${item.price}</h3>
              </div>
              <div class="lg:w-2/5 w-full p-2">
                {#if item.extra}
                  {#if item.extra.field == "text"}
                    <div>
                      <input
                        type="text"
                        aria-label={item.extra.label}
                        placeholder={item.extra.label}
                        on:change={(e) => {
                          item.selected = e.target.value;
                          item.description = `${item.extra.label} - ${e.target.value}`;
                        }}
                      />
                    </div>
                  {/if}
                  {#if item.extra.field == "price"}
                    <div>
                      <label for={item.extra.label}>{item.extra.label}</label>
                      <select
                        name={item.extra.label}
                        on:change={(e) => {
                          //window.selected = e.target;
                          item.price = Number(e.target.value);
                          item.selected = e.target.value;
                          item.description = `${item.extra.label} - ${
                            e.target.options[e.target.selectedIndex].text
                          }`;
                        }}
                      >
                        <option value="">Select Option</option>
                        {#each item.extra.value as p}
                          <option value={p.price}>{p.title}</option>
                        {/each}
                      </select>
                    </div>
                  {/if}
                {/if}
              </div>
              <div class="lg:w-1/5 w-full p-2 flex justify-end">
                <!-- <button
                  class="border-2 border-blue-50 bg-blue"
                  on:click={() => addItem(item)}
                  disabled={!item.selected}
                >
                  Add to Cart
                </button> -->
                <button
                  class="border-2 border-blue-50 bg-blue"
                  on:click={() => addItem(item)}
                  disabled={isLoggedIn?false:true}
                >
                  Add to Cart
                </button>
              </div>
            </div>
          </li>
        {/each}
      </ul>
    </div>
  </div>
  <div class="lg:w-1/3 w-full p-2">
    <div class="cart-container">
      <h2 class="text-2xl mb-8 font-bold">Cart</h2>
      <table
        class="border p-2 w-full"
        style="display: {isCheckout ? 'none' : 'block'}"
      >
        <thead>
          <tr>
            <th><strong>Product</strong></th>
            <th><strong>Price</strong></th>
            <th />
          </tr>
        </thead>
        <tbody id="carttable">
          {#each cart as c, i}
            <tr>
              <td>
                <h2>{c.title}</h2>
                <small class="text-gray-500">{c.description}</small>
              </td>
              <td>
                ${c.price}
              </td>
              <td>
                <a
                  href="#t"
                  class="p-1 rounded-2xl bg-red-500 text-sm text-white block w-7 text-center"
                  on:click={() => removeItem(i)}>X</a
                >
              </td>
            </tr>
          {/each}
        </tbody>
      </table>
      <table id="carttotals" class="border p-2 mt-4 w-full">
        <tr>
          <th>Items</th>
          <th>Total</th>
        </tr>
        <tr>
          <td class="text-center font-bold">x {itemTotal}</td>

          <td class="text-center font-bold">${total}</td>
        </tr>
      </table>

      <div
        class="cart-buttons mt-4 flex justify-center gap-1"
        style="display: {isCheckout ? 'none' : 'flex'}"
      >
        <button id="emptycart" on:click={emptyCart}>Empty Cart</button>
        <button id="checkout" on:click={checkOut}>Checkout</button>
      </div>
      <div class="mt-4" id="paypal-button-container" />
    </div>
  </div>


  {#if isRegModalOpen}
    <div
      class="fixed inset-0 z-50 flex items-center justify-center overflow-auto bg-black bg-opacity-50"
      on:click={handleOutsideClick}
      on:keydown={()=>{}}
      on:keyup={()=>{}}
    >
      <div class="w-3/4 p-6 bg-white rounded shadow-lg md:w-1/2 lg:w-3/5">
        <header class="flex items-center justify-between mb-4">
          <h2 class="text-xl font-semibold">User Registration Form</h2>
          <button 
          class="text-gray-700" 
          on:click={closeModal}
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke-width="1.5"
              stroke="currentColor"
              class="w-6 h-6"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M6 18L18 6M6 6l12 12"
              />
            </svg>
          </button>
        </header>
        <div class="flex justify-center items-center"> 
          <RegistrationForm 
          registarInfo={registarInfo} 
          handleChange={handleRegistrationInputChange} 
          submitForm={handleOnSubmit}/>
        </div>
      </div>
    </div>
  {/if}


  {#if isLoginModalOpen}
  <div
    class="fixed inset-0 z-50 flex items-center justify-center overflow-auto bg-black bg-opacity-50"
    on:click={handleOutSideClickLoginModal}
    on:keydown={()=>{}}
    on:keyup={()=>{}}
  >
    <div class="w-2/4 p-6 bg-white rounded shadow-lg md:w-2/4 lg:w-2/5">
      <header class="flex items-center justify-between mb-4">
        <h2 class="text-xl font-semibold">User Login Form</h2>
        <button 
        class="text-gray-700" 
        on:click={()=>isLoginModalOpen=false}
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            stroke-width="1.5"
            stroke="currentColor"
            class="w-6 h-6"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              d="M6 18L18 6M6 6l12 12"
            />
          </svg>
        </button>
      </header>
      <div class="flex justify-center items-center"> 
        <LoginForm 
        loginInfo={loginInfo} 
        onChange={handleLoginInputChange} 
        handleLogin={onLogin}/>
      </div>
    </div>
  </div>
{/if}
</section>

<style lang="postcss">
  /* :global(html) {
    background-color: theme(colors.gray.100);
  } */
  button {
    @apply border p-2 rounded font-bold text-white bg-blue-500 hover:bg-blue-300 outline-none;
  }
  button[disabled=disabled], button:disabled {
    @apply bg-gray-300 cursor-not-allowed;
  }
  input {
    @apply border p-2 rounded border-gray-200 outline-none;
  }
  select {
    @apply border p-2 rounded border-gray-200 outline-none;
  }
  table {
    @apply border;
  }
  th,
  td {
    @apply border p-2;
  }
</style>
