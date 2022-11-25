Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 887916385DC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 10:06:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A9DE3EF33
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 09:06:53 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 63FC93ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 09:06:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="OP3/ntMw";
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669367205;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=M7QTtRRbL7+Wq11xJkPqBXcSqP3SyIaC64ZZMRaftKc=;
	b=OP3/ntMwqGABay99V69m1UG9DRWS/greR92pR3iwQQZ35SyyNilpqY5vr/wH7R+JUgSxeU
	l5Sp+YSNMWxrRaq5Ab4N5+j6SQrjfhnnzx4yE3OvVexzUD/FHHNhOALj4VYTmXdNKWdUm/
	fSfPou5ugofbg9sjlFKJYLViXehfnEQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-47-sMWQGNDOMOSzFKjR6L3v6Q-1; Fri, 25 Nov 2022 04:06:41 -0500
X-MC-Unique: sMWQGNDOMOSzFKjR6L3v6Q-1
Received: by mail-wr1-f70.google.com with SMTP id l8-20020adfc788000000b00241ef50e89eso710786wrg.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 01:06:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M7QTtRRbL7+Wq11xJkPqBXcSqP3SyIaC64ZZMRaftKc=;
        b=m9zBlOA2q1yNNurHyU7ea7TsHwhUyu0mrnDXrzFq6cKnVD0OdMDWoB/8mJzovDhJD3
         b+iXEDmAMn8+tnTht/HGvqyxQT/6K3u4Ooi6v7FL0MiIHz1DjgCbh9th0SXb/oMH0sYz
         BjUB7WR8gj0UNvIRQULgmrrpN6SU3rOsSwkhbN+gwR27q2zJ3zf2e0YFD9s/OqZlXr0e
         qUVMpu4oHFcOT+Eo+vX9NsE5B4H9ojj9c4JYDKYKQAK5aBdhdaWRz4maX1Jj28Umh824
         RvvQaZmftxJO8H79ZIawnMTVpuwgMsirpv4AysG6/Cdt6sAcYCaJUAsu9fhSst5lEYu3
         0k9Q==
X-Gm-Message-State: ANoB5pmB3QtAL0Fm3JUg9EIuN9Zwp8KHvNHyYFj3mxKz1/SsO9S6lcPV
	T709X5kbJATtstrsAuRCEkULt1tB6W/78uqdd5jgrKQaceAnXDWnJnF165AWv6R4AlF6I54EIgf
	F+UwUogYeqNRzLn+r7fnWJxRIdxc=
X-Received: by 2002:adf:e305:0:b0:236:6089:cc5e with SMTP id b5-20020adfe305000000b002366089cc5emr13634717wrj.118.1669367200524;
        Fri, 25 Nov 2022 01:06:40 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5a4/3UUdnTCVdtjBQVAGdYcgL9eE9W0y2TcH3nZQvBy0bZE1SSPYRFB9nYPNcK7okvPIxpQA==
X-Received: by 2002:adf:e305:0:b0:236:6089:cc5e with SMTP id b5-20020adfe305000000b002366089cc5emr13634702wrj.118.1669367200332;
        Fri, 25 Nov 2022 01:06:40 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j8-20020adff548000000b002367ad808a9sm3235859wrp.30.2022.11.25.01.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 01:06:38 -0800 (PST)
Message-ID: <d5df9a73-c093-3584-31f4-e2f4f7bd9272@redhat.com>
Date: Fri, 25 Nov 2022 10:06:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-3-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-3-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 63FC93ED3C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VMWE73J6SRLA6HJCTZ37FZ2V2FF3POGM
X-Message-ID-Hash: VMWE73J6SRLA6HJCTZ37FZ2V2FF3POGM
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/24] drm/tests: helpers: Create the device in another function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VMWE73J6SRLA6HJCTZ37FZ2V2FF3POGM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> We'll need in some tests to control when the device needs to be added
> and removed, so let's split the device creation from the DRM device
> creation function.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

[...]

> -static int dev_init(struct kunit_resource *res, void *ptr)
> +struct device *drm_kunit_helper_alloc_device(struct kunit *test)
>  {
> -	char *name = ptr;
> -	struct device *dev;
> -
> -	dev = root_device_register(name);
> -	if (IS_ERR(dev))
> -		return PTR_ERR(dev);
> -
> -	res->data = dev;
> -	return 0;
> +	return root_device_register(FAKE_DEVICE_NAME);

I was going to ask if a platform device could be used here, to prevent the
issue you mentioned the other day of root_device not having a bus set. But
I see now that you are doing that change in the next patch.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
