package ${packageName}.mvp.${mvpName};

import android.support.annotation.NonNull;

public class ${mvpName}Presenter implements ${mvpName}Contract.Presenter {

    private final ${mvpName}Contract.View m${mvpName}View;

    public ${mvpName}Presenter(@NonNull ${mvpName}Contract.View view) {
        m${mvpName}View = view;
        m${mvpName}View.setPresenter(this);
    }

    @Override
    public void start() {
    }
}