package net.jeeshop.web.action.manage.system;

import java.util.List;

import net.jeeshop.core.BaseAction;
import net.jeeshop.core.Services;
import net.jeeshop.core.system.bean.Privilege;
import net.jeeshop.services.manage.system.impl.PrivilegeService;


/**
 * 权限管理
 * @author Administrator
 *
 */
public class PrivilegeAction extends BaseAction<Privilege> {//implements ModelDriven<Role>{
	private static final long serialVersionUID = 1L;
	private PrivilegeService privilegeService;
	@SuppressWarnings("rawtypes")
	private List privilegeList;

	
	private Privilege privilege = new Privilege();

	public String delete() throws Exception {
		this.privilegeService.delete(privilege);
		return SUCCESS;
	}

	public PrivilegeService getPrivilegeService() {
		return privilegeService;
	}

	public void setPrivilegeService(PrivilegeService privilegeService) {
		this.privilegeService = privilegeService;
	}

	@SuppressWarnings("rawtypes")
	public List getPrivilegeList() {
		return privilegeList;
	}

	@SuppressWarnings("rawtypes")
	public void setPrivilegeList(List privilegeList) {
		this.privilegeList = privilegeList;
	}

	public Privilege getPrivilege() {
		return privilege;
	}

	public void setPrivilege(Privilege privilege) {
		this.privilege = privilege;
	}

	@Override
	public Privilege getE() {
		return this.privilege;
	}

	@Override
	public Services<Privilege> getServer() {
		return this.privilegeService;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
	}

	@Override
	public void insertAfter(Privilege e) {
		e.clear();
	}
	@Override
	protected void selectListAfter() {
		pager.setPagerUrl("privilege!selectList.action");
	}
}
