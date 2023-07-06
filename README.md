## cài đặt CI và CD
Nhóm sử dụng Ci là GitHub Action và CD là Docker
- B1: tạo Docker file
- B2: tạo docker compose
- B3: tạo file auto.yml để thực hiện việc CI trong file .github/auto.yml
- B4: Tạo tài khoản và mật khẩu trên DockerHub trong phần Setting chọn Seceret, sau đó thêm file DOCKER_USERNAME VÀ DOCKER_PASSWORD 
- B5: chạy file trên docker hub
- B6: tiến hành pull imange về máy bằng câu lệnh docker pull tuzuka/fontend:latest
- B7: tiến hành xây dựng container bằng câu lệnh docker port 8000 tuzuka/font:latest
- B8: truy câp vào đường dẫn cửa container
- B9: trải nghiệm web
# Hospital-Managerment-Frontend
In the project directory, you can run:

### npm start

Runs the app in the development mode.<br>
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br>
You will also see any lint errors in the console.

### npm test

Launches the test runner in the interactive watch mode.<br>
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### npm run build

Builds the app for production to the build folder.<br>
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br>
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### npm run eject

**Note: this is a one-way operation. Once you eject, you can’t go back!**

If you aren’t satisfied with the build tool and configuration choices, you can eject at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (Webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except eject will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.

You don’t have to ever use eject. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.
