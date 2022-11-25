Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0FD638835
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:04:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27E473EF09
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:04:58 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id BB5AC3ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:04:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=J0htrsI1;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669374289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EIsNFOFnhjxNTgJU/2vZA8CiSz+sEWLC1ebQetbQ8TI=;
	b=J0htrsI1iMMNBauhUT0okw92P+dAo8l747W15LzbGnsKa5o8mG9ZkrJU1cpQIZJvDmfVGy
	bayY9gZ8m0YWbtykscUEstjzE7kQJ4P2SFc6hrcEUSzHGNmGQMBEHb6eFPlaZx1Xlnbr2I
	bTb0YfV08XcC2LVc/cBAPYn3ISbTW6k=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-537-BePpJOunPr-kVBzSGe1O0g-1; Fri, 25 Nov 2022 06:04:48 -0500
X-MC-Unique: BePpJOunPr-kVBzSGe1O0g-1
Received: by mail-wm1-f70.google.com with SMTP id b47-20020a05600c4aaf00b003d031aeb1b6so3992727wmp.9
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:04:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EIsNFOFnhjxNTgJU/2vZA8CiSz+sEWLC1ebQetbQ8TI=;
        b=Ek4SUh+PzRpecGLYratgK2mEfxol9l8k++yb9Ak4lyoCOsxd1V4Q1O22+MnASWeySb
         Uh9t8dIqk/7fvt9OZQmlpa8z2UMM4JQmV/LbX0xl0U1ZG+gv4fgq1seXjQ0bAaqu1rnV
         2bNrhfgbBZ4d4zz5ztFrosxPDuk+pUENiMVTeCOfez/6ijwZOzDihnOGWDcPU928RaeD
         +eIQcNnEtsrb21b6wpKrKRO9HM3wFLXAQjqC60FD2133FTKWpCdoFUvI9NQzmb8hqux8
         kzip+BCOLG9DkpmlaKXpMqubPqH8LO5bwCTzGu0ALiP1pBgo3jQDMuz2wzB1mbFFsiEY
         pP5Q==
X-Gm-Message-State: ANoB5pmAi7LwcVzIK1srajwQzcckRV3vslWkI8opWlvCnW/y5Z9B4V4X
	bR22LHAiYJlNfGNdYGPbAIKZ7aW75oz4Ug5JgevI5jQVCQNi/thd5eNXS8LqSz2ZcS4JMQdDEV+
	LADCheXvVq2ZXwkYTHtlARhrwZTo=
X-Received: by 2002:adf:f6d1:0:b0:241:e2af:444f with SMTP id y17-20020adff6d1000000b00241e2af444fmr10706114wrp.676.1669374287048;
        Fri, 25 Nov 2022 03:04:47 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4ai6UB7oIeeI+sRTVyelphEoAhUUiZPfWL2SD5YRQotSiu7iQrCPjltzySG4CbRwXoVo/zjA==
X-Received: by 2002:adf:f6d1:0:b0:241:e2af:444f with SMTP id y17-20020adff6d1000000b00241e2af444fmr10706084wrp.676.1669374286732;
        Fri, 25 Nov 2022 03:04:46 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id f14-20020a05600c154e00b003c6f3e5ba42sm10164544wmg.46.2022.11.25.03.04.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:04:45 -0800 (PST)
Message-ID: <d5451d30-be68-c492-6ec8-41681db400e2@redhat.com>
Date: Fri, 25 Nov 2022 12:04:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-12-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-12-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: BB5AC3ED3C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[92.176.231.205:received,209.85.128.70:received];
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
Message-ID-Hash: 3PTEJZDHWO42YT4YUKADWQTR35Q6E43D
X-Message-ID-Hash: 3PTEJZDHWO42YT4YUKADWQTR35Q6E43D
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 12/24] drm/vc4: Move HVS state to main header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3PTEJZDHWO42YT4YUKADWQTR35Q6E43D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> In order to introduce unit tests for the HVS state computation, we'll
> need access to the vc4_hvs_state struct definition and its associated
> helpers.
> 
> Let's move them in our driver header.
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
