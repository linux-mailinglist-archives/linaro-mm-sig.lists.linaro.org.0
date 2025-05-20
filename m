Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C5DABD558
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 May 2025 12:42:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0301D40C69
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 May 2025 10:42:43 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	by lists.linaro.org (Postfix) with ESMTPS id 6F1FC40C69
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 May 2025 10:42:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of l.stach@pengutronix.de designates 185.203.201.7 as permitted sender) smtp.mailfrom=l.stach@pengutronix.de;
	dmarc=none
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1uHKPz-0001aN-MM; Tue, 20 May 2025 12:41:55 +0200
Message-ID: <e7c08305612e7323ca9d9ff6c44f3e2b63f171ff.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Oded Gabbay
 <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sebastian
 Reichel <sebastian.reichel@collabora.com>,  Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Date: Tue, 20 May 2025 12:41:47 +0200
In-Reply-To: <20250520-6-10-rocket-v5-8-18c9ca0fcb3c@tomeuvizoso.net>
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
	 <20250520-6-10-rocket-v5-8-18c9ca0fcb3c@tomeuvizoso.net>
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ONCE_RECEIVED(0.20)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:209379, ipnet:185.203.200.0/22, country:DE];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[tomeuvizoso.net,kernel.org,sntech.de,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,oss.qualcomm.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 6F1FC40C69
X-Spamd-Bar: -
Message-ID-Hash: U64YER42RLH54XDC2QRR34BSB2YPLQKA
X-Message-ID-Hash: U64YER42RLH54XDC2QRR34BSB2YPLQKA
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 08/10] accel/rocket: Add IOCTLs for synchronizing memory accesses
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U64YER42RLH54XDC2QRR34BSB2YPLQKA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Tomeu,

Am Dienstag, dem 20.05.2025 um 12:27 +0200 schrieb Tomeu Vizoso:
> The NPU cores have their own access to the memory bus, and this isn't
> cache coherent with the CPUs.
> 
> Add IOCTLs so userspace can mark when the caches need to be flushed, and
> also when a writer job needs to be waited for before the buffer can be
> accessed from the CPU.
> 
> Initially based on the same IOCTLs from the Etnaviv driver.
> 
> v2:
> - Don't break UABI by reordering the IOCTL IDs (Jeff Hugo)
> 
> v3:
> - Check that padding fields in IOCTLs are zero (Jeff Hugo)
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>  drivers/accel/rocket/rocket_drv.c |  2 +
>  drivers/accel/rocket/rocket_gem.c | 80 +++++++++++++++++++++++++++++++++++++++
>  drivers/accel/rocket/rocket_gem.h |  5 +++
>  include/uapi/drm/rocket_accel.h   | 37 ++++++++++++++++++
>  4 files changed, 124 insertions(+)
> 
> diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
> index fef9b93372d3f65c41c1ac35a9bfa0c01ee721a5..c06e66939e6c39909fe08bef3c4f301b07bf8fbf 100644
> --- a/drivers/accel/rocket/rocket_drv.c
> +++ b/drivers/accel/rocket/rocket_drv.c
> @@ -59,6 +59,8 @@ static const struct drm_ioctl_desc rocket_drm_driver_ioctls[] = {
>  
>  	ROCKET_IOCTL(CREATE_BO, create_bo),
>  	ROCKET_IOCTL(SUBMIT, submit),
> +	ROCKET_IOCTL(PREP_BO, prep_bo),
> +	ROCKET_IOCTL(FINI_BO, fini_bo),
>  };
>  
>  DEFINE_DRM_ACCEL_FOPS(rocket_accel_driver_fops);
> diff --git a/drivers/accel/rocket/rocket_gem.c b/drivers/accel/rocket/rocket_gem.c
> index 8a8a7185daac4740081293aae6945c9b2bbeb2dd..cdc5238a93fa5978129dc1ac8ec8de955160dc18 100644
> --- a/drivers/accel/rocket/rocket_gem.c
> +++ b/drivers/accel/rocket/rocket_gem.c
> @@ -129,3 +129,83 @@ int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *
>  
>  	return ret;
>  }
> +
> +static inline enum dma_data_direction rocket_op_to_dma_dir(u32 op)
> +{
> +	if (op & ROCKET_PREP_READ)
> +		return DMA_FROM_DEVICE;
> +	else if (op & ROCKET_PREP_WRITE)
> +		return DMA_TO_DEVICE;
> +	else
> +		return DMA_BIDIRECTIONAL;
> +}

This has copied over the bug fixed in etnaviv commit 58979ad6330a
("drm/etnaviv: fix DMA direction handling for cached RW buffers")

Regards,
Lucas
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
