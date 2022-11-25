Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B28E638864
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:13:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78ACD3EF17
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:13:51 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 2E8FD3ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:13:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=ShdxCAOq;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669374821;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qFx/VXqLp/Ia7vJAw9Cj+XP8sI/+0/nuoQb7QGji8jU=;
	b=ShdxCAOqrb0btQ/Fb1bDGRHk+CkzcdIbOGlX9TxH4wGrKKhRTUaRUKZFaQaeTwIR5tzQz4
	dO4BImZk1L35DaKcfd1IpFSgZfnDuIG64JCp7HiOfztF3LGHNnQSDdtgpcbpDbDMMIh4V+
	8C1DbQvqJMBjR27FX+m83X9b8W6YE34=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-127-8OaoWYS-O_WQsCdmk8Zyzw-1; Fri, 25 Nov 2022 06:13:40 -0500
X-MC-Unique: 8OaoWYS-O_WQsCdmk8Zyzw-1
Received: by mail-wm1-f71.google.com with SMTP id 187-20020a1c02c4000000b003d016c210f7so4041056wmc.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:13:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qFx/VXqLp/Ia7vJAw9Cj+XP8sI/+0/nuoQb7QGji8jU=;
        b=fJ7GfrOqFBDTPbuSjUaUpHhCL77qngiE0brflMDwOgPUwyTyxoJPuP0+D8lZSffsHz
         A7dWtep7iGhwmSkYMKcS3CtUfYhjhRNlqcxyCDeOccY33hoE6rkVt8wHYjZzKPGcQyJr
         KFBOfYMRS+FDjvrS/BtQPSICQLFPVaJ4tBABzAZSnFAuuBtfbLgaDOL61wo9sHpHCQEG
         wcrh+zdn/7x44quK0BTJMKg1W/6guwin3VKNh/npgxhNGTNYxR6UEH7XziznAyqh6gTY
         /yzKhdAe2MO5xEbWrj8a3voxOE9Cn5vgWFVe8NJ/2zCGXRUmrOTYAWKvuBDR39nQprME
         8wVg==
X-Gm-Message-State: ANoB5plMJ0fQbg+QJuK8Qs5FJEDFu/aDpzbG+lusl3JQL/NU76HwGd+o
	u/Ukz/78x4RxeAo1FyRc2Y/XyVHD0yslA9ETDMdYGdnyZRXGtcBUNOoEvw0e46zFjbdjwL6WS6w
	Ah2m7XcQ9NQlQLd9Pthj6fYm6Szs=
X-Received: by 2002:a05:600c:4113:b0:3cf:a3e0:73e4 with SMTP id j19-20020a05600c411300b003cfa3e073e4mr14008546wmi.21.1669374819684;
        Fri, 25 Nov 2022 03:13:39 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4QbRaGQmx0lzXwDi9UpdtUdoe4KD8bKMgqn+J5cd47t76yI/i28tjLFg1hYaguZbzcAUiqhw==
X-Received: by 2002:a05:600c:4113:b0:3cf:a3e0:73e4 with SMTP id j19-20020a05600c411300b003cfa3e073e4mr14008533wmi.21.1669374819497;
        Fri, 25 Nov 2022 03:13:39 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id e3-20020a5d65c3000000b002383edcde09sm3440822wrw.59.2022.11.25.03.13.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:13:39 -0800 (PST)
Message-ID: <2405809e-8183-e353-1259-94e16ebe8204@redhat.com>
Date: Fri, 25 Nov 2022 12:13:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-17-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-17-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 2E8FD3ED3C
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[92.176.231.205:received,170.10.129.124:from];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.71:received];
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
Message-ID-Hash: PD4GG6A32KFISZQONP3LVWTVIMNAXD35
X-Message-ID-Hash: PD4GG6A32KFISZQONP3LVWTVIMNAXD35
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 17/24] drm/vc4: crtc: Pass the device and data in vc4_crtc_init
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PD4GG6A32KFISZQONP3LVWTVIMNAXD35/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> Both users of vc4_crtc_init need the same extra initialization to set
> the pointer to the platform_device and the CRTC data. Since it's
> mandatory, let's make them both arguments of vc4_crtc_init().
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
