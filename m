Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5A663D174
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 10:13:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7D693EF89
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 09:13:53 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 2312B3EDC0
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 09:13:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=XVwoHDGl;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669799623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H4kmVPYqwbxGU6PTsZRjCspb80cku12to9pgPPCu54U=;
	b=XVwoHDGlBs9z9Fzt9m2GQPnbUWifYYvUM0xI/Bpr3k6ve0F/U82rcokau+N8fyctXNrrYs
	OQE7eSYMew4RAj77mnsiWr/kHjl8Y1nqC/T7ml+5ZMcIkH1ZI/vaMcqUOxgAuTzpttyIcU
	cjbtcxYO4OXgWzrMDUC6MmHVuJpkGd4=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-567-VztpMO_VNgiRj322yNzj0g-1; Wed, 30 Nov 2022 04:13:42 -0500
X-MC-Unique: VztpMO_VNgiRj322yNzj0g-1
Received: by mail-wr1-f69.google.com with SMTP id h10-20020adfaa8a000000b0024208cf285eso2703919wrc.22
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 01:13:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H4kmVPYqwbxGU6PTsZRjCspb80cku12to9pgPPCu54U=;
        b=fzbeSHIMbGI1jj4EWER2QNgNRDJSJjcSEzlqq+V9H9W3Uw3wUHpOI5lgNIazB18a4v
         TrIvj41tNrLlvIwhEAwlcI8qzrTXxXVSzK+LseN1VjN/MCo4xXaVvNKEFqLufgADBOUY
         9/ohD7ljjwLDNz15Gqhl29DTCeVD5xQASRFoM4iHMRp7sobxrj3J3cHXzvPfufjV4sSs
         6f3D3/rpmrmhihf/DEaFhisYP2AcaFGNpxjW1tDkPtLS1lhtdTd3BX+Hf5xWpJ34bddW
         tm9usVg+JFLL6V+VCs9NQuq13TArDrlApJ/Cgw7SJg64QEWRNyTg3/xfXMSQXV8P8RW6
         JIZA==
X-Gm-Message-State: ANoB5pmcko5WYyZEhr9FbBp4r3Eh78MKhtB53IUfA64KBCunGdUoGMIX
	LQlJQdd4/EVRK1dMer3zzFKUIj1mTB2RTUxE25wFrfIn87cpdIA8g3/cOExNpKxyIKZsWB+CZRA
	1vZqsFSQBY9BZGFhdqOoEvNnXwG8=
X-Received: by 2002:a1c:7513:0:b0:3cf:8896:e1c9 with SMTP id o19-20020a1c7513000000b003cf8896e1c9mr46817791wmc.119.1669799621489;
        Wed, 30 Nov 2022 01:13:41 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5vvCv9O/1R9RXSG17BNuO4k/AT1pMos0jlXhZZ5YoVQ/8d1PLV/cKODBBZcjZF5bgcENOdFQ==
X-Received: by 2002:a1c:7513:0:b0:3cf:8896:e1c9 with SMTP id o19-20020a1c7513000000b003cf8896e1c9mr46817770wmc.119.1669799621277;
        Wed, 30 Nov 2022 01:13:41 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id h4-20020a5d5044000000b00241bc4880fesm905866wrt.111.2022.11.30.01.13.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 01:13:40 -0800 (PST)
Message-ID: <a86a67d8-59dc-1af8-4176-b3236ef0f0a1@redhat.com>
Date: Wed, 30 Nov 2022 10:13:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-8-efe5ed518b63@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-8-efe5ed518b63@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 2312B3EDC0
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
Message-ID-Hash: 5KSWJYFXPJUIFNJBONVEZEKDDDDI7HTJ
X-Message-ID-Hash: 5KSWJYFXPJUIFNJBONVEZEKDDDDI7HTJ
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 08/17] drm/tests: helpers: Allow for a custom device struct to be allocated
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5KSWJYFXPJUIFNJBONVEZEKDDDDI7HTJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/28/22 15:53, Maxime Ripard wrote:
> The current helper to allocate a DRM device doesn't allow for any
> subclassing by drivers, which is going to be troublesome as we work on
> getting some kunit testing on atomic modesetting code.
> 
> Let's use a similar pattern to the other allocation helpers by providing
> the structure size and offset as arguments.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

[...]

> -EXPORT_SYMBOL(drm_kunit_helper_alloc_drm_device);
> +EXPORT_SYMBOL(__drm_kunit_helper_alloc_drm_device);
>

I'm not sure if I would add a __ prefix to exported symbols, but I see that
this is a convention in the DRM subsystem so I'm OK with it. 

Another thing that came to mind is if we want to use EXPORT_SYMBOL_GPL()
instead for the DRM KUnit helpers. But that's not related to this series.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>  

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
