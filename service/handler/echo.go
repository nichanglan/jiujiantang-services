package handler

import (
	"context"

	proto "github.com/jinmukeji/proto/gen/micro/idl/jm/core/v1"
)

// Echo 获取服务版本信息
func (j *JinmuHealth) Echo(ctx context.Context, req *proto.EchoRequest, resp *proto.EchoResponse) error {
	resp.Content = req.Content
	return nil
}
