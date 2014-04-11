<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div style="display: none" id="tpl-user-list">
    {{#items}}
    <tr>
        <td class="text-center">
            <label class="input-control inline-block checkbox">
                <input name="ids" value="{{id}}" type="checkbox"/>
                <span class="check"></span>
            </label>
        </td>
        <td>{{enname}}</td>
        <td>{{cnname}}</td>
        <td>{{email}}</td>
        <td>{{group.department}}</td>
        <td>{{beginDate}}</td>
        <td>{{endDate}}</td>
        <td class="text-center">
            <label class="input-control switch">
                <input type="checkbox" checked/>
                <span class="check"></span>
            </label>
        </td>
        <td class="text-center">
            <a href="/sys/user/edit/{{id}}">编辑</a>
        </td>
    </tr>
    {{/items}}
</div>

<!--user-list-->
<div>
	<form>
		<fieldset>
			<div class="grid fluid padding20">
				<legend><i class="icon-search"></i> 搜索人员
					<button class="primary" type="submit"> <i class="icon-search"></i> 搜索</button>
					<button type="reset">重置</button>
				</legend>

				<div class="row">
					<div class="input-control text span4" data-role="input-control">
						<input type="text" placeholder="中文名">
						<button class="btn-clear" tabindex="-1"></button>
					</div>

					<div class="input-control text span4" data-role="input-control">
						<input type="text" placeholder="英文名">
						<button class="btn-clear" tabindex="-1"></button>
					</div>

					<div class="input-control select span4" data-role="input-control">
						<select>
							<option>部门选择</option>
							<option>财务部</option>
							<option>人事部</option>
						</select>
					</div>
				</div>

				<div class="input-control radio span3" data-role="input-control">
					<label class="inline-block">
						<input type="radio" name="r1" checked/>
						<span class="check"></span>
						启用
					</label>
					<label class="inline-block">
						<input type="radio" name="r1"/>
						<span class="check"></span>
						禁用
					</label>
					<label class="inline-block">
						<input type="radio" name="r1"/>
						<span class="check"></span>
						全部
					</label>
				</div>
			</div>

		</fieldset>

	</form>
	<!--/搜索-->
	<!--人员列表-->
	<div class="grid fluid padding20">
		<legend><i class="icon-user"></i> 人员列表
			<button class="primary" data-page-url="sys/user/add"><i class="icon-new"></i> 新建</button>
			<button class="success"><i class="fa fa-check-circle"></i> 启用</button>
			<button class="warning"><i class="fa fa-minus-circle"></i> 停用</button>
			<button class="danger"><i class="fa fa-plus-circle"></i> 删除</button>
			<button class="default"><i class="fa fa-refresh"></i> 刷新</button>
		</legend>
		<div>
			<table class="table striped bordered hovered general-table">
				<thead>

				<tr>
					<th class="text-center span1">
						<label class="input-control inline-block checkbox">
							<input type="checkbox"/>
							<span class="check"></span>
						</label>
					</th>
					<th class="text-left">用户名</th>
					<th class="text-left">中文名</th>
					<th class="text-left">电子邮件</th>
					<th class="text-left">所属部门</th>
					<th class="text-center">起始有效期</th>
					<th class="text-center">终止有效期</th>
					<th class="text-center">状态</th>
					<th class="text-center">操作</th>
				</tr>
				</thead>

				<tbody>
				<tr>
					<td class="text-center">
						<label class="input-control inline-block checkbox">
							<input type="checkbox"/>
							<span class="check"></span>
						</label>
					</td>
					<td>wener</td>
					<td>文儿</td>
					<td>wener.me@qq.com</td>
					<td>学习部</td>
					<td>2014-1-2</td>
					<td>2014-2-2</td>
					<td class="text-center">
						<label class="input-control switch">
							<input type="checkbox" checked/>
							<span class="check"></span>
						</label>
					</td>
					<td class="text-center">
						编辑
					</td>
				</tr>
				<tr class="">
					<td class="text-center">
						<label class="input-control inline-block checkbox">
							<input type="checkbox"/>
							<span class="check"></span>
						</label>
					</td>
					<td>wener</td>
					<td>文儿</td>
					<td>wener.me@qq.com</td>
					<td>学习部</td>
					<td>2014-1-2</td>
					<td>2014-2-2</td>
					<td class="text-center">
						<label class="input-control switch">
							<input type="checkbox" checked/>
							<span class="check"></span>
						</label>
					</td>
					<td class="text-center">编辑</td>

				</tbody>
			</table>



		</div>
		<div class="row text-center">
			<div class="pagination">
				<ul>
					<li class="first"><a><i class="icon-first-2"></i></a></li>
					<li class="prev"><a><i class="icon-previous"></i></a></li>
					<li><a>1</a></li>
					<li><a>2</a></li>
					<li class="active"><a>3</a></li>
					<li class="spaces"><a>...</a></li>
					<li class="disabled"><a>4</a></li>
					<li><a>500</a></li>
					<li class="next"><a><i class="icon-next"></i></a></li>
					<li class="last"><a><i class="icon-last-2"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--/人员列表-->
</div>
<!--/user-list-->
