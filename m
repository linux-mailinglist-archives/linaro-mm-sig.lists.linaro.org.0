Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DE16A63EE07
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 11:38:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B44DC3F2E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 10:38:46 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 043A93ECB4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 10:38:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=WytJe5b9;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669891113;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=10Al1tSX1JNmT1W2eYBPU7HPfHOrdNXuqygGPStHWlc=;
	b=WytJe5b9dZZOf14CVQbSwOdtp4ZeLvSbTYtwvy+DKrArVSXU1aVTQ9H2pCTjU4rWVzA1NG
	755nZrP2BN6DNJur/uUTxlu16/f4g7PHXMVnxmMZt9ZFonmW16FNjXhCAd2LPkhMi4IHfF
	eTkJkKTldV3WStqyHsDelQ4U6epU5jU=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-491-4bfSwjzrNzKQvJHmpDIl-Q-1; Thu, 01 Dec 2022 05:38:32 -0500
X-MC-Unique: 4bfSwjzrNzKQvJHmpDIl-Q-1
Received: by mail-wr1-f69.google.com with SMTP id e7-20020adf9bc7000000b00242121eebe2so283307wrc.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 01 Dec 2022 02:38:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=10Al1tSX1JNmT1W2eYBPU7HPfHOrdNXuqygGPStHWlc=;
        b=eigsXxq1OhsMZnCOivEQyzZfGJBiPf0fD8sqlrthHpLpiGZ0jQpaadRiwzObqwUl95
         8KVa0J5Rj5mAETfowa+RG8qSeVr1Pnmn3WD0DOiwLMtBVJAGe2dVjOJ/LZzw3KU25ULH
         Ev6l2/rNEpmSUMeBjtnH60+S459VAQl2Jzh9hSQVs1q0i51UwqER6wjGCcTFIk7dIi+2
         VEPUI490jtFlCC7pcO4jvmE/VD+f2QkTobELktBk3OHatB/cmsIf1NjOAN6uF69xc5im
         8iTx8RfaIimwcACsggHT1oZT1mDQk5bKnzKQhyukMoVLVTu2fheJPEz4VDZCv7kTVDOz
         l/vw==
X-Gm-Message-State: ANoB5pnIVHwhN0awGf/LFoWUMQiLHulOwVgZS1fGs7AYLu4S1ejf3dCt
	HFeXLhdk/ZwyjV35vYR0S2l41q1QQHGTpqT2C+aotEKPfwh3kiKMLA4Ng43njw17DQOuts+G66g
	mGcL5KJLphDwwKkPDDGvzxCVBMD8=
X-Received: by 2002:a5d:43c9:0:b0:236:78d0:5223 with SMTP id v9-20020a5d43c9000000b0023678d05223mr41643013wrr.250.1669891111397;
        Thu, 01 Dec 2022 02:38:31 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6KufTftndeSFnuJj0ww4Bi4u4dwK5MuxmTqCH6QTPyZEYTXUnzD5dmnVqEGF5aWgQYEpubqQ==
X-Received: by 2002:a5d:43c9:0:b0:236:78d0:5223 with SMTP id v9-20020a5d43c9000000b0023678d05223mr41642998wrr.250.1669891111156;
        Thu, 01 Dec 2022 02:38:31 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id fc13-20020a05600c524d00b003d04e4ed873sm10098252wmb.22.2022.12.01.02.38.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 02:38:30 -0800 (PST)
Message-ID: <31192e08-3d83-6fb0-06b0-51d50d073abc@redhat.com>
Date: Thu, 1 Dec 2022 11:38:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-1-efe5ed518b63@cerno.tech>
 <ebe02c21-7770-0415-096e-76a839bad154@redhat.com>
 <20221201102756.cdvxu4iryhu3rjpf@houat>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221201102756.cdvxu4iryhu3rjpf@houat>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 043A93ECB4
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[92.176.231.205:received];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.221.69:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_FAIL(0.00)[170.10.129.124:server fail];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	FREEMAIL_CC(0.00)[ffwll.ch,linux.intel.com,gmail.com,suse.de,lists.freedesktop.org,linuxfoundation.org,googlegroups.com,vger.kernel.org,lists.linaro.org,linux.dev,riseup.net,raspberrypi.com,google.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KJOG5SP67FXD42H3PKHM3JL5FFN25LRV
X-Message-ID-Hash: KJOG5SP67FXD42H3PKHM3JL5FFN25LRV
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/17] drm/tests: helpers: Move the helper header to include/drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KJOG5SP67FXD42H3PKHM3JL5FFN25LRV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Maxime,

On 12/1/22 11:27, Maxime Ripard wrote:

[...]

>>
>> I wonder if now that this header was moved outside of the tests directory,
>> if we should add stub functions in the header file that are just defined
>> but do nothing if CONFIG_DRM_KUNIT_TEST isn't enabled. So that including
>> it in drivers will be a no-op.
>>
>> Or do you plan to conditionally include this header file in drivers? So
>> that is only included when CONFIG_DRM_KUNIT_TEST is enabled?
> 
> I'm not entirely sure. I'd expect only the tests to include it, and thus
> would depend on DRM_KUNIT_TEST already. But we can always add the stubs
> if it's ever included in a different context.
> 
>> Another thing that wondered is if we want a different namespace for this
>> header, i.e: <drm/testing/drm_kunit_helpers.h>, to make it clear that is
>> not part of the DRM API but just for testing helpers.
> 
> If there's a single header, I don't think we need to create the
> directory. This is also something we can consolidate later on if needed.
>

Agree on both. It's better to land as is and then figure out if needs
to be changed once other drivers add more tests.
 
>> But these are open questions really, and they can be done as follow-up:
>>
>> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> 
> Thanks :)

You are welcome!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
