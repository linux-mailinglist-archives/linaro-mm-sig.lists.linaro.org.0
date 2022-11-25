Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C4F638610
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 10:25:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A945A3EF24
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 09:25:40 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id F06E83EF09
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 09:25:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="Y9BvoI/R";
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669368330;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PdoQUUexZ7ga7BmgL2KbubMH7KSrCAhYA4sosdJ8U/Q=;
	b=Y9BvoI/RORKVkZpXw6zROBIajuNoWVtIashLuZmi7K3w8bIr/6MW+b0eLO1oPhkhUOyNIe
	mhdkYHS6lcQvo7ZBesJJCaL8bq65TIGhCLTD2wqeQdcdlqkSunGXmWGiPZUxQlpw82tGW1
	fpQygSvz7r9hyFWNj5wCXEn5CM4n/O8=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-187-P-DoA9_LMua60eQpPpnOIw-1; Fri, 25 Nov 2022 04:25:29 -0500
X-MC-Unique: P-DoA9_LMua60eQpPpnOIw-1
Received: by mail-wm1-f69.google.com with SMTP id c187-20020a1c35c4000000b003cfee3c91cdso2157583wma.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 01:25:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PdoQUUexZ7ga7BmgL2KbubMH7KSrCAhYA4sosdJ8U/Q=;
        b=Zzx1mhFSQU4rGToCvBGJie878QjipECX4kj+2b90NITo+HCuTuutNBecrVIc3E3np9
         y0gbwOdkELntMKPXi3+QXhPjgK2dFquUqF85imbnlKL1VY5CK9blcq4m4KvlxjyjefEv
         iiYdl3Dbn1dxpo1zfwClx10DYB1mWPep1TbjVViot9M6LaWuzkGMN3B/4VC3tiO61dWD
         HlmNvuDcuIUtRTqhrlr5mAibHHRs3AtbSXP1HrIL+gmaBr0AR7dLss/LFY3+HskeJGPj
         QS6/4/ZQLKxfHsKjL6nNkRBPTOVlOPcuYkvGFmFOFN2/F1SJit4bPcSZ8DQWCNMOZYLi
         TgWA==
X-Gm-Message-State: ANoB5plcn0qedn/ReWhbe+kB21YH/UJA5xR/TRla171raTntcQY7jIFS
	3WD7N3zXN/RY+kD0VSgBl0x1htZpTnoM8QrVSb1/kkOL8T3dGsh+2ZrCXqjb5X5uB5MyUkxJ/Nh
	EyV16SHtTRUORU7hB8f5X21daJMY=
X-Received: by 2002:a05:600c:3501:b0:3c7:4f0:77b3 with SMTP id h1-20020a05600c350100b003c704f077b3mr13270560wmq.93.1669368328286;
        Fri, 25 Nov 2022 01:25:28 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4vxRVWps62Nub/Y/bXYoNoPFQkcrqfFgC4Xw+JywmVH37euSYEJ8/pRQ9JWKoQwlq2n7w9Uw==
X-Received: by 2002:a05:600c:3501:b0:3c7:4f0:77b3 with SMTP id h1-20020a05600c350100b003c704f077b3mr13270533wmq.93.1669368328022;
        Fri, 25 Nov 2022 01:25:28 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id b17-20020a5d4b91000000b0024207478de3sm664177wrt.93.2022.11.25.01.25.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 01:25:26 -0800 (PST)
Message-ID: <56cbef35-da0e-d278-fef5-83b0944ed416@redhat.com>
Date: Fri, 25 Nov 2022 10:25:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-4-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-4-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: F06E83EF09
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.128.69:received,92.176.231.205:received];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[170.10.129.124:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XACVOGNM3PHNXJOS6LA2ATIM4C7WA75H
X-Message-ID-Hash: XACVOGNM3PHNXJOS6LA2ATIM4C7WA75H
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/24] drm/tests: helpers: Switch to a platform_device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XACVOGNM3PHNXJOS6LA2ATIM4C7WA75H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> The device managed resources are ran if the device has bus, which is not
> the case of a root_device.
> 
> Let's use a platform_device instead.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/tests/drm_kunit_helpers.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
> index 2f974f45c5b4..651aa93a98a8 100644
> --- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
> +++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
> @@ -6,6 +6,7 @@
>  #include <kunit/resource.h>
>  
>  #include <linux/device.h>
> +#include <linux/platform_device.h>
>  
>  #include "drm_kunit_helpers.h"
>  
> @@ -20,12 +21,26 @@ static const struct drm_mode_config_funcs drm_mode_config_funcs = {
>  
>  struct device *drm_kunit_helper_alloc_device(struct kunit *test)
>  {
> -	return root_device_register(FAKE_DEVICE_NAME);
> +	struct platform_device *pdev;
> +	int ret;
> +
> +	ret = platform_driver_register(&fake_platform_driver);

Maybe the platform_driver_register() is something that should be done
in the drm_client_modeset_test_init() callback ?

I would also as a part of this series rename the kunit_suite from
"drm_test_pick_cmdline_test_suite" to "drm_test_modeset_test_suite"
or something like that. Since you are already setting the .init and
.exit callbacks to allocate and release the devices. So it is more
than just a test suite for cmdline params testing.

> +	KUNIT_ASSERT_EQ(test, ret, 0);
> +
> +	pdev = platform_device_alloc(FAKE_DEVICE_NAME, PLATFORM_DEVID_NONE);
> +	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, pdev);
> +
> +	ret = platform_device_add(pdev);
> +	KUNIT_ASSERT_EQ(test, ret, 0);
> +
> +	return &pdev->dev;
>  }
>

Probably won't do it as a part of this series to avoid making it cross
subsystem, but I think there's room to further consolidation since this
helper seems to be quite generic and something that would be useful for
other subsystems. So it would make sense for kunit to have helpers to
manage platform drivers and devices.

In fact, I see that drivers/base/test/test_async_driver_probe.c already
has similar helpers that could be exposed to the rest of the kernel.

The patch looks good to me though and any of these changes could be done
as a follow-up:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
