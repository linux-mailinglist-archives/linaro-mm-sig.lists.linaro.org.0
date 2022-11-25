Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD0463873D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:19:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 672933EA4F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 10:19:54 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 0936F3EA4F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 10:19:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=LslNpIFm;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669371584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bY19rPV8ppg6ZUdn2yxRqF47aTG2fFJ0ZNtqig4Q8uo=;
	b=LslNpIFmynSyVLSqmAsEBFHF7IOSawKCgbi+5Vl+Zy6tFIzTVWUDL74pPw278nB7HcnsMm
	DuYIqMLUMnco7/6ysQ9ixs2bQemM0/iTj5WcL3AQWDBRJOBUjflpHt6vGnghQ8EpPM0xwf
	l/0fU4CaGnfKbpS4OBrbSuDM/cJGBlc=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-470-Dq9xR3BcOUqt2EUoGY7GvQ-1; Fri, 25 Nov 2022 05:19:43 -0500
X-MC-Unique: Dq9xR3BcOUqt2EUoGY7GvQ-1
Received: by mail-wm1-f72.google.com with SMTP id c126-20020a1c3584000000b003cfffcf7c1aso4009266wma.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 02:19:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bY19rPV8ppg6ZUdn2yxRqF47aTG2fFJ0ZNtqig4Q8uo=;
        b=ZfZmJbw2JPEXg8ooOf9kkLHewZENRMG466WIkH63mF3fMRgzPIbZyCLJiwR42D0qkp
         v2yA+xKtLueHWJWPYRz9cx5W3Hbj8jsrNyx9AbO6q5T6YcBE+oPt33C3JN81XrXEYVui
         KQLgNAZtth9D9eWOM+N+Lz+ZagufhaOSPVf4ZzHoxmJkT6+2aVLD7s1smBxDfVPLyF5n
         JFLPhFDvC54A/cLllmNf1EJ+Ix8kaaxhoqFl+F7i01qgkJ2TYUjqbxmR16lGtnmig6Gi
         96z+W7XGnr7oVPi/GoqzS3kvDhtupjzK22ufXfnwVEHOMe+95WLVFqkUnDzhGB1ITPQs
         OP+A==
X-Gm-Message-State: ANoB5pmyeEjcp5YUXe6QQha6wt83w3ABx+bq7FZ6Knf4OyxeuzauDVRv
	moHoDgOsmcT2IllPOrJItEFVrRDMcdUpYeDr+tQ/okRKwOVmx9rfyAXyz/LhIOIbyt+gUJX7J3u
	uW/xr1yTow5y74Q/HipyeTocANfQ=
X-Received: by 2002:adf:f189:0:b0:241:bc9e:a238 with SMTP id h9-20020adff189000000b00241bc9ea238mr12437047wro.558.1669371581920;
        Fri, 25 Nov 2022 02:19:41 -0800 (PST)
X-Google-Smtp-Source: AA0mqf733o27EIhWoSlUjNsa9tcFhysJWN14yjguQxBT++y7CLSBTY7xXokXb5BEj/8z8JRbucHxIA==
X-Received: by 2002:adf:f189:0:b0:241:bc9e:a238 with SMTP id h9-20020adff189000000b00241bc9ea238mr12437025wro.558.1669371581684;
        Fri, 25 Nov 2022 02:19:41 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id u10-20020a05600c19ca00b003c5571c27a1sm6216386wmq.32.2022.11.25.02.19.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 02:19:41 -0800 (PST)
Message-ID: <68ad39a2-e47c-ffcb-34ad-ea680beac59c@redhat.com>
Date: Fri, 25 Nov 2022 11:19:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-5-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-5-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 0936F3EA4F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.133.124:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5WBOD35G5QCBGEOCZDSZXGW77RDOEGCF
X-Message-ID-Hash: 5WBOD35G5QCBGEOCZDSZXGW77RDOEGCF
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/24] drm/tests: helpers: Make sure the device is bound
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5WBOD35G5QCBGEOCZDSZXGW77RDOEGCF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> The device managed resources are freed when the device is detached, so
> it has to be bound in the first place.
> 
> Let's create a fake driver that we will bind to our fake device to
> benefit from the device managed cleanups in our tests.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/tests/drm_kunit_helpers.c | 60 +++++++++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
>

If I understood the platform core code correctly, the probe is always sync in
the case of platform drivers. Unless .probe_type = PROBE_PREFER_ASYNCHRONOUS is
set or a module is loaded using with the "async_probe=1" parameter. So I believe
the wait queue won't be needed. The only DRM driver that forces an async probe is
drivers/gpu/drm/hyperv/hyperv_drm_drv.c AFAICT.

So I would drop this patch from the set for now.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
