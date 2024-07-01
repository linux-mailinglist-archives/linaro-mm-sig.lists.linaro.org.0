Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2A291DA2B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Jul 2024 10:41:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 693FC43F4F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Jul 2024 08:41:12 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 5A4153F2F7
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jul 2024 08:41:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=gd4lCcqd;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42574064b16so16214335e9.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Jul 2024 01:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719823268; x=1720428068; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AMt7mTb63MOoRef5KMAR+OLG9LjGQCs3Iv9eQzbOgVY=;
        b=gd4lCcqdHtwQu6iquX0jqkPtuw9JB6rPgCo1GW+KskocsMVERzGYRQOxmI3FQa5bxM
         qYGAASJ8fZhmPpQPF5/BHFZpk7K9USpxLgX5/hReFqRIMU7BOqNQQvh/qINWk3ZBlsGC
         7uAv3DvcPQ6BzbREfpvj6+PY2AFNxVmSxrGSyaqqiOMkdMVjOseDfEkIGdz5iw/roF9X
         hXIES28RouuFBNsl+i0GdFKx+BpwGs5KWgMkurzE89cbM4VqCavCO694o6RqXcTIaxiZ
         YTGga3+nGU0jDsNd3A0TMCqRjzXi9Ba8Vr0SFUxTX8rnVx2oPfJu9G+NCJB7laXUHca2
         cmDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719823268; x=1720428068;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AMt7mTb63MOoRef5KMAR+OLG9LjGQCs3Iv9eQzbOgVY=;
        b=iwA1xF7TLFGCpfZo5f8rrNtKBo8hR27kimGDyyZr0hVao4RQpA712UjRCK+gTzp9Qf
         Wi/9bCfV+AeAuISBIYD22oqpMNpSWKqsTkwqLZgJXjmqZrowJU8UgaUsVgN5I52iXGwT
         EzgNGLJb/bNrIoZmhTuYxhJl3SrlLGUNzaoqnSI7b53sxkNJI1oLBfy35/XgtuLXnVPo
         Hc6e6L7jPdC976KueJ2QM1SjLrhs7yaJY/s04slZw30AJTWAD/xqpF/qC4nSsZfTfCJF
         WB9x/uoMDP0Php/x263gd8S7km87Csf2/aZvDvLFbOblf93HaOrT/5yfc9FFpVEq+mA0
         FvBg==
X-Forwarded-Encrypted: i=1; AJvYcCXsmckmrCTf0LOFhQ/ZK7Im5GW1mK5AyoktsPCVXEcwhaLutQtaCnk0StpraPrf/sPDdcIS3zpTg75DibnkFFiXl5WHxbyEDoi/BP6l5XI=
X-Gm-Message-State: AOJu0YzQaRiLhw+rsCVnccHLeKgM6nTW91M/AS1j7FaJpFi6xNdQbm41
	5IU1BInJPIdrFKcHwIBuvIfFcZy/n7bgX5JX1wYAsW0fCfdHmIE9
X-Google-Smtp-Source: AGHT+IFVkP4vxt28218+k2V48TYQocy8Fz5i69HcPxCmln5LU4tWH1iaovbS/2p5BgnSrenoOSY/NQ==
X-Received: by 2002:a05:600c:6a8d:b0:425:77b4:366d with SMTP id 5b1f17b1804b1-4257a02f3f6mr32722375e9.11.1719823267873;
        Mon, 01 Jul 2024 01:41:07 -0700 (PDT)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b09a94csm141988335e9.33.2024.07.01.01.41.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jul 2024 01:41:07 -0700 (PDT)
Message-ID: <dbcd9a16-4e4b-42c8-ba7f-d6c1dfd9dccb@gmail.com>
Date: Mon, 1 Jul 2024 10:41:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 =?UTF-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>
References: <20240515112308.10171-1-yong.wu@mediatek.com>
 <20240515112308.10171-3-yong.wu@mediatek.com>
 <98721904-003d-4d0d-8cfe-1cecdd59ce01@amd.com>
 <779ce30a657754ff945ebd32b66e1c644635e84d.camel@mediatek.com>
 <cef8f87d-edab-41d8-8b95-f3fc39ad7f74@amd.com>
 <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
 <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
 <98c11bad7f40bcc79ed7a2039ddb3a46f99908f5.camel@mediatek.com>
 <75dc1136-7751-4772-9fa7-dd9124684cd2@amd.com>
 <ZnxWWtdShekGSUif@phenom.ffwll.local>
 <ae73a0203d6acf2878c9e3ae2d7554816b9c66ad.camel@mediatek.com>
 <5739abdb-0234-412a-9f25-49219411bbc6@amd.com>
 <183f2ae09c2dbcf687e69cd13a9d258fd24fd80c.camel@ndufresne.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <183f2ae09c2dbcf687e69cd13a9d258fd24fd80c.camel@ndufresne.ca>
X-Rspamd-Queue-Id: 5A4153F2F7
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.47 / 15.00];
	BAYES_HAM(-2.98)[99.92%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[quicinc.com,collabora.com,linaro.org,kernel.org,google.com,mediatek.com,deltatee.com,lists.freedesktop.org,emersion.fr,gmail.com,lists.linaro.org,infradead.org,ucw.cz,linux-foundation.org,arm.com,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.52:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YAISHWVLW2BU5H57ZC5U7QUMNF4SZEMY
X-Message-ID-Hash: YAISHWVLW2BU5H57ZC5U7QUMNF4SZEMY
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "jkardatzke@google.com" <jkardatzke@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, =?UTF-8?B?WW91bGluIFBlaSAo6KO05Y+L5p6XKQ==?= <youlin.pei@mediatek.com>, "logang@deltatee.com" <logang@deltatee.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, "contact@emersion.fr" <contact@emersion.fr>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "willy@infrade
 ad.org" <willy@infradead.org>, "pavel@ucw.cz" <pavel@ucw.cz>, "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "tjmercier@google.com" <tjmercier@google.com>, "jstultz@google.com" <jstultz@google.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "mripard@kernel.org" <mripard@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>, =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YAISHWVLW2BU5H57ZC5U7QUMNF4SZEMY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 28.06.24 um 22:16 schrieb Nicolas Dufresne:
> [SNIP]
>>>>> Why can't you get this information from userspace?
>>>> Same reason amd and i915/xe also pass this around internally in the
>>>> kernel, it's just that for those gpus the render and kms node are the
>>>> same
>>>> driver so this is easy.
>>>>
>> The reason I ask is that encryption here looks just like another
>> parameter for the buffer, e.g. like format, stride, tilling etc..
> I'm mostly a reader of the thread here, but I'd like to avoid basic mistakes.
> The buffer in question are "protected", meaning that the CPU HW does not have
> access to the underlying pages (or zone in the case of Meditatek).
>
> This is different from encrypted buffers, which don't need this level of
> protection, as without the security key to decrypt them, their content is close
> to random data.

Thanks for that clarification, this difference was absolutely not obvious.

In that case having a separate heap for this memory is indeed the 
easiest approach.

My question is still what would happen if the CPU tries to access this 
protected buffer? Or does the CPU not even have an address to do that?

Just out of curiosity, I mean the exporting heap should then somehow 
reject any attempt to mmap() or vmap() the buffer content.

Thanks,
Christian.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
