Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E236387E8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:52:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1ABA3EF19
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 10:52:48 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id C5CB63ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 10:52:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Lw3W5xY9;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669373560;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=n34PtEGmQl2cURfa8hQ8Z0O727ShHGnHNNaASPtHi8s=;
	b=Lw3W5xY95be4kkjKzcm0VpPLxb6OzLO0mPdwGG5CoTfaiQOGSy07/wvNmA5y55dldK9pGu
	40vkrYMBF1wg6B0ztgByTMENp5a9BBaoz8YEtj+XG/1zItgIL5kLvdkicXBUGw23Wakp7q
	+eYWj8sxHBfXXdINKLgSeSfPny6Hyag=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-163-B5piF75TOzGG_NGqoSkuJA-1; Fri, 25 Nov 2022 05:52:38 -0500
X-MC-Unique: B5piF75TOzGG_NGqoSkuJA-1
Received: by mail-wr1-f71.google.com with SMTP id w11-20020adfbacb000000b002418a90da01so767786wrg.16
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 02:52:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n34PtEGmQl2cURfa8hQ8Z0O727ShHGnHNNaASPtHi8s=;
        b=6J7149GbWVGfwSGhWkz6xyGAa1Y0i+bKuk8RuZV5XQOUzq0kmgY1IdChyYOh4cNqgf
         T5TaD9jywAzsJKhTMy/owpy8kYp6oqUc6Sa+mNZpx7dEVo7I3NDKhlUdgvs/h3GqmdSW
         nUNah4a5VgUU2ug/UZku4p2ghT54b4N4d4wXld1rghstZlkSF6LbYTQC08GbQh7MwrJH
         KEUHsHLpbhXRwq6FO+19Frb4gg0uZOz0YQAHmVY4KSvQ9V7S6XuL5hWpYJ1lqltzWbdw
         Ay9n555q6X0FY5Hxdzzuucq0jpQzEOXkMcDoAKuM2Oqq94+t8SMBE5XyeiLXBDnfWf+J
         FcRA==
X-Gm-Message-State: ANoB5pkfbBTLjNNyjuUxrLeizTdepqLNjhEQ8q0r4492JbQSe705ZHG3
	+LTk6E6szQ/eVValPQfoF81H3KVOEMNZl1GTCqQ2jo9f517hN5X1cwvkSnH70LV3L2XHqMf0157
	uZ5UfWfqGmjx7vWSWgBDUgVcun4w=
X-Received: by 2002:a5d:4090:0:b0:241:f675:c8cf with SMTP id o16-20020a5d4090000000b00241f675c8cfmr6482872wrp.480.1669373557799;
        Fri, 25 Nov 2022 02:52:37 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7YGj/u+vP3B6vxPKX/gUeG9Vi/HtdJMIkrGamAVZQ8SKuDoVi0lFd+x2jy0Z4gG5Pm/rZvXw==
X-Received: by 2002:a5d:4090:0:b0:241:f675:c8cf with SMTP id o16-20020a5d4090000000b00241f675c8cfmr6482859wrp.480.1669373557617;
        Fri, 25 Nov 2022 02:52:37 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id t2-20020a5d42c2000000b0023662d97130sm3426522wrr.20.2022.11.25.02.52.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 02:52:37 -0800 (PST)
Message-ID: <222411cb-0942-8b14-8f6d-e0184233cebb@redhat.com>
Date: Fri, 25 Nov 2022 11:52:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-8-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-8-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: C5CB63ED3C
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.50)[170.10.129.124:from,92.176.231.205:received,209.85.221.71:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VPUIJSMEVMC5BFMXWU2KLNUE66QCYCAH
X-Message-ID-Hash: VPUIJSMEVMC5BFMXWU2KLNUE66QCYCAH
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/24] drm/tests: Add a test for DRM managed actions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VPUIJSMEVMC5BFMXWU2KLNUE66QCYCAH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> DRM-managed actions are supposed to be ran whenever the device is
> released. Let's introduce a basic unit test to make sure it happens.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/tests/Makefile           |  1 +
>  drivers/gpu/drm/tests/drm_managed_test.c | 68 ++++++++++++++++++++++++++++++++
>  2 files changed, 69 insertions(+)
> 
> diff --git a/drivers/gpu/drm/tests/Makefile b/drivers/gpu/drm/tests/Makefile
> index b29ef1085cad..35962c6ef0c4 100644
> --- a/drivers/gpu/drm/tests/Makefile
> +++ b/drivers/gpu/drm/tests/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_DRM_KUNIT_TEST) += \
>  	drm_format_test.o \
>  	drm_framebuffer_test.o \
>  	drm_kunit_helpers.o \
> +	drm_managed_test.o \
>  	drm_mm_test.o \
>  	drm_plane_helper_test.o \
>  	drm_rect_test.o
> diff --git a/drivers/gpu/drm/tests/drm_managed_test.c b/drivers/gpu/drm/tests/drm_managed_test.c
> new file mode 100644
> index 000000000000..4fc11b289d9e
> --- /dev/null
> +++ b/drivers/gpu/drm/tests/drm_managed_test.c
> @@ -0,0 +1,68 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <drm/drm_drv.h>
> +#include <drm/drm_managed.h>
> +
> +#include <kunit/resource.h>
> +
> +#include <linux/device.h>
> +
> +#include "drm_kunit_helpers.h"
> +
> +#define TEST_TIMEOUT_MS	100
> +

Why did you choose this timeout value? Maybe we can add some comments
explaining the rationale.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
