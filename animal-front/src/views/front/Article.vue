<template>
  <div style="min-height: calc(100vh - 60px); margin: 10px 0">
    <div style="margin: 10px 0">
      <el-input size="mid" style="width: 400px" placeholder="请输入名称" suffix-icon="el-icon-search" v-model="name"></el-input>
<!--      <el-input style="width: 200px" placeholder="请输入" suffix-icon="el-icon-message" class="ml-5" v-model="email"></el-input>-->
<!--      <el-input style="width: 200px" placeholder="请输入" suffix-icon="el-icon-position" class="ml-5" v-model="address"></el-input>-->
      <el-button class="ml-5" type="success" @click="load" size="mid">搜索</el-button>
      <el-button type="primary" class="ml-5" size="mid" @click="handleAdd">发表帖子</el-button>
    </div>

    <div style="margin: 10px 0">

    </div>

    <div style="margin: 10px 0;">
      <div v-for="item in tableData" style="padding: 20px; border-radius: 10px; background-color: #fff; margin: 10px 0">
        <div style="font-size: 20px; font-weight: bold; color: #1E90FF; cursor: pointer" @click="view(item.id, item.content)">{{ item.name }}</div>
        <div style="margin-top: 15px; font-size: 14px">
          <span><i class="el-icon-user-solid" style="margin-right: 5px"></i>{{ item.user }}</span>
          <span><i class="el-icon-time" style="margin-right: 5px; margin-left: 20px"></i>{{ item.time }}</span>
          <span >
            <el-button v-if="item.userId === user.id" type="text" style="float: right; font-size: 16px; color: red; margin-left: 10px" @click="del(item.id)">删除</el-button>
          <el-button v-if="item.userId === user.id" type="text" style="float: right; font-size: 16px" @click="handleEdit(item)">编辑</el-button>
          <el-button type="text" style="float: right; font-size: 16px" @click="handleComment(item.id)">评论</el-button>
          </span>
        </div>
      </div>
    </div>
    <div  style="padding: 10px; margin: 10px 0; background-color: #fff; border-radius: 10px">
      <el-pagination
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
          :current-page="pageNum"
          :page-sizes="[2, 5, 10, 20]"
          :page-size="pageSize"
          layout="total, prev, pager, next"
          :total="total">
      </el-pagination>
    </div>

    <el-dialog title="信息" :visible.sync="dialogFormVisible" width="60%" :close-on-click-modal="false">
      <el-form label-width="60px" size="small" style="width: 100%">
        <el-form-item label="标题">
          <el-input v-model="form.name" autocomplete="off" style="width: 500px"></el-input>
        </el-form-item>
        <el-form-item label="内容">
          <mavon-editor ref="md" v-model="form.content" :ishljs="true" @imgAdd="imgAdd"/>
        </el-form-item>

      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="save">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="信息" :visible.sync="vis" width="60%" :close-on-click-modal="false">
      <mavon-editor
          class="md"
          :value="content"
          :subfield="false"
          :defaultOpen="'preview'"
          :toolbarsFlag="false"
          :editable="false"
          :scrollStyle="true"
          :ishljs="true"
      />

      <div style="margin: 30px 0">
        <div style="margin-bottom: 20px; font-size: 20px; border-bottom: 1px solid #ddd; padding-bottom: 10px">评论列表</div>
        <div  v-for="item in comments" style="background-color: #fff; padding: 10px; border-radius: 10px; border-bottom: 1px solid #ddd">
          <div style="padding: 10px 0; display: flex; color: #666;  font-size: 14px">
            <div style="width: 100px; text-align: center" >
              <el-image :src="item.avatar" style="width: 50px; height: 50px; border-radius: 50%"></el-image>
            </div>
            <div style="flex: 1; line-height: 25px;">
              <div>
                <span style="color: #3F5EFB">{{item.user }}：</span>
                <span>{{ item.content }}</span>
              </div>
              <div style="font-size: 12px; margin-top: 5px; display: flex">
                <div style="flex: 1"><i class="el-icon-time"></i> <span>{{ item.time }}</span></div>
                <div style="width: 100px; text-align: right">
                  <el-button type="text" @click="delComment(item.id)" style="color: red" v-if="user.nickname === item.user">删除</el-button>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </el-dialog>


    <el-dialog title="评论" :visible.sync="commentVis" width="40%" :close-on-click-modal="false">
      <el-form label-width="30px" size="small" style="width: 100%">
        <el-form-item label="">
          <el-input type="textarea" :rows="5" v-model="comment.content" autocomplete="off" style="width: 500px"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="commentVis = false">取 消</el-button>
        <el-button type="primary" @click="saveComment">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Article",
  data() {
    return {
      tableData: [],
      total: 0,
      pageNum: 1,
      pageSize: 10,
      name: "",
      form: {},
      dialogFormVisible: false,
      multipleSelection: [],
      user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {},
      vis: false,
      content: '',
      comment: {},
      commentVis: false,
      comments: []
    }
  },
  created() {
    if (!this.user.id) {
      this.$message.warning("请登录")
      this.$router.push("/login")
      return
    }
    this.load()
  },
  methods: {
    saveComment() {
      if (!this.user.username) {
        this.$message.warning("请登录后评论")
        return
      }
      if (this.comment.contentr) {
        this.comment.content = this.form.contentr
      }
      if (!this.comment.content) {
        this.$message.warning("请输入评论")
        return
      }
      this.comment.type = 2
      this.request.post("/comment", this.comment).then(res => {
        if (res.code === '200') {
          this.$message.success("评论成功")
          this.commentVis = false
          this.comment = {}  // 清空数据
          this.loadComment()
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    delComment(id) {
      this.request.delete("/comment/" + id).then(res => {
        if (res.code === '200') {
          this.$message.success("删除成功")
          this.loadComment()
        } else {
          this.$message.error("删除失败")
        }
      })
    },
    loadComment(id) {
      this.request.get("/comment/article/2/" + id).then(res => {
        this.comments = res.data
      })
    },
    handleComment(id) {
      this.comment.articleId = id
      this.commentVis = true
    },
    view(id, content) {
      this.content = content
      this.vis = true
      this.loadComment(id)
    },
    // 绑定@imgAdd event
    imgAdd(pos, $file) {
      let $vm = this.$refs.md
      // 第一步.将图片上传到服务器.
      const formData = new FormData();
      formData.append('file', $file);
      axios({
        url: 'http://localhost:9090/file/upload',
        method: 'post',
        data: formData,
        headers: {'Content-Type': 'multipart/form-data'},
      }).then((res) => {
        // 第二步.将返回的url替换到文本原位置![...](./0) -> ![...](url)
        $vm.$img2Url(pos, res.data);
      })
    },
    load() {
      this.request.get("/article/page", {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          name: this.name,
        }
      }).then(res => {
        this.tableData = res.data.records
        this.total = res.data.total
      })
    },
    save() {
      if (!this.form.name) {
        this.$message.error("标题不能为空！")
        return
      }
      if (!this.form.content) {
        this.$message.error("内容不能为空！")
        return
      }
      this.request.post("/article", this.form).then(res => {
        if (res.code === '200') {
          this.$message.success("保存成功")
          this.dialogFormVisible = false
          this.load()
        } else {
          this.$message.error("保存失败")
        }
      })
    },
    handleAdd() {
      this.dialogFormVisible = true
      this.form = {}
      this.$nextTick(() => {
        if(this.$refs.img) {
           this.$refs.img.clearFiles();
         }
         if(this.$refs.file) {
          this.$refs.file.clearFiles();
         }
      })
    },
    handleEdit(row) {
      this.form = JSON.parse(JSON.stringify(row))
      this.dialogFormVisible = true
       this.$nextTick(() => {
         if(this.$refs.img) {
           this.$refs.img.clearFiles();
         }
         if(this.$refs.file) {
          this.$refs.file.clearFiles();
         }
       })
    },
    del(id) {
      this.request.delete("/article/" + id).then(res => {
        if (res.code === '200') {
          this.$message.success("删除成功")
          this.load()
        } else {
          this.$message.error("删除失败")
        }
      })
    },
    handleSelectionChange(val) {
      console.log(val)
      this.multipleSelection = val
    },
    delBatch() {
      if (!this.multipleSelection.length) {
        this.$message.error("请选择需要删除的数据")
        return
      }
      let ids = this.multipleSelection.map(v => v.id)  // [{}, {}, {}] => [1,2,3]
      this.request.post("/article/del/batch", ids).then(res => {
        if (res.code === '200') {
          this.$message.success("批量删除成功")
          this.load()
        } else {
          this.$message.error("批量删除失败")
        }
      })
    },
    reset() {
      this.name = ""
      this.load()
    },
    handleSizeChange(pageSize) {
      console.log(pageSize)
      this.pageSize = pageSize
      this.load()
    },
    handleCurrentChange(pageNum) {
      console.log(pageNum)
      this.pageNum = pageNum
      this.load()
    },
    handleFileUploadSuccess(res) {
      this.form.file = res
    },
    handleImgUploadSuccess(res) {
      this.form.img = res
    },
    download(url) {
      window.open(url)
    },
    exp() {
      window.open("http://localhost:9090/article/export")
    },
    handleExcelImportSuccess() {
      this.$message.success("导入成功")
      this.load()
    }
  }
}
</script>


<style>
.headerBg {
  background: #eee!important;
}
</style>
