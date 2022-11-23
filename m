Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0521D635DCB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 13:49:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 069023ED5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 12:49:55 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 8913E3EC70
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 12:49:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=QcDOmyJP;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so1364837wmb.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 04:49:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bAXiwhITo1fYPFHeaxZuA3JnvtciKXegmNlmVm1MLTo=;
        b=QcDOmyJPMmV74tHIYH2f3pF018aonfW3C+atn7ceR7fOjNdM7WpYgKbl2TOcGlAfNf
         eS6geetBOAXpvAu1ByBRfnE1WtA5FjJ7po22QR0Hau5dh+ZOr4Vf+rUpnP1qOaSUU3gK
         xP7WLbATr1oEA0BwcHpPIVVoIjma1yOMMBcSs0QkZAdvqUt3iSH7RrYeGOuVFF1Thnd/
         DFdglq37JxouigDQDU1kqqUTT+l6o8mNES99yXFoOFjifePHX0doUNVZsto2RyJA0/3B
         4nO04XCDC1bCb2DPKhY1FHcr+ZlcPgldYLiQgYA4d7TG6tiuDsEPB/Jcmow6G5hiuE+H
         Ga9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bAXiwhITo1fYPFHeaxZuA3JnvtciKXegmNlmVm1MLTo=;
        b=sjXHAqtHiyAIgZQSFOrW1FOfj3q2n7UgydOtL9h/RTN5qAYLgx40SI2ie4ZfSkExUJ
         c6JTVIioI114POlU/AmjgxfZ2i5sp9cBuYyCsWycn7fS/BwegtODwRmXFY+7bJfR0ANw
         5XxU62qhMT1ZHpSVXotxowUPvsl+5NZduKz4zAQ3WUJy3HJJB/p2cFT3Wwa6eWuejDqi
         yrBHkf/0Sk4I63MWD2grl7YSvC5c/tN/d+xUhfAISs8A6z82TO3W1zIGI3zeYLALtSwc
         jYoFt90ZcRJw5z6qJtTxzGD21OjdGoYzppTBF55buv/yYfWF1tYznTiNbJQz/hMlKylI
         +7hQ==
X-Gm-Message-State: ANoB5plFC8OAMIljDgClrstRnXjnXDdVx6ZyIIzjRcDdPuJ/hIEaPTOP
	zTWgTSiUIACapv9o+stXewk=
X-Google-Smtp-Source: AA0mqf58T+ReNLwV7A/JFKqP0idHpqbq4k2Ql3MVFCyZKZT2MWOwbf7fqQlJHYiTQN9oEiyfL76KUg==
X-Received: by 2002:a7b:cd18:0:b0:3cf:a359:de90 with SMTP id f24-20020a7bcd18000000b003cfa359de90mr9926352wmj.122.1669207785530;
        Wed, 23 Nov 2022 04:49:45 -0800 (PST)
Received: from ?IPV6:2a02:908:1256:79a0:d2d7:ceea:efc2:af43? ([2a02:908:1256:79a0:d2d7:ceea:efc2:af43])
        by smtp.gmail.com with ESMTPSA id k21-20020a05600c1c9500b003cfa3a12660sm7774387wms.1.2022.11.23.04.49.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 04:49:44 -0800 (PST)
Message-ID: <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
Date: Wed, 23 Nov 2022 13:49:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Jason Gunthorpe <jgg@ziepe.ca>, Daniel Vetter <daniel.vetter@ffwll.ch>
References: <Y30PDdsvHIJo5YHR@ziepe.ca>
 <CAKMK7uEccwYTNwDYQazmZvTfBFQOikZt5A6BmegweyO-inKYbQ@mail.gmail.com>
 <Y30Z4VxT7Wdoc1Lc@ziepe.ca>
 <CAKMK7uE=8eqyh9BKg_+7B1jjMi6K4wrmPyi9xeLVvVYFxBgF9g@mail.gmail.com>
 <Y30kK6dsssSLJVgp@ziepe.ca>
 <CAKMK7uFQQkG82PzuSTGQTnN3ZNps5N_4TjR5NRWo0LaJkEaNew@mail.gmail.com>
 <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
 <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
 <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <Y34WI9SZdiH/p1tA@ziepe.ca>
X-Rspamd-Queue-Id: 8913E3EC70
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[mail-wm1-f41.google.com:rdns,mail-wm1-f41.google.com:helo];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-wm1-f41.google.com:rdns,mail-wm1-f41.google.com:helo];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.894];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.41:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RVYEOOWVTPTRQPXPSJ4WNKN53JELIXXA
X-Message-ID-Hash: RVYEOOWVTPTRQPXPSJ4WNKN53JELIXXA
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Suren Baghdasaryan <surenb@google.com>, Matthew Wilcox <willy@infradead.org>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RVYEOOWVTPTRQPXPSJ4WNKN53JELIXXA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 23.11.22 um 13:46 schrieb Jason Gunthorpe:
> On Wed, Nov 23, 2022 at 11:06:55AM +0100, Daniel Vetter wrote:
>
>>> Maybe a GFP flag to set the page reference count to zero or something
>>> like this?
>> Hm yeah that might work. I'm not sure what it will all break though?
>> And we'd need to make sure that underflowing the page refcount dies in
>> a backtrace.
> Mucking with the refcount like this to protect against crazy out of
> tree drives seems horrible..

Well not only out of tree drivers. The intree KVM got that horrible 
wrong as well, those where the latest guys complaining about it.

>
> The WARN_ON(pag_count(p) != 1) seems like a reasonable thing to do
> though, though you must combine this with the special PTE flag..

That's not sufficient. The pages are released much later than things 
actually go wrong. In most cases this WARN_ON here won't hit.

Christian.

>
> Jason

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
