Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8AF6388BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:29:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4358B3EF33
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:29:43 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 75F353ED86
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:29:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=H3hkf7la;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669375774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s7B+glXPiHunh65c3ikcxd5Un328udBU6gxH6BbvNec=;
	b=H3hkf7lab06TqZchFM1lTAcFieHf1ZZi+7V+Z0mHqVnvY1Wf87XkBghAq51+531TTL9Kyh
	HEuIqZq6PULPlu5wAHDOh5wrGx1RPFBgTk0OMJ6lTFN07l4B6o7v/SeJ93LItk5/gEVbUl
	NrIUfO0OEA4Uijwt9txcy+KmeUxnllY=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-541-CyT9FPQWNp60-XUdOWo-5w-1; Fri, 25 Nov 2022 06:29:33 -0500
X-MC-Unique: CyT9FPQWNp60-XUdOWo-5w-1
Received: by mail-wr1-f69.google.com with SMTP id p2-20020adfaa02000000b00241d7fb17d7so792058wrd.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:29:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s7B+glXPiHunh65c3ikcxd5Un328udBU6gxH6BbvNec=;
        b=Cv/suRFKJRJu7jNhJDQO0ooFD3cQ/63oI+jozEZwiZ18X2p6ltgj21XEkYsFdmfj0B
         7spjzzZE7Rmyw+M9wEppq/PzYmqtQFLHImU2e6b0fvTSxWuQYMqewSM8v9os7aWCKfj6
         fkt5HAH0ycpLao5bUMQf2EeeJVw7BFCKK52TATZykchzjsJk2jZe/JVUO498UCvS5l5Z
         gTxXHYY9C0v5YvX3Nta7pzfjAhPmFCwvOLLRPVWjPUWHzN/B9ywQHhbgWzGrioIyQpFw
         EfFbM7u0nBiU65tMqmki+88GSOqcnqdWL40k+Lk3mZ40dWdmaxhO+XWtAwB+FhKJLvvz
         cUQw==
X-Gm-Message-State: ANoB5plVjHYxsBcrYLXQ6qo2dBKQOtHmh39A1/z+8yAdxf8vQ0rw2fD1
	2OIaCUaHZL6PYbMmjzHe8MJsVIHyV8wLdmGK58RquYho2dd68Vzpec7ttMhGn5FUJKZEHQYp80h
	rzBWZt+irVICw9UJ1X51msGtRRP4=
X-Received: by 2002:a1c:4c0c:0:b0:3cf:9881:e9d9 with SMTP id z12-20020a1c4c0c000000b003cf9881e9d9mr27524193wmf.6.1669375772043;
        Fri, 25 Nov 2022 03:29:32 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4tA122+galS8pDRgP2Y6iWuz67WbLgxFBL4oNYp0k+u30rTmKQtH54GX28s3piYeICYXfz4g==
X-Received: by 2002:a1c:4c0c:0:b0:3cf:9881:e9d9 with SMTP id z12-20020a1c4c0c000000b003cf9881e9d9mr27524167wmf.6.1669375771857;
        Fri, 25 Nov 2022 03:29:31 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id r14-20020a5d4e4e000000b002366ded5864sm3471722wrt.116.2022.11.25.03.29.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:29:30 -0800 (PST)
Message-ID: <05e6a16f-ee7f-1b9a-0ab8-5b042d60c86d@redhat.com>
Date: Fri, 25 Nov 2022 12:29:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-18-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-18-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 75F353ED86
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.50)[92.176.231.205:received,170.10.129.124:from,209.85.221.69:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5KLTIYRVOKKJVCVVAY3EU3C2EDLQQH36
X-Message-ID-Hash: 5KLTIYRVOKKJVCVVAY3EU3C2EDLQQH36
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 18/24] drm/vc4: crtc: Introduce a lower-level crtc init helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5KLTIYRVOKKJVCVVAY3EU3C2EDLQQH36/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:26, Maxime Ripard wrote:
> The current vc4_crtc_init() helper assumes that we will be using
> hardware planes and calls vc4_plane_init().
> 
> While it's a reasonable assumption, we'll want to mock the plane and
> thus provide our own. Let's create a helper that will take the plane as
> an argument.
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
