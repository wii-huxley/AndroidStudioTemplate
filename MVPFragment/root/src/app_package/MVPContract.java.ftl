package ${packageName}.mvp.${mvpName};

import ${packageName}.BasePresenter;
import ${packageName}.BaseView;

public interface ${mvpName}Contract {

    interface View extends BaseView<Presenter> {
    }

    interface Presenter extends BasePresenter {
    }
}