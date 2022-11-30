Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DB663D2A5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 10:59:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A38543EF89
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 09:59:51 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 48F423EE5F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 09:59:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=XNdEUaaq;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669802382;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=i9YloUXR8YgxG0RXDuEgcRvlMcfIOaju0pjadJIoBw0=;
	b=XNdEUaaqVimai4+9Tmo2Cw5KqwPbPIuIX7tj8HCV+UUpifoKX4pdCCkkwYftXmg3iKyP3X
	5k2XVtwqPcnvxNIiBh51ndP333yNeFqNCR9vwJWiKRSkyq5OL+bzr0ImP5Dp2N7XXBEcRe
	+Uzl+I3St+8GfrzonZYzdu32RiDEKh0=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-383-mURDYACzOWCS4rR9KBB5Fw-1; Wed, 30 Nov 2022 04:59:40 -0500
X-MC-Unique: mURDYACzOWCS4rR9KBB5Fw-1
Received: by mail-wm1-f70.google.com with SMTP id c1-20020a7bc001000000b003cfe40fca79so450841wmb.6
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 01:59:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i9YloUXR8YgxG0RXDuEgcRvlMcfIOaju0pjadJIoBw0=;
        b=Krsa7c9Ng9L9RXp/8POsnEwuTsfz0wn+rOvam3HgvQrwvpYomSQx6Z6hZlftEZeRzc
         v6fNEeNrO+gUaQqhqQG4bdtnGtV3bOfdueh74FdodrDWjgHKqMn5aQudRCyM43u3w/zq
         U5Q5MWV1Lqkok+HBLdsL798KsaJcbrkRcnDy1YccwP6gIBqXevvCiIq2UwvGBUdXiSCY
         /pRyjNtktxZe208homGXnIp7eBPBYwvIy4YjDrcw17jgaDFxgA+YMUXPI4e+QboJz1Ia
         R2vwcznNSoamUxXck/E2R+Gx0vpH/7AdVFnBdLZTU3/WNM7XQo6X8b5z9N4BxvuUJ5kn
         OcvA==
X-Gm-Message-State: ANoB5pl/f3yLeRHp2e8HVziqDaN0aDiwZ+hUybdOSIJ1HGiUIdwOpq5n
	STZRQC45vV63O4zBPVy+ONmu418MhJ/w7vxKNIVU1RRyBpHHJGq0uPr4ZVw/E1u6g/EBRqqqnyJ
	BFh4MHHxz83JWlTJmlUsGmCmW07g=
X-Received: by 2002:a1c:ed04:0:b0:3cf:d08d:3eb2 with SMTP id l4-20020a1ced04000000b003cfd08d3eb2mr44719683wmh.129.1669802379215;
        Wed, 30 Nov 2022 01:59:39 -0800 (PST)
X-Google-Smtp-Source: AA0mqf79VoYVflQvJw4f+0ufZcLu3pjWScxDx/iG55eOd/S6Dqx9Zr87reES7FRBY59uRsQEURml4w==
X-Received: by 2002:a1c:ed04:0:b0:3cf:d08d:3eb2 with SMTP id l4-20020a1ced04000000b003cfd08d3eb2mr44719668wmh.129.1669802379003;
        Wed, 30 Nov 2022 01:59:39 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id fc13-20020a05600c524d00b003d04e4ed873sm5840399wmb.22.2022.11.30.01.59.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 01:59:38 -0800 (PST)
Message-ID: <98d47486-d04c-b81a-6ae4-fa7f62828a0e@redhat.com>
Date: Wed, 30 Nov 2022 10:59:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-15-efe5ed518b63@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-15-efe5ed518b63@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 48F423EE5F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: I5YE6R2YWNGEBYULHO5YUJT26M4FA5U3
X-Message-ID-Hash: I5YE6R2YWNGEBYULHO5YUJT26M4FA5U3
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 15/17] drm/vc4: tests: Introduce a mocking infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I5YE6R2YWNGEBYULHO5YUJT26M4FA5U3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/28/22 15:53, Maxime Ripard wrote:
> In order to test the current atomic_check hooks we need to have a DRM
> device that has roughly the same capabilities and layout that the actual
> hardware. We'll also need a bunch of functions to create arbitrary
> atomic states.
> 
> Let's create some helpers to create a device that behaves like the real
> one, and some helpers to maintain the atomic state we want to check.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

[...]

> +
> +config DRM_VC4_KUNIT_TEST
> +	bool "KUnit tests for VC4" if !KUNIT_ALL_TESTS
> +	depends on DRM_VC4 && KUNIT

shouldn't this depend on DRM_KUNIT_TEST instead ?

[...]

> +static struct vc4_dev *__mock_device(struct kunit *test, bool is_vc5)
> +{
> +	struct drm_device *drm;
> +	const struct drm_driver *drv = is_vc5 ? &vc5_drm_driver : &vc4_drm_driver;
> +	const struct vc4_mock_desc *desc = is_vc5 ? &vc5_mock : &vc4_mock;
> +	struct vc4_dev *vc4;

Since it could be vc4 or vc5, maybe can be renamed to just struct vc_dev *vc ?

> +struct vc4_dummy_plane *vc4_dummy_plane(struct kunit *test,
> +					struct drm_device *drm,
> +					enum drm_plane_type type)
> +{
> +	struct vc4_dummy_plane *dummy_plane;
> +	struct drm_plane *plane;
> +
> +	dummy_plane = drmm_universal_plane_alloc(drm,
> +						 struct vc4_dummy_plane, plane.base,
> +						 0,
> +						 &vc4_dummy_plane_funcs,
> +						 vc4_dummy_plane_formats,
> +						 ARRAY_SIZE(vc4_dummy_plane_formats),
> +						 NULL,
> +						 DRM_PLANE_TYPE_PRIMARY,
> +						 NULL);
> +	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, dummy_plane);
> +
> +	plane = &dummy_plane->plane.base;
> +	drm_plane_helper_add(plane, &vc4_dummy_plane_helper_funcs);
> +
> +	return dummy_plane;
> +}

I guess many of these helpers could grow to be generic, like this one since
most drivers support the DRM_FORMAT_XRGB8888 format for their primary plane.

[...]

>  
> +extern const struct vc4_pv_data bcm2835_pv0_data;
> +extern const struct vc4_pv_data bcm2835_pv1_data;
> +extern const struct vc4_pv_data bcm2835_pv2_data;
> +extern const struct vc4_pv_data bcm2711_pv0_data;
> +extern const struct vc4_pv_data bcm2711_pv1_data;
> +extern const struct vc4_pv_data bcm2711_pv2_data;
> +extern const struct vc4_pv_data bcm2711_pv3_data;
> +extern const struct vc4_pv_data bcm2711_pv4_data;
> +

Maybe the driver could expose a helper function to get the pixelvalve data
and avoid having to expose all of these variables? For example you could
define an enum vc4_pixelvalve type and have something like the following:

const struct vc4_pv_data *vc4_crtc_get_pixelvalve_data(enum vc4_pixelvalve pv);

All these are small nits though, the patch looks great to me and I think is
awesome to have this level of testing with KUnit. Hope other drivers follow
your lead.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
