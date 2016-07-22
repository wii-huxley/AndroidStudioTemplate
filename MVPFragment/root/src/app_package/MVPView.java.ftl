package ${packageName}.${mvpName};

import android.support.annotation.NonNull;
import com.huxley.wii.wiitools.base.BaseFragment;

public class ${mvpName}Fragment extends BaseFragment implements ${mvpName}Contract.View {

    private ${mvpName}Contract.Presenter m${mvpName}Presenter;

    public static ${mvpName}Fragment newInstance() {
        return new ${mvpName}Fragment();
    }

    @Override
    public void setPresenter(@NonNull ${mvpName}Contract.Presenter presenter) {
        m${mvpName}Presenter = presenter;
    }

}
