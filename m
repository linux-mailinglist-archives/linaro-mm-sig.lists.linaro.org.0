Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5C076BD0E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 20:56:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BC9E43C5E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 18:56:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 363E83EF12
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 18:55:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b="tRb4rec/";
	spf=none (lists.linaro.org: domain of rdunlap@infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=rdunlap@infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=ZbJ6XzZFv+F6scIaytBSdgvIm2dwO2prs0+W8B5me30=; b=tRb4rec/Sr7L58aBAg+lYczHwH
	NodjWNp9D97lEVUOMIX9q37VC7+tbt3fTQFQXHvlGH9pG35Wi+5NqEfyCW/3efHz1NUkaPodzIneD
	xfChRtZD6xrvl7ocUqpSEwYXAN9wk+jhzPbpPT9KTjm5MiwO+03Nfxz8GcJ2LJiz3et/qHdUD42WI
	/EmB/n7Ka0HCUPmS+k7guOVl+BrZQjZcD9YqG6wLANK8cVoqfSyhNGwOSsak8//gR9YCimKQyaven
	WV3IZRKW6sSQDw9NX4JrrtTOtL/KUsr6FJzM+aQImAZtAJKPNTDPL8+NAXm52i0KS+QT8PHF600u2
	h3LtBEzg==;
Received: from [2601:1c2:980:9ec0::2764]
	by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
	id 1qQuX6-0034yw-0M;
	Tue, 01 Aug 2023 18:55:48 +0000
Message-ID: <08610e6b-e7eb-3442-b590-9d150f6556d6@infradead.org>
Date: Tue, 1 Aug 2023 11:55:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Keith Zhao <keith.zhao@starfivetech.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20230801101030.2040-1-keith.zhao@starfivetech.com>
 <20230801101030.2040-6-keith.zhao@starfivetech.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20230801101030.2040-6-keith.zhao@starfivetech.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 363E83EF12
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	RCVD_COUNT_ONE(0.00)[1];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[30];
	DMARC_NA(0.00)[infradead.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCVD_TLS_ALL(0.00)[]
Message-ID-Hash: URDEGGMAVOKVPKLTIZUK2RRAJ32YI6AZ
X-Message-ID-Hash: URDEGGMAVOKVPKLTIZUK2RRAJ32YI6AZ
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 v1 5/7] drm/vs: Register DRM device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/URDEGGMAVOKVPKLTIZUK2RRAJ32YI6AZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 8/1/23 03:10, Keith Zhao wrote:
> diff --git a/drivers/gpu/drm/verisilicon/Kconfig b/drivers/gpu/drm/verisilicon/Kconfig
> new file mode 100644
> index 000000000..fcc39dded
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/Kconfig
> @@ -0,0 +1,25 @@
> +# SPDX-License-Identifier: GPL-2.0
> +config DRM_VERISILICON
> +	tristate "DRM Support for VeriSilicon"
> +	depends on DRM
> +	select DRM_KMS_HELPER
> +	select DRM_GEM_DMA_HELPER
> +	select CMA
> +	select DMA_CMA
> +	help
> +	  Choose this option if you have a VeriSilicon soc chipset.

s/soc/SoC/ as used below.

> +	  This driver provides VeriSilicon kernel mode
> +	  setting and buffer management. It does not
> +	  provide 2D or 3D acceleration.
> +
> +if DRM_VERISILICON
> +
> +config STARFIVE_HDMI
> +	bool "Starfive specific extensions HDMI"
> +	help
> +	   This selects support for StarFive SoC specific extensions
> +	   for the Innosilicon HDMI driver. If you want to enable
> +	   HDMI on JH7110 based SoC, you should select this option.
> +
> +	   To compile this driver as a module, choose M here.
> +endif

-- 
~Randy
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
