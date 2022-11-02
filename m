Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2738761619A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 12:18:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13D223F5C6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Nov 2022 11:18:22 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id A3A463EEC1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Nov 2022 11:18:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=R0aAmd9O;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id bj12so44277888ejb.13
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Nov 2022 04:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PT7usyHorNc+eagc7++kft1owL4KOrZq2wYnn7g6w4k=;
        b=R0aAmd9O8wIg+f+au36TUKLxmP6HbcnlZut9V+4GtjQYMXHhaOfwVJkZCjE0wn6d/k
         fv7zFy22lxPsD2BdHavNoPP3aoitLlFqjhGnrGyOD6xHihe15ovaY52knTCtk2ZbkEKV
         BBU7fiAxF6MratcizxKWSa0/Zxu//K0adbNpE+L+fYRw0bPsIUdgv+f0kkDiWQUIRj3Z
         nHxdKRxqaeQvNxumuGtaMZgD1HQZwkqJHMTE9UlB7BtvUkwAApdTjpNmJe7+5JsrvT2o
         wj2HXqS/4mdt7QB3WlLrmOCc4TU/8gedOYl5OND4mehSqhUbHNaFrDXYTjUtXPhaDmjG
         EP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PT7usyHorNc+eagc7++kft1owL4KOrZq2wYnn7g6w4k=;
        b=Ybh488deDSE7LLh61SiCkeRRkAOb/gjKkld0/l2SiCl46JjGpCBDdg9byVDFORH7ml
         gVxW8n859EEN6leIDp9MfE8T1/7GLrKHgyk7jhQRTPEnJs6F6jM0Yg7ZjIVcSo/GTRCK
         o8K2MXn9eEh0HCjN5N6sVtpuSYRCL34ciAexQrBrTdtoNZA1YhTM6YA9vUw+4fOO1MQD
         hIwiKTzoxyZt1KtmjFu0rijkOeBCUihLdqVlG/u7DcjU63dlTAfw5ZmJwjj3lYYSPgyn
         wewkVnf6RkrTqaPMet3MkiDwHFo2JDfm83viA6M0Kb5jHrRivGrmmn88pIl9XdWyr4DZ
         TnEg==
X-Gm-Message-State: ACrzQf0U92sOTMRGQPIFIOl2xlreBWz/876MiClEzhazyQhwGh5u4bzE
	BFueYsph69/m2tHRACrBQiI=
X-Google-Smtp-Source: AMsMyM7tnylHAI4DN/vGOWi9kX355glWeRJ+uaNDLjf84/JABguIpzkgAyMHiB+ZMWG0adD9cglyKw==
X-Received: by 2002:a17:907:8b18:b0:7ad:d1f5:2f80 with SMTP id sz24-20020a1709078b1800b007add1f52f80mr15750600ejc.661.1667387883542;
        Wed, 02 Nov 2022 04:18:03 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:576c:b102:647e:9ffd? ([2a02:908:1256:79a0:576c:b102:647e:9ffd])
        by smtp.gmail.com with ESMTPSA id ja25-20020a170907989900b0079b9f7509a0sm5328041ejc.52.2022.11.02.04.18.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 04:18:02 -0700 (PDT)
Message-ID: <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com>
Date: Wed, 2 Nov 2022 12:18:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Daniel Stone <daniel@fooishbar.org>
References: <20221020121316.3946-1-christian.koenig@amd.com>
 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com>
 <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com>
 <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com>
 <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
 <11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com>
 <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: A3A463EEC1
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.45:from];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.968];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org]
Message-ID-Hash: KLFOR4PDJMT3S66BL7LGO33ZDNGGMGXO
X-Message-ID-Hash: KLFOR4PDJMT3S66BL7LGO33ZDNGGMGXO
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KLFOR4PDJMT3S66BL7LGO33ZDNGGMGXO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 01.11.22 um 22:09 schrieb Nicolas Dufresne:
> [SNIP]
>>> But the client is just a video player. It doesn't understand how to
>>> allocate BOs for Panfrost or AMD or etnaviv. So without a universal
>>> allocator (again ...), 'just allocate on the GPU' isn't a useful
>>> response to the client.
>> Well exactly that's the point I'm raising: The client *must* understand
>> that!
>>
>> See we need to be able to handle all restrictions here, coherency of the
>> data is just one of them.
>>
>> For example the much more important question is the location of the data
>> and for this allocating from the V4L2 device is in most cases just not
>> going to fly.
> It feels like this is a generic statement and there is no reason it could not be
> the other way around.

And exactly that's my point. You always need to look at both ways to 
share the buffer and can't assume that one will always work.

As far as I can see it you guys just allocate a buffer from a V4L2 
device, fill it with data and send it to Wayland for displaying.

To be honest I'm really surprised that the Wayland guys hasn't pushed 
back on this practice already.

This only works because the Wayland as well as X display pipeline is 
smart enough to insert an extra copy when it find that an imported 
buffer can't be used as a framebuffer directly.

>   I have colleague who integrated PCIe CODEC (Blaize Xplorer
> X1600P PCIe Accelerator) hosting their own RAM. There was large amount of ways
> to use it. Of course, in current state of DMABuf, you have to be an exporter to
> do anything fancy, but it did not have to be like this, its a design choice. I'm
> not sure in the end what was the final method used, the driver isn't yet
> upstream, so maybe that is not even final. What I know is that there is various
> condition you may use the CODEC for which the optimal location will vary. As an
> example, using the post processor or not, see my next comment for more details.

Yeah, and stuff like this was already discussed multiple times. Local 
memory of devices can only be made available by the exporter, not the 
importer.

So in the case of separated camera and encoder you run into exactly the 
same limitation that some device needs the allocation to happen on the 
camera while others need it on the encoder.

>> The more common case is that you need to allocate from the GPU and then
>> import that into the V4L2 device. The background is that all dGPUs I
>> know of need the data inside local memory (VRAM) to be able to scan out
>> from it.
> The reality is that what is common to you, might not be to others. In my work,
> most ARM SoC have display that just handle direct scannout from cameras and
> codecs.

> The only case the commonly fails is whenever we try to display UVC
> created dmabuf,

Well, exactly that's not correct! The whole x86 use cases of direct 
display for dGPUs are broken because media players think they can do the 
simple thing and offload all the problematic cases to the display server.

This is absolutely *not* the common use case you describe here, but 
rather something completely special to ARM.

>   which have dirty CPU write cache and this is the type of thing
> we'd like to see solved. I think this series was addressing it in principle, but
> failing the import and the raised point is that this wasn't the optimal way.
>
> There is a community project called LibreELEC, if you aren't aware, they run
> Khodi with direct scanout of video stream on a wide variety of SoC and they use
> the CODEC as exporter all the time. They simply don't have cases were the
> opposite is needed (or any kind of remote RAM to deal with). In fact, FFMPEG
> does not really offer you any API to reverse the allocation.

Ok, let me try to explain it once more. It sounds like I wasn't able to 
get my point through.

That we haven't heard anybody screaming that x86 doesn't work is just 
because we handle the case that a buffer isn't directly displayable in 
X/Wayland anyway, but this is absolutely not the optimal solution.

The argument that you want to keep the allocation on the codec side is 
completely false as far as I can see.

We already had numerous projects where we reported this practice as bugs 
to the GStreamer and FFMPEG project because it won't work on x86 with dGPUs.

This is just a software solution which works because of coincident and 
not because of engineering.

Regards,
Christian.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
