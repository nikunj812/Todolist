<template>
   <div class="item">
       <input type="checkbox"
       @change="updatecheck()"
       v-model='item.completed'
       />
       <span :class="[item.completed ? 'completed' : '','itemText']">{{item.name}}</span>
       <button class="trashcan" @click="removeItem()">
           <font-awesome-icon icon="trash"/>
       </button>
   </div>
</template>

<script>

export default {
    props:['item'],
    methods:{
        updatecheck(){
            axios.put('api/item/' + this.item.id,{
                item: this.item
            })
            .then( response => {
                    if(response.status == 200){
                        this.$emit('itemchange');
                    }
            })
            .catch(error => {
                console.log(error);
            })
        },
        removeItem(){
            axios.delete('api/item/' + this.item.id)
            .then( response => {
                if(response.status == 200){
                    this.$emit('itemchange');
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
.completed{
    text-decoration: line-through;
    color:#999999;

}
.itemText{
    width:100px;
    margin-left:20px;
}
.item{
    display:flex;
    justify-content: center;
    align-items: center;
}
.trashcan{
    background: #e6e6e6;
    border:none;
    color:#FF0000;
    outline: none;
}
</style>