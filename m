Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A90ACE431
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Jun 2025 20:14:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B864C44492
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Jun 2025 18:14:18 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 8709844491
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Jun 2025 18:14:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C089612FC;
	Wed,  4 Jun 2025 11:13:49 -0700 (PDT)
Received: from [10.57.26.187] (unknown [10.57.26.187])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D96B3F5A1;
	Wed,  4 Jun 2025 11:14:02 -0700 (PDT)
Message-ID: <921810b5-436e-4402-8304-9ba2eb335ed9@arm.com>
Date: Wed, 4 Jun 2025 19:14:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-5-237ac75ddb5e@tomeuvizoso.net>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20250604-6-10-rocket-v6-5-237ac75ddb5e@tomeuvizoso.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	DNSWL_BLOCKED(0.00)[217.140.110.172:from];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[tomeuvizoso.net,kernel.org,sntech.de,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,oss.qualcomm.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-0.996];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[]
X-Rspamd-Queue-Id: 8709844491
X-Spamd-Bar: --
Message-ID-Hash: ZWYCLF2KSDB7443GFHHA7DM4VJUCP3LP
X-Message-ID-Hash: ZWYCLF2KSDB7443GFHHA7DM4VJUCP3LP
X-MailFrom: robin.murphy@arm.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 05/10] accel/rocket: Add a new driver for Rockchip's NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZWYCLF2KSDB7443GFHHA7DM4VJUCP3LP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

[ Since Daniel made me look... ]

On 2025-06-04 8:57 am, Tomeu Vizoso wrote:
[...]
> diff --git a/drivers/accel/rocket/Kconfig b/drivers/accel/rocket/Kconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..9a59c6c61bf4d6460d8008b16331f001c97de67d
> --- /dev/null
> +++ b/drivers/accel/rocket/Kconfig
> @@ -0,0 +1,25 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +config DRM_ACCEL_ROCKET
> +       tristate "Rocket (support for Rockchip NPUs)"
> +       depends on DRM
> +       depends on ARM64 || COMPILE_TEST

Best make that "(ARCH_ROCKCHIP && ARM64) || COMPILE_TEST" now before 
someone else inevitably does. Or perhaps just a pre-emptive 
"ARCH_ROCKCHIP || COMPILE_TEST" if this is the same NPU that's in RV1126 
etc.

> +       depends on MMU
> +       select DRM_SCHED
> +       select IOMMU_SUPPORT

Selecting user-visible symbols is often considered bad form, but this 
one isn't even functional - all you're doing here is forcing the 
top-level availability of all the IOMMU driver/API options.

If you really want to nanny the user and dissuade them from building a 
config which is unlikely to be useful in practice, then at best maybe 
"depends on ROCKCHIP_IOMMU || COMPILE_TEST", but TBH I wouldn't even 
bother with that. Even if you want to rely on using the IOMMU client API 
unconditionally, it'll fail decisively enough at runtime if there's no 
IOMMU present (or the API is stubbed out entirely).

> +       select IOMMU_IO_PGTABLE_LPAE

And I have no idea what this might think it's here for :/

Thanks,
Robin.

> +       select DRM_GEM_SHMEM_HELPER
> +       help
> +	  Choose this option if you have a Rockchip SoC that contains a
> +	  compatible Neural Processing Unit (NPU), such as the RK3588. Called by
> +	  Rockchip either RKNN or RKNPU, it accelerates inference of neural
> +	  networks.
> +
> +	  The interface exposed to userspace is described in
> +	  include/uapi/drm/rocket_accel.h and is used by the Rocket userspace
> +	  driver in Mesa3D.
> +
> +	  If unsure, say N.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called rocket.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
