Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B3D6387F8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:54:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 424EB3EF32
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 10:54:16 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 9718B3ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 10:54:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=IFO8O5CC;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669373647;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9tvd04/iu26771wlB7WciR/DkQpotQap05SOjl7Y+To=;
	b=IFO8O5CCbjGtmhQgqNuDDRkyEspYsmnx8s5Gmb51qDl3pWMB9sXL7HVH3/zISByJXCkQ7I
	VV4NAtp9Kl9LBBJ5eUseklz1viXCoob8rU7b4WgBD0uMAj6os50VUflohTaelRBmmLKPfM
	WGXaRm1I6yMKSmmD9YpiXxfK7Q3GgEY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-516-EKNuVO80Pwa8OSDO04I_4g-1; Fri, 25 Nov 2022 05:54:06 -0500
X-MC-Unique: EKNuVO80Pwa8OSDO04I_4g-1
Received: by mail-wm1-f71.google.com with SMTP id bg25-20020a05600c3c9900b003cf3ed7e27bso2264135wmb.4
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 02:54:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9tvd04/iu26771wlB7WciR/DkQpotQap05SOjl7Y+To=;
        b=xVeVfwzOMvCGn3jUq2WvOEnIOtf4Oy4d93G2GFG6GLP7wTRPFXSr20jY8hIwwlwfgB
         WCONzZ5Ovnjj4q/LiDgZBNNjbcbl/GWxjQFq6S9XvjY4zGFBp5NVL09rgs4lbU2nRCEc
         1T0os7F93BrGJkrr0jazPPngTVW4jqEdDGGQSUFPdZia45q8OJLwpO0o8WmjXJr5GjeD
         IE0cIxeBMsIdyjJNu1U1qnHgMfgw1s9n+Vc0vFjGVL7Itu/8y56P0mrEgxx7hTb0AFdT
         UUP+Y7CCkX2R2Be646hZP1cCCB6SVptxCWNKril3mbRlPyvfSDac1qP488F/wmfxNk+S
         Tyhg==
X-Gm-Message-State: ANoB5pnfLVXpPL+yJhp/ArVfh4CVtFSmg9O/7CCJ2TCpIgbgQL91WbtN
	JYj5IvQ1vyDKEcnzmuC3AAw9sMm6UDyApLVuPdK9rpj1p1tfgWKe/R1tpo3QA/nuVwkWdFmUdpT
	OorP+5WvfS9Nr7YCuRmPWc6iRNBs=
X-Received: by 2002:adf:e94c:0:b0:236:6d79:b312 with SMTP id m12-20020adfe94c000000b002366d79b312mr22866555wrn.699.1669373645074;
        Fri, 25 Nov 2022 02:54:05 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4MhXPJaPoTEfI4yng3ZY2kweBGK0CbbycrpZOheo/dL+NoYUdJpT+aQbCzIEhJ5+Sz9WdagQ==
X-Received: by 2002:adf:e94c:0:b0:236:6d79:b312 with SMTP id m12-20020adfe94c000000b002366d79b312mr22866536wrn.699.1669373644817;
        Fri, 25 Nov 2022 02:54:04 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id l11-20020a1c790b000000b003b4a699ce8esm8527114wme.6.2022.11.25.02.54.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 02:54:04 -0800 (PST)
Message-ID: <1b0c23f4-eb5c-38d2-b1ff-541140ac32a0@redhat.com>
Date: Fri, 25 Nov 2022 11:54:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-9-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-9-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 9718B3ED3C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[92.176.231.205:received,209.85.128.71:received];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[170.10.133.124:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.133.124:from];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ILCMVDPPPMRK23QLSZQLY25SL2HGM64Z
X-Message-ID-Hash: ILCMVDPPPMRK23QLSZQLY25SL2HGM64Z
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/24] drm/atomic: Constify the old/new state accessors
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ILCMVDPPPMRK23QLSZQLY25SL2HGM64Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> The drm_atomic_get_(old|new)_*_state don't modify the passed
> drm_atomic_state, so we can make it const.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
