Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A73ED722A55
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Jun 2023 17:08:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1F8B43BE4
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Jun 2023 15:08:54 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
	by lists.linaro.org (Postfix) with ESMTPS id 7DA003E947
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Jun 2023 08:09:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of pza@pengutronix.de designates 85.220.165.71 as permitted sender) smtp.mailfrom=pza@pengutronix.de;
	dmarc=none
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <pza@pengutronix.de>)
	id 1q65Gn-00021e-UX; Mon, 05 Jun 2023 10:08:53 +0200
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <pza@pengutronix.de>)
	id 1q65Gi-0003OO-3S; Mon, 05 Jun 2023 10:08:48 +0200
Date: Mon, 5 Jun 2023 10:08:48 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Keith Zhao <keith.zhao@starfivetech.com>
Message-ID: <20230605080848.GA4802@pengutronix.de>
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602074043.33872-10-keith.zhao@starfivetech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230602074043.33872-10-keith.zhao@starfivetech.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[p.zabel@pengutronix.de,pza@pengutronix.de];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,pza@pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	ASN(0.00)[asn:25394, ipnet:85.220.128.0/17, country:DE];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7DA003E947
X-Spamd-Bar: -
X-MailFrom: pza@pengutronix.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZAS52LKNJGB3HYD2RORA7OCZKMGF6U64
X-Message-ID-Hash: ZAS52LKNJGB3HYD2RORA7OCZKMGF6U64
X-Mailman-Approved-At: Mon, 05 Jun 2023 15:06:52 +0000
CC: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.li
 ang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 9/9] drm/verisilicon: Add starfive hdmi driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZAS52LKNJGB3HYD2RORA7OCZKMGF6U64/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Keith,

On Fri, Jun 02, 2023 at 03:40:43PM +0800, Keith Zhao wrote:
> Add HDMI dirver for StarFive SoC JH7110.
> 
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> ---
>  drivers/gpu/drm/verisilicon/Kconfig         |  11 +
>  drivers/gpu/drm/verisilicon/Makefile        |   1 +
>  drivers/gpu/drm/verisilicon/starfive_hdmi.c | 928 ++++++++++++++++++++
>  drivers/gpu/drm/verisilicon/starfive_hdmi.h | 296 +++++++
>  drivers/gpu/drm/verisilicon/vs_drv.c        |   6 +
>  drivers/gpu/drm/verisilicon/vs_drv.h        |   4 +
>  6 files changed, 1246 insertions(+)
>  create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.c
>  create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.h
> 
[...]
> diff --git a/drivers/gpu/drm/verisilicon/starfive_hdmi.c b/drivers/gpu/drm/verisilicon/starfive_hdmi.c
> new file mode 100644
> index 000000000000..128ecca03309
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/starfive_hdmi.c
> @@ -0,0 +1,928 @@
[...]
> +static int starfive_hdmi_enable_clk_deassert_rst(struct device *dev, struct starfive_hdmi *hdmi)
> +{
> +	int ret;
> +
> +	ret = clk_prepare_enable(hdmi->sys_clk);
> +	if (ret) {
> +		DRM_DEV_ERROR(dev, "Cannot enable HDMI sys clock: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = clk_prepare_enable(hdmi->mclk);
> +	if (ret) {
> +		DRM_DEV_ERROR(dev, "Cannot enable HDMI mclk clock: %d\n", ret);
> +		return ret;
> +	}
> +	ret = clk_prepare_enable(hdmi->bclk);
> +	if (ret) {
> +		DRM_DEV_ERROR(dev, "Cannot enable HDMI bclk clock: %d\n", ret);
> +		return ret;
> +	}
> +	ret = reset_control_deassert(hdmi->tx_rst);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to deassert tx_rst\n");

The error paths should clk_disable_unprepare() enabled clocks.

> +		return ret;
> +	}
> +	return 0;
> +}
> +
[...]
> +static int starfive_hdmi_get_clk_rst(struct device *dev, struct starfive_hdmi *hdmi)
> +{
> +	hdmi->sys_clk = devm_clk_get(dev, "sysclk");
> +	if (IS_ERR(hdmi->sys_clk)) {
> +		DRM_DEV_ERROR(dev, "Unable to get HDMI sysclk clk\n");
> +		return PTR_ERR(hdmi->sys_clk);
> +	}
> +	hdmi->mclk = devm_clk_get(dev, "mclk");
> +	if (IS_ERR(hdmi->mclk)) {
> +		DRM_DEV_ERROR(dev, "Unable to get HDMI mclk clk\n");
> +		return PTR_ERR(hdmi->mclk);
> +	}
> +	hdmi->bclk = devm_clk_get(dev, "bclk");
> +	if (IS_ERR(hdmi->bclk)) {
> +		DRM_DEV_ERROR(dev, "Unable to get HDMI bclk clk\n");
> +		return PTR_ERR(hdmi->bclk);
> +	}
> +	hdmi->tx_rst = reset_control_get_shared(dev, "hdmi_tx");

Use devm_reset_control_get_shared() for consistency, otherwise this is missing
a reset_control_put() somewhere.

regards
Philipp
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
