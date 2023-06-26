# 目标可执行程序名称
NAME = jiu_fang_elk

# 主版本
VERSION = v1.0.0

# 版本构建目录
RELEASE_FOLDER := resources

.PHONY: container
container: clean
	docker build -t ${NAME}:${VERSION}						 		\
	    -f ${RELEASE_FOLDER}/Dockerfile .;										\

.PHONY: clean
# 清理
clean:
	-docker rmi ${NAME}:${VERSION}