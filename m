Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A118638580
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 09:50:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C90723EF15
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 08:50:44 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id D11B13EA4F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 08:50:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=B3Lh+NtP;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669366235;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZCa5X8lXlExaGphI0WGFeQw46HpXtfvTpixratHZyiE=;
	b=B3Lh+NtPg/yvsm5mOnBrZzbuAWTquVHGKL5wg1PJiufqANb6kdhDa3iYRZsycsoqXK4+Ik
	KkIM4uiGN3A4er9AiBRxiPlYtLr9PUMx/pEr3obNfGapjRFUAtMy+RlNBkYs7ld24FzeiX
	HyNvdApubs6CW4gmG6Ivfm494iQOSus=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-203-c94h6t9JMSKevIywYQRAew-1; Fri, 25 Nov 2022 03:50:34 -0500
X-MC-Unique: c94h6t9JMSKevIywYQRAew-1
Received: by mail-wm1-f72.google.com with SMTP id h9-20020a1c2109000000b003cfd37aec58so2130689wmh.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 00:50:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZCa5X8lXlExaGphI0WGFeQw46HpXtfvTpixratHZyiE=;
        b=X31kn43lQwyYfxavDKDvwTe9a2T1C/NtdpMneXg3UrW99ohZNHhqKiuj92AuF/W6wo
         j77LFWD0NvLG0cbFxm01sGyEYwuPaBDOhCcVgKXhSXV/OTrKhIABwDKnUU+pcc4d0naO
         JUI1771IPw2pCAjgq7VGxUCA9Wo4v7Y8Jk2UumPh1QKJhbDD+0F6h3LorECjHtpvYFU5
         vWbkDeadD0uyv/g8xAba088BYrna4q5VpQyN6g91bk6KlGk80YnJbVnSRr5i0oCTSFyK
         dP4kAcUvu7O9zCFVytZdsnPjQgnF2iMIKBdcdPxJzyMKyXLB3JTl4BHmdaIQfaLcuHPI
         j2/w==
X-Gm-Message-State: ANoB5pmZjP2WsB54yyPSNjgSLgge7KVGq6pBlULQBBoJQqAHBSmmfowN
	ouPzOF/o6kGoIPAWfonMvNREGIoIxP1b0KFk47Q2T7pKHrvsVw07WLDAm31LaFlJhEjw+FgCFo4
	8PGeF/x0h7rUt+6Esitq5Y19rLVY=
X-Received: by 2002:a5d:5305:0:b0:242:25e:e731 with SMTP id e5-20020a5d5305000000b00242025ee731mr2642373wrv.48.1669366233209;
        Fri, 25 Nov 2022 00:50:33 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6mov6a1ABQsKCpweMfuKZj8FtStMvwn4E4x4v/bkoJJVxviE1bsUHgijhFDEI16xW3gYv3qw==
X-Received: by 2002:a5d:5305:0:b0:242:25e:e731 with SMTP id e5-20020a5d5305000000b00242025ee731mr2642344wrv.48.1669366232940;
        Fri, 25 Nov 2022 00:50:32 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id p11-20020a05600c468b00b003cfd10a33afsm8890236wmo.11.2022.11.25.00.50.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 00:50:32 -0800 (PST)
Message-ID: <2517016e-1b31-b821-df0c-8c0498f11719@redhat.com>
Date: Fri, 25 Nov 2022 09:50:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-1-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-1-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: D11B13EA4F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[92.176.231.205:received];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: UPBLMZJ5KZPABZTFJ5OHKR62PFFIZ7N5
X-Message-ID-Hash: UPBLMZJ5KZPABZTFJ5OHKR62PFFIZ7N5
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/24] drm/tests: helpers: Rename the device init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UPBLMZJ5KZPABZTFJ5OHKR62PFFIZ7N5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> The name doesn't really fit the conventions for the other helpers in
> DRM/KMS, so let's rename it to make it obvious that we allocate a new
> DRM device.
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
