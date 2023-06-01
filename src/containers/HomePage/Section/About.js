import React, { Component } from 'react';
import { connect } from 'react-redux';
import { FormattedMessage } from 'react-intl';
import healthyVideo from '../../../assets/images/healthy.mp4'

class About extends Component {
    render() {

        return (
            <div className="section-share section-about">
                <div className="section-about-header">
                    Những điều có thể bạn đã biết
                </div>
                <div className="section-about-content">
                    <div className="content-left">
                        <iframe crossorigin="anonymous" width="100%" height="400px"
                            src={healthyVideo}
                            title="YouTube video player"
                            frameBorder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowFullScreen>
                        </iframe>
                    </div>
                    <div className="content-right">
                        <h6>I. Thế nào là Healthy Lifestyle?</h6>
                        <p> Healthy Lifestyle là lối sống khỏe vì sức khỏe của bạn, áp dụng và duy trì thói quen tốt đó để cải thiện sức khỏe tốt hơn. Muốn có một lối sống khỏe bạn nên bắt đầu từ thói quen sinh hoạt và ăn uống hàng ngày.</p>
                        <h6>II. Healthy lifestyle có lợi ích gì?</h6>
                        <p>Thực hiện lối sống healthy mang lại nhiều lợi ích cho cuộc sống của bạn và sức khỏe như:
                            Tiết kiệm tiền;
                            Tốt cho môi trường;
                            Ngăn ngừa mắc bệnh ung thư...
                        </p>
                    </div>
                </div>
            </div>
        );
    }

}

const mapStateToProps = state => {
    return {
        isLoggedIn: state.user.isLoggedIn,
        language: state.app.language,
    };
};

const mapDispatchToProps = dispatch => {
    return {
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(About);
