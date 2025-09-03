Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B76B4265E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 18:14:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0A3F645588
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 16:14:36 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 4175C446ED
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Sep 2025 16:14:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=cEtyyKqt;
	spf=pass (lists.linaro.org: domain of david@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=david@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756916067;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=bzt9EmHzCNTi5JpIlfAxwaC9x9EuNT1d//8tcvBDG2w=;
	b=cEtyyKqt4Bn1ykVHKITFsdm+81VnruLlr98goFFzsyvrFGTjlwSGhah92/wJqeop1K/0yf
	yFTw/sCFKE1/QhUa4B1jOeEZb0FBi/u2OFfZWCylcYaDHbB4XX6cRRL1IecFo78QwJJNZr
	xKIGppIzJ7Q2v3hpS7PjLe4iWGaTV8g=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-315-WVj_VC8yPzy75xN8OcYVoQ-1; Wed, 03 Sep 2025 12:14:26 -0400
X-MC-Unique: WVj_VC8yPzy75xN8OcYVoQ-1
X-Mimecast-MFC-AGG-ID: WVj_VC8yPzy75xN8OcYVoQ_1756916066
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-45a15f10f31so7989665e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Sep 2025 09:14:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756916065; x=1757520865;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bzt9EmHzCNTi5JpIlfAxwaC9x9EuNT1d//8tcvBDG2w=;
        b=lCaXxAzfBFs/6LUs+GPnn/wk6jNYIaGkod0JNr7l0AF35xara2qMQ7b4lEswt4uTXL
         irwuwd/cE5DqjK31bhbtvjqeZhTMXxG6//0vGhdBh+Vw7BqzJmSZlN+bTRB7Di3oiAQr
         UGyYmopF0PLbYKzlt/85yvJX3IOgHiRCRAlOSgHQXZu64R7z8BRpQAmjcA9n662vTqp/
         aC03nWgMsmXSaKcQuq4LqC5JDEj2XkemZu6tmetv76SL3fWJ/x4lF191JZjuEG7LJIgN
         KFSBG+1nXASHgfkICrJftzwrtqn6i/lEqWR6vXZdUq8xetC3gDHvCeAQBVR3dsdKWfKQ
         lX4g==
X-Forwarded-Encrypted: i=1; AJvYcCU1eiifoJEvfsJMi4ofDWCxeN7G4zcdT19XRv1HKOVU8jbfVcqQVRHnNZWpQMsPIiz5kjWh4zEjnFH1auP4@lists.linaro.org
X-Gm-Message-State: AOJu0YyfgK1VmxXx2D7v+ZDykQMWQZ8z2GoYgw0rK53Hpl/UK6OKx+rc
	1bQP8z6cktwiQdVAdOeeIV65Wje0Be+UCNwa5oouG5GoNovBSRMJCx9ZmKj82ddMfpWOVdpDMDB
	g17DdrWwQVfjEil3El3z2ngCB0z2WG5t48h7zmBYfrdCdaZQ9z0gUTXIn9BkZVjna4zHu
X-Gm-Gg: ASbGncvG2ZMGmAWfgXLXM7do6U/QAGa590pfnaK6qrH4LE/FD151Ti4MSNCXLd8vMiV
	Bd60vECmfc080y+1Jhp56kuqfhq61mNlL935SAz/hnanm+VeSFpKI5byPFnd79mNZ4LYmOcWg1J
	D8c8dGs01wYGXBuOyzQHsdG0fyaGhIFElxQYol4Ftbc7vCDJLxVGPwyq7R8eDU9UybQodMbZMc/
	9b/CmoPDx02mEQiUWIAkSYdZ0tkyuh4AgXVTufUIr9zGSUxczmNfED478c+P6ts5c6cSpv+9YvN
	+61XcRd55Zn1QeTxdzqT+3qtSfedjgc9J6/ukoYWkjLLSwPXFx5mNiDCZjhTvvSEy43Sbi1j0Q4
	vbq5fzz5QRS8fDkeHbLQ1FxPA/yC1xoZOooFYgEYu0LiughzPDtR7P2PFMQQRtqfYwzM=
X-Received: by 2002:a05:600c:c4a1:b0:459:443e:b18a with SMTP id 5b1f17b1804b1-45b8559aff8mr148123195e9.14.1756916065558;
        Wed, 03 Sep 2025 09:14:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrG1gLsbYnBIn3I8NtcnWq9Wo53kgjPvmlGfN/iDdEiLF/Lvowr8NqtI002hGo3+RIVMQJCw==
X-Received: by 2002:a05:600c:c4a1:b0:459:443e:b18a with SMTP id 5b1f17b1804b1-45b8559aff8mr148122835e9.14.1756916065025;
        Wed, 03 Sep 2025 09:14:25 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f09:9c00:8173:2a94:640d:dd31? (p200300d82f099c0081732a94640ddd31.dip0.t-ipconnect.de. [2003:d8:2f09:9c00:8173:2a94:640d:dd31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b9a6ecfafsm79703055e9.21.2025.09.03.09.14.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 09:14:24 -0700 (PDT)
Message-ID: <78b9c23d-98ce-4b06-9acf-d36c58777d56@redhat.com>
Date: Wed, 3 Sep 2025 18:14:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Thierry Reding <thierry.reding@gmail.com>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-4-thierry.reding@gmail.com>
 <CAPTztWa7kcx8bBEJEKvnjcD4v1-eDLVxMd9C10XiBQi4CDLfHg@mail.gmail.com>
 <e513c127-d4f4-4e93-8d4b-23d1e4fdceb5@redhat.com>
 <g34tb2ontlnazift3sik5dqs75a7k2bhzo74kknkxoegv4q5vb@jsqo7v6awovf>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <g34tb2ontlnazift3sik5dqs75a7k2bhzo74kknkxoegv4q5vb@jsqo7v6awovf>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: h159dIZJnlYa12xiuirMMfce7acWV_DFqK4_R-IHYyg_1756916066
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4175C446ED
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[170.10.129.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[google.com,gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,linux-foundation.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[redhat.com:+]
Message-ID-Hash: DTRDXAHZRRRU2SIPHUQXA5QEYZWYBAB7
X-Message-ID-Hash: DTRDXAHZRRRU2SIPHUQXA5QEYZWYBAB7
X-MailFrom: david@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Frank van der Linden <fvdl@google.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DTRDXAHZRRRU2SIPHUQXA5QEYZWYBAB7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 03.09.25 18:12, Thierry Reding wrote:
> On Tue, Sep 02, 2025 at 09:04:24PM +0200, David Hildenbrand wrote:
>>
>>>> +>> +struct cma *__init cma_create(phys_addr_t base, phys_addr_t size,
>>>> +                             unsigned int order_per_bit, const char *name)
>>>> +{
>>>> +       struct cma *cma;
>>>> +       int ret;
>>>> +
>>>> +       ret = cma_check_memory(base, size);
>>>> +       if (ret < 0)
>>>> +               return ERR_PTR(ret);
>>>> +
>>>> +       cma = kzalloc(sizeof(*cma), GFP_KERNEL);
>>>> +       if (!cma)
>>>> +               return ERR_PTR(-ENOMEM);
>>>> +
>>>> +       cma_init_area(cma, name, size, order_per_bit);
>>>> +       cma->ranges[0].base_pfn = PFN_DOWN(base);
>>>> +       cma->ranges[0].early_pfn = PFN_DOWN(base);
>>>> +       cma->ranges[0].count = cma->count;
>>>> +       cma->nranges = 1;
>>>> +
>>>> +       cma_activate_area(cma);
>>>> +
>>>> +       return cma;
>>>> +}
>>>> +
>>>> +void cma_free(struct cma *cma)
>>>> +{
>>>> +       kfree(cma);
>>>> +}
>>>> --
>>>> 2.50.0
>>>
>>>
>>> I agree that supporting dynamic CMA areas would be good. However, by
>>> doing it like this, these CMA areas are invisible to the rest of the
>>> system. E.g. cma_for_each_area() does not know about them. It seems a
>>> bit inconsistent that there will now be some areas that are globally
>>> known, and some that are not.
>>
>> Yeah, I'm not a fan of that.
>>
>> What is the big problem we are trying to solve here? Why do they have to be
>> dynamic, why do they even have to support freeing?
> 
> Freeing isn't necessarily something that I've needed. It just seemed
> like there wasn't really a good reason not to support it. The current
> implementation here is not sufficient, though, because we'd need to
> properly undo everything that cma_activate_area() does. I think the
> cleanup: block in cma_activate_area() is probably sufficient.
> 
> The problem that I'm trying to solve is that currently, depending on the
> use-case the kernel configuration needs to be changed and the kernel
> rebuilt in order to support it. However there doesn't seem to be a good
> technical reason for that limitation. The only reason it is this way
> seems to be that, well, it's always been this way.

Right, and we can just dynamically grow the array, keep them in a list etc.

-- 
Cheers

David / dhildenb

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
