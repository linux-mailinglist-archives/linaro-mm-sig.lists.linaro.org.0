Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCDC63D2D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 11:10:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E05483EF89
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 10:10:14 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 046533EE5B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 10:10:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="gzAjGg/q";
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669803005;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NoPdGdP1XN2IHlWy3xzG7ljlYAvy6qLxs9MsnW+HAEQ=;
	b=gzAjGg/qKoZteQ2PO0BW7OLOPPMWVDpkK0JOGYbULTeybhuAchYRw2hmbxA2hXFWSX9LC0
	UDmek+iHABL+KDqKwH/fsN4ikQhdnfADFoU00LGowxuSv1avhPb0m9KThyZqQvIjgE/Tme
	C4uw/qwCAJiWc1VD47DnSmwirEwk4MQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-575-wSGCxehvPmqZBjHp68NqWg-1; Wed, 30 Nov 2022 05:10:02 -0500
X-MC-Unique: wSGCxehvPmqZBjHp68NqWg-1
Received: by mail-wm1-f72.google.com with SMTP id c187-20020a1c35c4000000b003cfee3c91cdso9171963wma.6
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 02:10:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NoPdGdP1XN2IHlWy3xzG7ljlYAvy6qLxs9MsnW+HAEQ=;
        b=fyXdxUyCYsWAUGjAk5TbaVLqyQYU0KPBJVzJf+hD0cVvavNQbGACLVNNWJNaZoSWz5
         FE3McU7J1OkmbtZSUdr4IupYwTKIKzvIi4CoCVLY2HiyY05CejIkwxkFd4YYEK+qifiu
         IVxHQqGeqpUKcBg5ptxzRIlUiN9HISWeY31iG6K89/A59OfPls61AUSJdY0lYhj2IFHE
         Lm5svRAluG7UpL9RumrKFAd2E8JJrB/dCb6nJ8ielmKPnl6pMLP3f7E5ouxIPPJmPbSJ
         J1zKMLwoyGK2yFUYSKl9Ml8cA9gByoIBDjdfX4uGBZoqTV39AWKKM3kEW/SL1UGe9mqh
         q6vw==
X-Gm-Message-State: ANoB5pll54RDnSpr0iwrRqdhVgdEoVtG+z1ekIynPqW1HLca1tto5n3z
	H9is7pTR9fLmHaTUsTpiO+A0UMgPyf/29GhGphi5IcelHls9Sn6XsHp7Bp6NsQm66K/DcsfIw+L
	mak1Lsi/HXA55/LWi36Yclbo3g+0=
X-Received: by 2002:a5d:504d:0:b0:242:246c:2f89 with SMTP id h13-20020a5d504d000000b00242246c2f89mr3758395wrt.108.1669803000956;
        Wed, 30 Nov 2022 02:10:00 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5FkWQT/k1GHgrsZnt54cNcc31t/15SG2tVARml33QGcmHm1VSq1hvfrPDi51V6Qbq5abMc4Q==
X-Received: by 2002:a5d:504d:0:b0:242:246c:2f89 with SMTP id h13-20020a5d504d000000b00242246c2f89mr3758377wrt.108.1669803000781;
        Wed, 30 Nov 2022 02:10:00 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id b18-20020a5d5512000000b0023c8026841csm514653wrv.23.2022.11.30.02.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 02:10:00 -0800 (PST)
Message-ID: <31351d94-91ba-b0fe-cb20-3dcc8254fb66@redhat.com>
Date: Wed, 30 Nov 2022 11:09:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-16-efe5ed518b63@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-16-efe5ed518b63@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 046533EE5B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
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
Message-ID-Hash: EGAQZ53QBDSEBYWI7N6YDDFK4LREHMLC
X-Message-ID-Hash: EGAQZ53QBDSEBYWI7N6YDDFK4LREHMLC
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 16/17] drm/vc4: tests: Fail the current test if we access a register
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EGAQZ53QBDSEBYWI7N6YDDFK4LREHMLC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/28/22 15:53, Maxime Ripard wrote:
> Accessing a register when running under kunit is a bad idea since our
> device is completely mocked.
> 
> Fail the current test if we ever access any of our hardware registers.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

[...]

> -#define CRTC_WRITE(offset, val) writel(val, vc4_crtc->regs + (offset))
> -#define CRTC_READ(offset) readl(vc4_crtc->regs + (offset))
> +#define CRTC_WRITE(offset, val)								\
> +	do {										\
> +		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
> +		writel(val, vc4_crtc->regs + (offset));					\
> +	} while (0)
> +
> +#define CRTC_READ(offset)								\
> +	({										\
> +		kunit_fail_current_test("Accessing a register in a unit test!\n");	\
> +		readl(vc4_crtc->regs + (offset));					\
> +	})
> 

Should this be made conditional on whether DRM_VC4_KUNIT_TEST is enabled ? 

That is, just define the simpler macros when is disabled? The kunit_fail_current_test()
is just a no-op if CONFIG_KUNIT isn't enabled, but I think my question still stands.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
