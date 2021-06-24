<template>
<div>
    <div v-for="(item,index) in items" :key="index">
        <listView :item="item" class="item" v-on:itemchange="$emit('reloadlist')"/>
    </div>
</div>
</template>

<script>

import listView from './listview'
export default {
    props:['items'],
    components:{
        listView
    }
}
</script>

<style scoped>
.item{
    background: #e6e6e6;
    padding: 5px;
    margin-top: 5px;
}
</style>