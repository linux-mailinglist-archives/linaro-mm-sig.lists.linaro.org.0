Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DF827661C50
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 03:20:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8BBC93F244
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 02:20:54 +0000 (UTC)
Received: from cstnet.cn (smtp25.cstnet.cn [159.226.251.25])
	by lists.linaro.org (Postfix) with ESMTP id 449033E956
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Jan 2023 02:20:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of jiasheng@iscas.ac.cn designates 159.226.251.25 as permitted sender) smtp.mailfrom=jiasheng@iscas.ac.cn;
	dmarc=none
Received: from localhost.localdomain (unknown [124.16.138.125])
	by APP-05 (Coremail) with SMTP id zQCowABnic75ebtjTbDFCw--.5271S2;
	Mon, 09 Jan 2023 10:20:44 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: dmitry.baryshkov@linaro.org,
	robdclark@gmail.com,
	quic_abhinavk@quicinc.com,
	sean@poorly.run,
	airlied@gmail.com,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Mon,  9 Jan 2023 10:20:38 +0800
Message-Id: <20230109022038.2163-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowABnic75ebtjTbDFCw--.5271S2
X-Coremail-Antispam: 1UD129KBjvJXoW7urWkCF4xJF15Ww1fKFy5twb_yoW8Jw1rpa
	13Aa95try0ya1ag3ZFyr1kCa45Ca18t3WrCrW29wn3uw1Yyr1DZa4DtFyjkry7JFZ7JF12
	yFZ7JF95ZF1jyrJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvE14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gr
	1j6F4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
	7VC0I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r
	1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02
	628vn2kIc2xKxwCY02Avz4vE14v_Gr1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7
	v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF
	1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIx
	AIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI
	42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWI
	evJa73UjIFyTuYvjfUF3kuDUUUU
X-Originating-IP: [124.16.138.125]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Spamd-Result: default: False [-2.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[159.226.251.25:from,124.16.138.125:received];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:159.226.251.0/25];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,quicinc.com,poorly.run,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:7497, ipnet:159.226.0.0/16, country:CN];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[iscas.ac.cn];
	URIBL_BLOCKED(0.00)[iscas.ac.cn:email];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 449033E956
X-Spamd-Bar: --
Message-ID-Hash: AYKEVWMYGXH6WK73WWPHFWMLNYM6W5S6
X-Message-ID-Hash: AYKEVWMYGXH6WK73WWPHFWMLNYM6W5S6
X-MailFrom: jiasheng@iscas.ac.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, freedreno@lists.freedesktop.org, Jiasheng Jiang <jiasheng@iscas.ac.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] drm/msm: Add missing check and destroy for alloc_ordered_workqueue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AYKEVWMYGXH6WK73WWPHFWMLNYM6W5S6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add check for the return value of alloc_ordered_workqueue as it may return
NULL pointer.
Moreover, use the destroy_workqueue in the later fails in order to avoid
memory leak.

Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
---
Changelog:

v1 -> v2:

1. Convert "goto err_destroy_workqueue" into "goto err_msm_unit" and
remove "err_destroy_workqueue" label.
---
 drivers/gpu/drm/msm/msm_drv.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
index 8b0b0ac74a6f..54be323ed33d 100644
--- a/drivers/gpu/drm/msm/msm_drv.c
+++ b/drivers/gpu/drm/msm/msm_drv.c
@@ -418,6 +418,8 @@ static int msm_drm_init(struct device *dev, const struct drm_driver *drv)
 	priv->dev = ddev;
 
 	priv->wq = alloc_ordered_workqueue("msm", 0);
+	if (!priv->wq)
+		return -ENOMEM;
 
 	INIT_LIST_HEAD(&priv->objects);
 	mutex_init(&priv->obj_lock);
@@ -440,12 +442,12 @@ static int msm_drm_init(struct device *dev, const struct drm_driver *drv)
 
 	ret = msm_init_vram(ddev);
 	if (ret)
-		return ret;
+		goto err_msm_uninit;
 
 	/* Bind all our sub-components: */
 	ret = component_bind_all(dev, ddev);
 	if (ret)
-		return ret;
+		goto err_msm_uninit;
 
 	dma_set_max_seg_size(dev, UINT_MAX);
 
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
