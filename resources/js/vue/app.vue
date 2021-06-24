<template>
    <div class="maincontainer">
        <div class="heading">
            <h2 id="title">To do List</h2>
            <add-item  v-on:reloadlist="getList()"/>
        </div>
        <list-view :items="items" v-on:reloadlist="getList()"/>
    </div>
</template>

<script>
import addItem from './additem.vue'
import listView from './listitem.vue'

export default {
    components:{
        addItem,
        listView
    },
    data: function(){
        return {
            items : []
        }
    },
    methods:{
        getList(){
            console.log('hiii');
            axios.get('api/item')
            .then( response => {
                this.items = response.data
            })
            .catch(error => {
                    console.log(error);
            })
        }
    },
    created() {
        this.getList();
    }
    
}
</script>

<style scoped>
.maincontainer{
    width:350px;
    margin:auto;
}
.heading{
    background :#e6e6e6;
    padding: 10px;
}
#title{
    text-align: center;
}
</style>