Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FEF810E2A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Dec 2023 11:16:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD45D40BD9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Dec 2023 10:16:04 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id DE6603E91A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Dec 2023 10:15:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=g4wgdTlg;
	spf=pass (lists.linaro.org: domain of joakim.bech@linaro.org designates 209.85.218.52 as permitted sender) smtp.mailfrom=joakim.bech@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a1c8512349dso877791066b.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Dec 2023 02:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702462554; x=1703067354; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m71FV5vGmPVywWzxoFuxmmARDOatcoG5xbVNtimxsKM=;
        b=g4wgdTlgDuON+3Ew1TOw2I0+TWIapXIydJPZ6Bo3i7fR3VaOea/M5yD8GzkcBO5bEo
         GkJcdlSOsdtgiuJJThfbuinO6lWUXYiofnqpZgmvVWPsF5diMePdJniltoall7ynZC3M
         /ggG7TpDt+xDGuWWPI7svLcRyGqYZ9CR9mpqf3KbDc5sizXpFet4iJmgTyz2uA9fhtZ7
         sHtcU6EyXsQITcOT1AhJl/T6v442n7wPg1t4+JL0KLF0DmGJE5aGORGgygxofrdKPqU2
         iAOEujiDnj55MPcno56G1jgpNT+zKdxFIg+w7uw19jy1VLqM6dBrHk/HvAcGJDYHD4s7
         XzmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702462554; x=1703067354;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m71FV5vGmPVywWzxoFuxmmARDOatcoG5xbVNtimxsKM=;
        b=hvr9GymA8MQeZ93VAbY9cvWV2F1NGc7I72IrNloG9n55fVoImqToFx4vOvOSwWJSVZ
         0tlx7MkfOl+oAMEkdgprOVjy9co8jYyvHZV0DAM6inWEXoI5z84kgXqrpCHAxVIJta0p
         S8I+rjzsJ5OIzPrr24M7qX0+spgNG0OLLXyFVp+GuA/p834VKNAvqRMeFJCX6ZEP3fLN
         DXN58Bu0/ySGSOFtFd+sdU4ZUjWgV59ecLVn5WLRf1lDGh3QRAygTaqPFZTCKkFS69r1
         RRP3jAJTxFj7dCfQGejYCio2GedY9krc/92ElLHF8aN1VL9P7q1LYK24FiTAG5G80yxU
         8Zmw==
X-Gm-Message-State: AOJu0YzF9EZrGBsmfFOpmiAJdpT7eHAAV90j9+DGL1HVr5sbGtnZqz7a
	Log8Jf1IluWheQ1KLXpb8sPxvmtP
X-Google-Smtp-Source: AGHT+IFLhx9mrchCh5E2ylqHbgPhyi2ITVUtOX/P4qGORrsYs/M4rF8Vci+B58KQG68twiIyDl6XRw==
X-Received: by 2002:a17:907:9905:b0:a1c:f745:e0b3 with SMTP id ka5-20020a170907990500b00a1cf745e0b3mr3808358ejc.97.1702462553820;
        Wed, 13 Dec 2023 02:15:53 -0800 (PST)
Received: from pop-os.localdomain (81-231-61-187-no276.tbcn.telia.com. [81.231.61.187])
        by smtp.gmail.com with ESMTPSA id q18-20020a17090676d200b00a1d9733f2d9sm7400403ejn.209.2023.12.13.02.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 02:15:52 -0800 (PST)
Date: Wed, 13 Dec 2023 11:15:49 +0100
From: Joakim Bech <joakim.bech@linaro.org>
To: Pekka Paalanen <ppaalanen@gmail.com>
Message-ID: <20231213101549.lioqfzjxcvmqxqu3@pop-os.localdomain>
References: <20231212024607.3681-1-yong.wu@mediatek.com>
 <DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
 <20231213110517.6ce36aca@eldfell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231213110517.6ce36aca@eldfell>
X-Rspamd-Queue-Id: DE6603E91A
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[emersion.fr,mediatek.com,kernel.org,linaro.org,amd.com,gmail.com,lists.freedesktop.org,google.com,collabora.com,quicinc.com,ndufresne.ca,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BHBMOB5JF4SVFIB76TNCR66LS5L4Z3GS
X-Message-ID-Hash: BHBMOB5JF4SVFIB76TNCR66LS5L4Z3GS
X-MailFrom: joakim.bech@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Simon Ser <contact@emersion.fr>, Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BHBMOB5JF4SVFIB76TNCR66LS5L4Z3GS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Dec 13, 2023 at 11:05:17AM +0200, Pekka Paalanen wrote:
> On Tue, 12 Dec 2023 16:36:35 +0000
> Simon Ser <contact@emersion.fr> wrote:
> 
> > Is there a chance to pick a better name than "secure" here?
> > 
> > "Secure" is super overloaded, it's not clear at all what it means from
> > just the name. Something like "restricted" would be an improvement.
> > 
> 
> My thoughts exactly. Every time I see "secure" used for something that
> either gives you garbage, refuses to work, or crashes your whole machine
> *intentionally* when you try to do normal usual things to it in
> userspace (like use it for GL texturing, or try to use KMS writeback), I
> get an unscratchable itch.
> 
> There is nothing "secure" from security perspective there for end users
> and developers. It's just inaccessible buffers.
> 
> I've been biting my lip until now, thinking it's too late.
> 
The characteristics we're looking for here is a buffer where the content
is inaccessible to the normal OS and user space, i.e., Non-secure EL0 to
EL2. I.e, the content of the buffer is meant to be used and accessible
primarily by the secure side and other devices that has been granted
access to it (for example decoders, display controllers if we're talking
about video use cases). However, since the use cases for this exercises
the whole stack, from non-secure user space (EL0) all the way to secure
user space (S-EL0), with various devices needing access to the buffer at
various times, it makes sense to let Linux manage the buffers, although
it still cannot access the content. That's the overall context.

As for the name, it's always difficult to find a name suitable precisely
describing what it is. "Secure" is perhaps vague, but it might still a
good choice, if you carefully describe what secure means for this
particular heap (in the source code and the documentation for it). For
example, the definition of "secure" for a secure heap as here could mean
that buffer content is inaccessible to the host OS and user space
running in normal world (using Arm nomenclature). I wouldn't have any
problems with calling it secure if, as said it's defined what we mean by
saying so. But I'm all ears for other suggestions as well.

Safe, protected, shielded, unreachable, isolated, inaccessible,
unaccessible, fortified, ... would any of these make more sense?

> 
> Thanks,
> pq

-- 
// Regards
Joakim
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
