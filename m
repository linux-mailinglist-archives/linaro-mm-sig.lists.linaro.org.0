Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8A86388C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:30:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 139473EF32
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:30:43 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 744283EF09
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:30:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=LosUu0sQ;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669375834;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0NAIt6DmSH0rxYc10/Lncuu2fhazNaRFZIsHf4ynJeo=;
	b=LosUu0sQXoMCT7DerQKRcE5GfxcBo50McXrKnJGFGo6NkoyPF6Ijtpd1cB7B1bnWFaHlgL
	+PeYg07TPBakCKgbb2+y2lW0OvdONnTjCQYnqLZderviAV19Z84g5Ndmmq5qIrHcmVICSa
	4HLz9cwhmfoGQDlvgS+CEAA6jWEbtnw=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-663-gQUR5b0GNe25uThH3lVAUQ-1; Fri, 25 Nov 2022 06:30:32 -0500
X-MC-Unique: gQUR5b0GNe25uThH3lVAUQ-1
Received: by mail-wr1-f70.google.com with SMTP id l9-20020adfa389000000b00241f907e102so787321wrb.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:30:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0NAIt6DmSH0rxYc10/Lncuu2fhazNaRFZIsHf4ynJeo=;
        b=1bFJU2c7YmqREV7uY+9sGDJHsXgBV+JvvW2QH/EM1xRe+PWPcO051xUrtkbsDjjhxk
         SGNQxRG9xXfSdH1EKllzHvKflogWtAoKDSKXr5HhE67PiaKTfMUyX3rGdW8AtGxr/JYX
         fF+69HSEpP874gcDGRCz9TrlAHcpCF0iUlTs3lNTrOGMqFdNIS5dQ5XGuNyjylghLxrM
         uaFg/YN+o3D7DoMQiy/wyvpbi8qhgOU4GVPbnGyFLDFjZAp4NGaOM2k4y6wc6aqPU5Gp
         x9Ufs8EhF7X9LhseTa2fUMQ7HeyeRleaAVMijAbrAg3NGeb0oUMP8rReWBO4eKNHFxUX
         BV0g==
X-Gm-Message-State: ANoB5pn+ScHwwxPJM+vRL+CCb0PzecI88qtlVVkThLnTPBbCYEcUN/f3
	Mpx0bjsl7D4iDyzzgO2AbLOIbTaLZaaiP+Se4lKQl2Kujk/b2nNwlVgWmgbUpxNITirmOZXOkn2
	Ln4c9zgqng8EZdbubu72KDcAo+Pw=
X-Received: by 2002:adf:f782:0:b0:236:73fa:c56e with SMTP id q2-20020adff782000000b0023673fac56emr16927470wrp.432.1669375831775;
        Fri, 25 Nov 2022 03:30:31 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5BqcPogGv74wKCFoPNLhym/zSZ5Ydptut3F8lISznnnvwUd9+tWysN/KklB3LvI2knnu0JgQ==
X-Received: by 2002:adf:f782:0:b0:236:73fa:c56e with SMTP id q2-20020adff782000000b0023673fac56emr16927439wrp.432.1669375831561;
        Fri, 25 Nov 2022 03:30:31 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id z4-20020a05600c0a0400b003c70191f267sm9996825wmp.39.2022.11.25.03.30.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:30:30 -0800 (PST)
Message-ID: <323c8e02-4085-c46f-61cc-b9edbd902544@redhat.com>
Date: Fri, 25 Nov 2022 12:30:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-19-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-19-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 744283EF09
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.50)[92.176.231.205:received,170.10.129.124:from,209.85.221.70:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo,cerno.tech:email];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QNZGTVLHXCRBAQ5ETAVQD7RKWFBZ5W7L
X-Message-ID-Hash: QNZGTVLHXCRBAQ5ETAVQD7RKWFBZ5W7L
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 19/24] drm/vc4: crtc: Make encoder lookup helper public
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QNZGTVLHXCRBAQ5ETAVQD7RKWFBZ5W7L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:26, Maxime Ripard wrote:
> We'll need a function that looks up an encoder by its vc4_encoder_type.
> Such a function is already present in the CRTC code, so let's make it
> public so that we can reuse it in the unit tests.
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
