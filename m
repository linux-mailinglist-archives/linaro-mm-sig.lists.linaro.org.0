Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1DE63D2F9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 11:16:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 131C33ED38
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 10:16:01 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id C17A03ED38
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 10:15:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=d5vFmktA;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669803351;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CxbB2FEXTvRF2CzuUkTWE4rFXxyela8ryo1CFsrhtF4=;
	b=d5vFmktAnN33PzwQ35oOl3E9HFxD9C7rX0LT9OHg0BG8HIzeZRLzBA8bFZhAkZ+JXJooKM
	DRdYqLnXRK8GeCp79PK/MUDiKjnlAkHb2VJHH+ZHFIbdCJWdbGqJhwQlVM7Bf9HHF3Dfd4
	KfYEMFlF4u5oPo7fWkeYlyxZN2hMIYc=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-629-eip7a6uYNkKSBfjZ0UKs3w-1; Wed, 30 Nov 2022 05:15:48 -0500
X-MC-Unique: eip7a6uYNkKSBfjZ0UKs3w-1
Received: by mail-wr1-f70.google.com with SMTP id q13-20020adfab0d000000b002420132f543so3279947wrc.19
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 02:15:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CxbB2FEXTvRF2CzuUkTWE4rFXxyela8ryo1CFsrhtF4=;
        b=XatD3k/idaNcAA4es6O5vPpcsNozgBfVNdtt5RuHcYROwjilT50unNPQmWpJlzDFYB
         57SUFyDjZgKbK+7f/XI7nOj0bJTuH0Dp9AMgdt/T4mUlfp2OIY+f9bfVRTnK9hyVTC9C
         ervCxCqewyx6YBp2fvAXEH0dUvJFhSJGbfYbDTK/RWH49NOUesxi6Xvp6RYKLgvn9nCq
         82XRYzxPM3Ow8uBGlNHtTxc7zH5lQ17f8bFxPWBctDlcDxSOhQqqkzduvC/NbaZHZKN/
         R59k4uCTWRRGbraVIPzB1noTZmZiWp7MSEY9KgULd+yAWvnGy3v/JVHZKXjKXxJlTurk
         fsqQ==
X-Gm-Message-State: ANoB5pmSIaR2XHH3raCtvX6c8sm+dKVChJ7OQYjvtbSqRCudFi0vJ7FP
	Wr/xmwvXgGJP/kv4f6rz6cOEAKVj/gDN2qT3W+c6Q8vBnZ/J++TsKx86vtl5VyZu/ML8w7e4qEy
	D+oq5jB/08fvwJ3+hWItHkEmZn1k=
X-Received: by 2002:a05:6000:71e:b0:241:df3f:f5d6 with SMTP id bs30-20020a056000071e00b00241df3ff5d6mr25887793wrb.288.1669803347043;
        Wed, 30 Nov 2022 02:15:47 -0800 (PST)
X-Google-Smtp-Source: AA0mqf489Ao4FvIZrt2NmdFFZZC3lnncO3vTH3xWCwvBSPnOhZqxpghPRCNXtDB4BiPRHtQZXu9P+w==
X-Received: by 2002:a05:6000:71e:b0:241:df3f:f5d6 with SMTP id bs30-20020a056000071e00b00241df3ff5d6mr25887772wrb.288.1669803346802;
        Wed, 30 Nov 2022 02:15:46 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id l11-20020a1ced0b000000b003b3307fb98fsm1397702wmh.24.2022.11.30.02.15.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 02:15:46 -0800 (PST)
Message-ID: <6222f13a-a03f-cf20-343a-e885f80cc4ed@redhat.com>
Date: Wed, 30 Nov 2022 11:15:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-17-efe5ed518b63@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-17-efe5ed518b63@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: C17A03ED38
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[170.10.129.124:from];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.221.70:received];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AYQMTLE23WCYWB2D5CPSMQOHET7WYDDL
X-Message-ID-Hash: AYQMTLE23WCYWB2D5CPSMQOHET7WYDDL
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 17/17] drm/vc4: tests: Add unit test suite for the PV muxing
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AYQMTLE23WCYWB2D5CPSMQOHET7WYDDL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/28/22 15:53, Maxime Ripard wrote:
> The HVS to PixelValve muxing code is fairly error prone and has a bunch
> of arbitrary constraints due to the hardware setup.
> 
> Let's create a test suite that makes sure that the possible combinations
> work and the invalid ones don't.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Thanks for this patch. It shows how powerful KUnit can be for testing drivers. 

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
