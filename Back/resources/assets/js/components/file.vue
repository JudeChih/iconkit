<template>
    <div class="input-group edit-flieUpload">
        <label>檔案上傳</label>
        <div class="file-group-wrapper">
            <ul class="file-group">
                <li class="png">
                    <input type="button" data-input="thumbnail" data-preview="holder" :class="'btn-file ' + 'lfm-png'" @click="openFM('png')"></input>
                    <div class="file-img">
                        <img v-if="type.png" class="pic" :src="currentURL+files.png">
                        <!-- <img v-if="type.png" class="pic" :src="files.png"> -->
                        <img v-else="type.png" class="pic"  src="images/pic_png.png">
                    </div>
                    <input v-if="type.png" type="button" class="btn-remove" @click="removeRow('png')">
                    <i class="file-type" v-if="type.png">PNG</i>
                </li>
                <li class="fw">
                    <input type="button" data-input="thumbnail" data-preview="holder" :class="'btn-file ' + 'lfm-fw'" @click="openFM('fw')"></input>
                    <div class="file-img">
                        <img v-if="type.fw" class="pic" :src="currentURL+files.fw">
                        <!-- <img v-if="type.fw" class="pic" :src="files.fw"> -->
                        <img v-else="type.fw" class="pic"  src="images/pic_fw.png">
                    </div>
                    <input v-if="type.fw" type="button" class="btn-remove" @click="removeRow('fw')">
                    <i class="file-type" v-if="type.fw">FW</i>
                </li>
                <li class="psd">
                    <input type="button" data-input="thumbnail" data-preview="holder" :class="'btn-file ' + 'lfm-psd'" @click="openFM('psd')"></input>
                    <div class="file-img">
                        <img v-if="type.psd" class="pic" src="images/pic_psd_over.png">
                        <img v-else="type.psd" class="pic"  src="images/pic_psd.png">
                    </div>
                    <input v-if="type.psd" type="button" class="btn-remove" @click="removeRow('psd')">
                    <i class="file-type" v-if="type.psd">PSD</i>
                </li>
            </ul>
            <span class="input-prompt">※ png圖檔必須選擇</span>
        </div>
    </div>
</template>
<script>
    export default {
        props: ['asset', 'item', 'itemType', 'edit'],
        mounted() {
            let vm = this;
            vm.currentURL = vm.asset.slice(0, -1);
        },
        data() {
            return {
                files: {
                    'png':'',
                    'fw':'',
                    'psd':'',
                },
                type: {
                    png: false,
                    fw: false,
                    psd: false,
                },
                fmNumber: '',
                currentURL: '',
                createBtn: true
            }
        },
        watch: {
            item() {
                let vm = this;
                if(vm.item) {
                    for (let index = 0; index < vm.item.length; index++) {
                        if(vm.item[index].split(".").includes('png') && !vm.item[index].split(".").includes('fw') ) {
                            vm.type.png = true;
                            vm.files.png = vm.item[index];
                        }
                        if(vm.item[index].split(".").includes('fw')) {
                            vm.type.fw = true;
                            vm.files.fw = vm.item[index];
                        }
                        if(vm.item[index].split(".").includes('psd')) {
                            vm.type.psd = true;
                            vm.files.psd = vm.item[index];
                        }
                    }
                }else{
                    vm.type.png = false;
                    vm.type.fw = false;
                    vm.type.psd = false;
                }
            },
            edit(){
                let vm = this;
                //關閉編輯圖標的視窗，清空資料
                if(!vm.edit){
                    vm.type.fw = false;
                    vm.files.fw = '';
                    vm.type.png = false;
                    vm.files.png = '';
                    vm.type.psd = false;
                    vm.files.psd = '';
                }
            }
        },
        created() {
            let vm = this;
            vm.fmFun();
        },
        methods: {
            removeRow(key) {
                let vm = this

                if(key == 'png'){
                    swal({
                        title: ".png無法被刪除",
                        text: "只能執行換圖的動作",
                        icon: "warning",
                        dangerMode: true,
                    })
                }else if(key == 'fw'){
                    vm.type.fw = false;
                    vm.files.fw = '';
                    vm.updateFilesAndType();
                }else if(key == 'psd'){
                    vm.type.psd = false;
                    vm.files.psd = '';
                    vm.updateFilesAndType();
                }
            },
            updateFilesAndType() {
                let vm = this;
                var array = [];
                if(vm.files.png != ''){
                    array.push(vm.files.png);
                }
                if(vm.files.fw != ''){
                    array.push(vm.files.fw);
                }
                if(vm.files.psd != ''){
                    array.push(vm.files.psd);
                }
                vm.$emit('get-type', vm.type);
                vm.$emit('get-file', array);
            },
            openFM(key) {
                let vm = this;
                vm.fmNumber = key;
            },
            fmFun() {
                let vm = this;
                setTimeout(function() {
                    let domain = "";
                    $('.lfm-png').filemanager("file", {
                        prefix: domain,
                    });
                    $('.lfm-fw').filemanager("file", {
                        prefix: domain,
                    });
                    $('.lfm-psd').filemanager("file", {
                        prefix: domain,
                    });
                }, 10);
                $.fn.filemanager = function(type, options) {
                    type = type || 'file';
                    this.on('click', function(e) {
                        var route_prefix = (options && options.prefix) ? options.prefix : 'laravel-filemanager';
                        localStorage.setItem('target_preview', $(this).data('preview'));
                        window.open(route_prefix + '?type=' + type, 'FileManager', 'width=900,height=600');
                        window.SetUrl = function(url, file_path) {
                            if(vm.fmNumber == 'png'){
                                if(url.split(".").includes('png') && !url.split(".").includes('fw')){
                                    vm.type.png = true;
                                    vm.files.png = file_path;
                                    vm.updateFilesAndType();
                                }else{
                                    swal({
                                        title: "只能選擇png圖檔",
                                        text: "請重新操作",
                                        icon: "warning",
                                        dangerMode: true,
                                    })
                                }
                            }else if(vm.fmNumber == 'fw'){
                                if(url.split(".").includes('fw')){
                                    vm.type.fw = true;
                                    vm.files.fw = file_path;
                                    vm.updateFilesAndType();
                                }else{
                                    swal({
                                        title: "只能選擇fw圖檔",
                                        text: "請重新操作",
                                        icon: "warning",
                                        dangerMode: true,
                                    })
                                }
                            }else if(vm.fmNumber == 'psd'){
                                if(url.split(".").includes('psd')){
                                    vm.type.psd = true;
                                    vm.files.psd = file_path;
                                    vm.updateFilesAndType();
                                }else{
                                    swal({
                                        title: "只能選擇psd圖檔",
                                        text: "請重新操作",
                                        icon: "warning",
                                        dangerMode: true,
                                    })
                                }
                            }
                        };
                        return false;
                    });
                }
            },
        }
    }
</script>