<template>
    <div class="itemcontainer">
            <label for="text" >Name</label>
            <input type="text" v-model="item.name" />
            <font-awesome-icon @click="addItem()" icon="plus-square" :class="[item.name ? 'active' : 'inactive','plus']"/>
                
    </div>
</template>

<script>

export default {
    data: function(){
        return {
            item: {
                name:""
            }
        }
    },
    methods:{
        addItem(){
            if(this.item.name == ''){
                return;
            }
            axios.post('api/item/store',{
                item: this.item
            })
            .then(response => {
                if(response.status == 201){
                    this.item.name = "";
                    this.$emit('reloadlist');
                }
            })
            .catch(error => {
                console.log(error);
            })
        }
    }

}
</script>

<style scoped>
.itemcontainer{
    display:flex;
    justify-content: center;
    align-content: center;
}
input{
    background: #f7f7f7;
    border:0;
    outline: none;
    padding:5px;
    margin-right: 10px;
    widows: 100%;
}
.plus{
    font-size:20px;
}
.active{
    color:#00CE25;
}
.inactive{
    color: #999999;
}
</style>