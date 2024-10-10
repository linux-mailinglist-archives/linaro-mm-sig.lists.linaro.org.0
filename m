Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B751199869C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Oct 2024 14:49:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9065D4462F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Oct 2024 12:49:39 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 6E95B3F33D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Oct 2024 12:49:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=oz1mEWob;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1728564560;
	bh=peJCajT9JrXEyFW7QG0r6H6LQ1MBhLze2K+6buEL3xw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oz1mEWob0bLo3tFj/UZ1xluxr6hYvEq4h1UspMdA6+l+A/m1HNWUQmfOSVlR6ttGy
	 J3KCM9lroR2SFR+3TRZIFhBXmr9xEU+BNp7FZCwQQcI+dsB5AlPRSzna/Ke6ZrOZGT
	 N1nSislJSTMtsj0d9UjBkvkWaaIdXhgSzWfQ2UGfmuWe6TWU0cmeJ3w7PI9K6JoOEh
	 AqYzvkgywv4D4j1thdPHBA2OL8UlI1H0iXXsZGdhNxdxGuA2wGqRJL/l+Eaw4uCGTe
	 U05rr0cvsUZk/TUARKVnMyn4W8DqOOwQ72WkeMgJ7KGAmAf3YVDlU3Yv37WOjhKHF9
	 mN+/9pAZy5EFA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7C6F217E35EA;
	Thu, 10 Oct 2024 14:49:19 +0200 (CEST)
Message-ID: <93234ce4-e831-41aa-9485-53997b5cacaf@collabora.com>
Date: Thu, 10 Oct 2024 14:49:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Shu-hsiang Yang <Shu-hsiang.Yang@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Konig <christian.koenig@amd.com>
References: <20241009111551.27052-1-Shu-hsiang.Yang@mediatek.com>
 <20241009111551.27052-5-Shu-hsiang.Yang@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20241009111551.27052-5-Shu-hsiang.Yang@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6E95B3F33D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:148.251.105.195];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:148.251.0.0/16, country:DE];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,gmail.com,linaro.org,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: NKDJB6H7PJHNT7RDQAA4N6EJHIMJZNQC
X-Message-ID-Hash: NKDJB6H7PJHNT7RDQAA4N6EJHIMJZNQC
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com, yaya.chang@mediatek.com, teddy.chen@mediatek.com, hidenorik@chromium.org, yunkec@chromium.org, shun-yi.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 04/10] media: platform: mediatek: add isp_7x cam-raw unit
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NKDJB6H7PJHNT7RDQAA4N6EJHIMJZNQC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 09/10/24 13:15, Shu-hsiang Yang ha scritto:
> Introduces the ISP pipeline driver for the MediaTek ISP raw and yuv
> modules. Key functionalities include data processing, V4L2 integration,
> resource management, debug support, and various control operations.
> Additionally, IRQ handling, platform device management, and MediaTek
> ISP DMA format support are also included.
> 
> Signed-off-by: Shu-hsiang Yang <Shu-hsiang.Yang@mediatek.com>
> ---
>   .../mediatek/isp/isp_7x/camsys/mtk_cam-raw.c  | 5359 +++++++++++++++++
>   .../mediatek/isp/isp_7x/camsys/mtk_cam-raw.h  |  325 +
>   .../isp/isp_7x/camsys/mtk_cam-raw_debug.c     |  403 ++
>   .../isp/isp_7x/camsys/mtk_cam-raw_debug.h     |   39 +
>   .../isp_7x/camsys/mtk_camera-v4l2-controls.h  |   65 +
>   5 files changed, 6191 insertions(+)
>   create mode 100644 drivers/media/platform/mediatek/isp/isp_7x/camsys/mtk_cam-raw.c
>   create mode 100644 drivers/media/platform/mediatek/isp/isp_7x/camsys/mtk_cam-raw.h
>   create mode 100644 drivers/media/platform/mediatek/isp/isp_7x/camsys/mtk_cam-raw_debug.c
>   create mode 100644 drivers/media/platform/mediatek/isp/isp_7x/camsys/mtk_cam-raw_debug.h
>   create mode 100644 drivers/media/platform/mediatek/isp/isp_7x/camsys/mtk_camera-v4l2-controls.h
> 
> diff --git a/drivers/media/platform/mediatek/isp/isp_7x/camsys/mtk_cam-raw.c b/drivers/media/platform/mediatek/isp/isp_7x/camsys/mtk_cam-raw.c
> new file mode 100644
> index 000000000000..c025f53c952d
> --- /dev/null
> +++ b/drivers/media/platform/mediatek/isp/isp_7x/camsys/mtk_cam-raw.c
> @@ -0,0 +1,5359 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Copyright (c) 2022 MediaTek Inc.
> +
> +#include <linux/clk.h>
> +#include <linux/interrupt.h>
> +#include <linux/iopoll.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/vmalloc.h>
> +#include <linux/videodev2.h>
> +#include <linux/suspend.h>
> +#include <linux/rtc.h>
> +
> +#include <media/v4l2-device.h>
> +#include <media/v4l2-event.h>
> +#include <media/v4l2-ioctl.h>
> +#include <media/v4l2-subdev.h>
> +
> +#include <soc/mediatek/smi.h>
> +
> +#include "mtk_cam.h"
> +#include "mtk_cam-feature.h"
> +#include "mtk_cam-raw.h"
> +
> +#include "mtk_cam-regs-mt8188.h"
> +
> +#include "mtk_cam-video.h"
> +#include "mtk_cam-seninf-if.h"
> +#include "mtk_camera-v4l2-controls.h"
> +
> +#include "mtk_cam-dmadbg.h"
> +#include "mtk_cam-raw_debug.h"
> +
> +static unsigned int debug_raw;
> +module_param(debug_raw, uint, 0644);
> +MODULE_PARM_DESC(debug_raw, "activates debug info");
> +
> +static int debug_raw_num = -1;
> +module_param(debug_raw_num, int, 0644);
> +MODULE_PARM_DESC(debug_raw_num, "debug: num of used raw devices");
> +
> +static int debug_pixel_mode = -1;
> +module_param(debug_pixel_mode, int, 0644);
> +MODULE_PARM_DESC(debug_pixel_mode, "debug: pixel mode");
> +
> +static int debug_clk_idx = -1;
> +module_param(debug_clk_idx, int, 0644);
> +MODULE_PARM_DESC(debug_clk_idx, "debug: clk idx");
> +
> +static int debug_dump_fbc;
> +module_param(debug_dump_fbc, int, 0644);
> +MODULE_PARM_DESC(debug_dump_fbc, "debug: dump fbc");
> +
In addition to the first review that I gave you on patch [02/10]: please drop
all those module parameters. If you want debug switches, use debugfs instead.

Regards,
Angelo
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
