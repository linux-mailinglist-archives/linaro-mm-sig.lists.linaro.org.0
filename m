Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7088D6385B0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 09:57:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2679E3EF52
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 08:57:37 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 46EA73EF12
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 08:57:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=LPpNh+n1;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669366647;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5Zasw8bTF5Rv7J9KCKu2Jsu6Fuo3MdgsNAsJkLxlZjY=;
	b=LPpNh+n1prqno3RBgrlj6Pspx4skPv2W8uE/ENxgV9NDKxqp0LCphbMuyZm2WsMJcpEa5Z
	+rFStnX51h4NiTwx/vtxESKP4Pn3gu5evdHtcwCEzESiz9nQt4wQ1GU2D1nrsXmnsfMO6Q
	L6GV1+jCHcU2Uk/mtKUc0RwRkRmbQ0A=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-139-xIN5c1gjOdq7JEJDZF3srA-1; Fri, 25 Nov 2022 03:57:26 -0500
X-MC-Unique: xIN5c1gjOdq7JEJDZF3srA-1
Received: by mail-wm1-f72.google.com with SMTP id az40-20020a05600c602800b003cfa26c40easo3686329wmb.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 00:57:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Zasw8bTF5Rv7J9KCKu2Jsu6Fuo3MdgsNAsJkLxlZjY=;
        b=L0gI8alH53687z+gXSh6Zm6k6zhIZGKFaPtMR6rwZEbmVxIBx49RVSGJKFVi6a3w5O
         RE0aKmNKMizXmRK/SygNcn3wmiYiuyLXtwhRCiWJYRn/pN5RHkvFjubJWsM/TioC7+2m
         l6WLiq9HIFf6EQIHzi/LgDn0p92i2yft+wOyCiP0PUaWvJPkcJ1UqR9yxWdhjm1qp7GG
         NkqfeMJwc/lXbIElZ2TWd2zhhpHAZQVLA2Alf6wQ+tYmknuRKdAeqIyct1J3ZTELt6CI
         fnvEOI0+XasuNmF1QK7bFYAKrdWsfBJnaE14gcgNrLbGxH1pz84rQ9ILajO90cCgGPos
         Ep6w==
X-Gm-Message-State: ANoB5pkWgDDFwU+fgGErs7vV8kOdXcB/FDpgg3wOV9fZ/RGb++8iVPHt
	bYGZGhOwLnLuSiKO36eQRhZFMT12rMYvpxKouzkyqt4QbBRPNeDjSNaGhyohltlySyVgkBOkHzf
	EN8ny6R9loOBI49GjF8hz1Px9k3E=
X-Received: by 2002:adf:de8f:0:b0:241:df57:80a7 with SMTP id w15-20020adfde8f000000b00241df5780a7mr11243000wrl.191.1669366645225;
        Fri, 25 Nov 2022 00:57:25 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6I9dIfw7rl+C6lpH9D4FzplrH7lHVT+4+0sx5/OzVH2zqrsMW/YbaUpZl0bbTphLuFhCwwqA==
X-Received: by 2002:adf:de8f:0:b0:241:df57:80a7 with SMTP id w15-20020adfde8f000000b00241df5780a7mr11242992wrl.191.1669366645018;
        Fri, 25 Nov 2022 00:57:25 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id i19-20020a1c5413000000b003cfc02ab8basm8929498wmb.33.2022.11.25.00.57.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 00:57:24 -0800 (PST)
Message-ID: <cb95b9c7-a975-1990-caed-a7ce80860809@redhat.com>
Date: Fri, 25 Nov 2022 09:57:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-2-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-2-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 46EA73EF12
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[92.176.231.205:received];
	RCVD_COUNT_THREE(0.00)[4];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IQG3PVA2TOCOMNAKC7UHOCYXYSQ4E6WW
X-Message-ID-Hash: IQG3PVA2TOCOMNAKC7UHOCYXYSQ4E6WW
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/24] drm/tests: helpers: Remove the name parameter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IQG3PVA2TOCOMNAKC7UHOCYXYSQ4E6WW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> The device name isn't really useful, we can just define it instead of
> exposing it in the API.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/tests/drm_client_modeset_test.c | 2 +-
>  drivers/gpu/drm/tests/drm_kunit_helpers.c       | 6 ++++--
>  drivers/gpu/drm/tests/drm_kunit_helpers.h       | 3 +--
>  3 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/tests/drm_client_modeset_test.c b/drivers/gpu/drm/tests/drm_client_modeset_test.c
> index e469d1634e2d..6920c3ffdfdf 100644
> --- a/drivers/gpu/drm/tests/drm_client_modeset_test.c
> +++ b/drivers/gpu/drm/tests/drm_client_modeset_test.c
> @@ -41,7 +41,7 @@ static int drm_client_modeset_test_init(struct kunit *test)
>  
>  	test->priv = priv;
>  
> -	priv->drm = drm_kunit_helper_alloc_drm_device(test, DRIVER_MODESET, "drm-client-modeset-test");
> +	priv->drm = drm_kunit_helper_alloc_drm_device(test, DRIVER_MODESET);
>  	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->drm);
>  
>  	ret = drmm_connector_init(priv->drm, &priv->connector,
> diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
> index a4ad030ed101..7f69f56f5892 100644
> --- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
> +++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
> @@ -9,6 +9,8 @@
>  
>  #include "drm_kunit_helpers.h"
>  
> +#define FAKE_DEVICE_NAME	"drm-kunit-fake-device"
> +

I think that KUNIT_DEVICE_NAME and "drm-kunit-mock-device" are more descriptive
names here. But I'm also OK with the patch as is.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
