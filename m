Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3F54B6433
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:20:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDEE0401EB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:20:43 +0000 (UTC)
Received: from zg8tmtyylji0my4xnjeumjiw.icoremail.net (zg8tmtyylji0my4xnjeumjiw.icoremail.net [162.243.161.220])
	by lists.linaro.org (Postfix) with SMTP id 267893EE0C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jan 2022 05:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=fudan.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
	Message-Id:MIME-Version:Content-Transfer-Encoding; bh=HX9Za2e1JM
	g4jxUgjH8Yl50bM6liwnW3gcJPuVFZ+TQ=; b=EaOuY7OHip6dQx9325GLcFKa/z
	fXp9uZg3VSiAvRIYNR4vLl85GjZOvI4p/EIo5MBGHtsfJUdRMzHvx7KGzrexLh+5
	oJQE4CDvA54Rs551iyD29eEd+ln9vEjVceHgFrYwGFVByKJVbTmROXq8quq6eKTB
	oaIu+42ZblfYMDwP8=
Received: from localhost.localdomain (unknown [111.192.165.103])
	by app1 (Coremail) with SMTP id XAUFCgAXLsLVROphhGc_AA--.2130S4;
	Fri, 21 Jan 2022 13:30:02 +0800 (CST)
From: Xin Xiong <xiongx18@fudan.edu.cn>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 21 Jan 2022 13:28:28 +0800
Message-Id: <20220121052827.4384-1-xiongx18@fudan.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: XAUFCgAXLsLVROphhGc_AA--.2130S4
X-Coremail-Antispam: 1UD129KBjvdXoWruw48Cr48Zr1kJr1fAry8AFb_yoWDCFb_Gr
	W8XrnrXr1ayF1qqFnFvw4rZw1ayF43uF4kGr1Sq34Sqry2v3yUtryDXrnxWF1furs7GFyD
	Zan8ur95Z3ZxKjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbfxFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr1j
	6F4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
	Cq3wAac4AC62xK8xCEY4vEwIxC4wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC
	0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr
	1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IE
	rcIFxwACI402YVCY1x02628vn2kIc2xKxwCY02Avz4vE14v_GrWl42xK82IYc2Ij64vIr4
	1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK
	67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI
	8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAv
	wI8IcIk0rVWrZr1j6s0DMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxV
	AFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JU94SOUUUUU=
X-CM-SenderInfo: arytiiqsuqiimz6i3vldqovvfxof0/1tbiAhANEFKp2iYsDwAAsr
X-MailFrom: xiongx18@fudan.edu.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VWI332OJI6F77BNLWB2Z5JEHLEJPNPYL
X-Message-ID-Hash: VWI332OJI6F77BNLWB2Z5JEHLEJPNPYL
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:20:16 +0000
CC: yuanxzhang@fudan.edu.cn, Xin Xiong <xiongx18@fudan.edu.cn>, Xin Tan <tanxin.ctf@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/amd/amdgpu/amdgpu_cs: fix refcount leak of a dma_fence obj
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VWI332OJI6F77BNLWB2Z5JEHLEJPNPYL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This issue takes place in an error path in
amdgpu_cs_fence_to_handle_ioctl(). When `info->in.what` falls into
default case, the function simply returns -EINVAL, forgetting to
decrement the reference count of a dma_fence obj, which is bumped
earlier by amdgpu_cs_get_fence(). This may result in reference count
leaks.

Fix it by decreasing the refcount of specific object before returning
the error code.

Signed-off-by: Xin Xiong <xiongx18@fudan.edu.cn>
Signed-off-by: Xin Tan <tanxin.ctf@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
index 0311d799a..894869789 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
@@ -1510,6 +1510,7 @@ int amdgpu_cs_fence_to_handle_ioctl(struct drm_device *dev, void *data,
 		return 0;
 
 	default:
+		dma_fence_put(fence);
 		return -EINVAL;
 	}
 }
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
