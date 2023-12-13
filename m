Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BFA8112B7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Dec 2023 14:22:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6946C40D41
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Dec 2023 13:22:43 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id EE7713E91A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Dec 2023 13:22:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=zXlG8mVQ;
	spf=pass (lists.linaro.org: domain of joakim.bech@linaro.org designates 209.85.208.47 as permitted sender) smtp.mailfrom=joakim.bech@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-54f4f7d082cso7603027a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Dec 2023 05:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702473753; x=1703078553; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cj1ZMs1V56ZZNUEaZewI9vOkZv5jPO392Bp8WoFBh7w=;
        b=zXlG8mVQ6aT0rOYjl0OtdTdkPt/WXsPMWtK4yahKkak3elsMqiCIu4jGUrrdWK7MGw
         EZWfAfO1E0hhYqFcmnmpC0Lk5jXlXd3I1my0Xq7cFMvacq35kxOgiXYVkCF1xRMNhc25
         a/VQZcehu4tE9VAruUnwLdT/nFw7JTen4Eo1z/CYF1DUv5YMZNEe7tMlxPEesL5ayGEH
         azwY7PHKrhWlqKr6w7LvHMEx1PboBPwdCNucLPy+n34RoY1pFxE4VdI2otb7cMiiEHnP
         OmeG8jz0J/jVUK3PegcSZdTy+xoBrDnHfbziftVZsWAOKVB1/d8NtV/U/4UvI+lZMcXR
         xIOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702473753; x=1703078553;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cj1ZMs1V56ZZNUEaZewI9vOkZv5jPO392Bp8WoFBh7w=;
        b=YoZ6/pXJyw0VAIR3rKVfJ9sE12YOqd2kJw8WF7L6rJcVLgJ+h4ov8f5QIrM0w6F0f9
         MqI5YG4pP01kGTJdRa1sKsMFo9Mu2ak/OagCt1cvMM80neHf80TBUoLQ2VeKdpPTl2mb
         8Bo6DQyWHfG3SAaJYtxe7iK/tBMqyaDUjiFa2XXJVGhz838NdmS7AbPyej3CPTOQUznK
         Yr6zhB33f3OF9eTdOGwooz7TSZAnSzbBuCoL21iwGLXQdz/4qUpiMlbr+skh/paFEhuG
         j35mi6NIHUIo9Nx222NkYq8rxVNp2l++VZ3cEZXrBp/JXsBmR/9SmehK6jrYzf+S3jIg
         fYqA==
X-Gm-Message-State: AOJu0YzBxIcqZ8FZYxRVBL1F1gFSigcBsF9JeCZuUn8aQjYyfotRb6cc
	SwKzDRs/xVZk4Jfa0k78BwuVTHT/
X-Google-Smtp-Source: AGHT+IELaCU/APPH5lEyFAZu+OpT0rs0/r3NQO6C377YTW5LsGnDiFcS2/Qewp1/YjG0GmihdG0ytg==
X-Received: by 2002:a50:955d:0:b0:54f:4f7f:1a5c with SMTP id v29-20020a50955d000000b0054f4f7f1a5cmr828258eda.81.1702473752835;
        Wed, 13 Dec 2023 05:22:32 -0800 (PST)
Received: from pop-os.localdomain (81-231-61-187-no276.tbcn.telia.com. [81.231.61.187])
        by smtp.gmail.com with ESMTPSA id s28-20020a50ab1c000000b0054c6b50df3asm5921343edc.92.2023.12.13.05.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 05:22:31 -0800 (PST)
Date: Wed, 13 Dec 2023 14:22:29 +0100
From: Joakim Bech <joakim.bech@linaro.org>
To: Pekka Paalanen <ppaalanen@gmail.com>
Message-ID: <20231213132229.q3uxdhtdsxuzw3w6@pop-os.localdomain>
References: <20231212024607.3681-1-yong.wu@mediatek.com>
 <DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
 <20231213110517.6ce36aca@eldfell>
 <20231213101549.lioqfzjxcvmqxqu3@pop-os.localdomain>
 <20231213133825.0a329864@eldfell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231213133825.0a329864@eldfell>
X-Rspamd-Queue-Id: EE7713E91A
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[emersion.fr,mediatek.com,kernel.org,linaro.org,amd.com,gmail.com,lists.freedesktop.org,google.com,collabora.com,quicinc.com,ndufresne.ca,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.47:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HTFH3DPEOVGUU46O4MHZYAECDSSYGBTM
X-Message-ID-Hash: HTFH3DPEOVGUU46O4MHZYAECDSSYGBTM
X-MailFrom: joakim.bech@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Simon Ser <contact@emersion.fr>, Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HTFH3DPEOVGUU46O4MHZYAECDSSYGBTM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Dec 13, 2023 at 01:38:25PM +0200, Pekka Paalanen wrote:
> On Wed, 13 Dec 2023 11:15:49 +0100
> Joakim Bech <joakim.bech@linaro.org> wrote:
> 
> > On Wed, Dec 13, 2023 at 11:05:17AM +0200, Pekka Paalanen wrote:
> > > On Tue, 12 Dec 2023 16:36:35 +0000
> > > Simon Ser <contact@emersion.fr> wrote:
> > >   
> > > > Is there a chance to pick a better name than "secure" here?
> > > > 
> > > > "Secure" is super overloaded, it's not clear at all what it means from
> > > > just the name. Something like "restricted" would be an improvement.
> > > >   
> > > 
> > > My thoughts exactly. Every time I see "secure" used for something that
> > > either gives you garbage, refuses to work, or crashes your whole machine
> > > *intentionally* when you try to do normal usual things to it in
> > > userspace (like use it for GL texturing, or try to use KMS writeback), I
> > > get an unscratchable itch.
> > > 
> > > There is nothing "secure" from security perspective there for end users
> > > and developers. It's just inaccessible buffers.
> > > 
> > > I've been biting my lip until now, thinking it's too late.
> > >   
> > The characteristics we're looking for here is a buffer where the content
> > is inaccessible to the normal OS and user space, i.e., Non-secure EL0 to
> > EL2. I.e, the content of the buffer is meant to be used and accessible
> > primarily by the secure side and other devices that has been granted
> 
> s/secure side/proprietary side/
> 
I'm using the nomenclature as written by Arm (other architectures have
other names for their secure execution states).

> I presume nothing of the other side can ever be in any way open?
> 
I'm sure there are lots of examples of things running on the secure side
that are open. The OP-TEE project where I'm a maintainer has been fully
open source since 2014, to give one example that I'm familiar with
myself.

> Maybe the other side is even less secure than the FOSS side...
> 
> > access to it (for example decoders, display controllers if we're talking
> > about video use cases). However, since the use cases for this exercises
> > the whole stack, from non-secure user space (EL0) all the way to secure
> > user space (S-EL0), with various devices needing access to the buffer at
> > various times, it makes sense to let Linux manage the buffers, although
> > it still cannot access the content. That's the overall context.
> 
> Yes, we know all this (except for the exact meaning of EL0 etc.).
> 
Great!

> > As for the name, it's always difficult to find a name suitable precisely
> > describing what it is. "Secure" is perhaps vague, but it might still a
> > good choice, if you carefully describe what secure means for this
> > particular heap (in the source code and the documentation for it). For
> 
> Carefully describe, as in, re-define.
> 
> > example, the definition of "secure" for a secure heap as here could mean
> > that buffer content is inaccessible to the host OS and user space
> > running in normal world (using Arm nomenclature). I wouldn't have any
> > problems with calling it secure if, as said it's defined what we mean by
> > saying so. But I'm all ears for other suggestions as well.
> > 
> > Safe, protected, shielded, unreachable, isolated, inaccessible,
> > unaccessible, fortified, ... would any of these make more sense?
> 
> "Restricted" sounds like a good compromise to me. The buffers' usage is
> severely restricted.
> 
Yes, restricted isn't a bad choice. We would still need to describe what
we mean by saying it's restricted, i.e., what is it restricted from,
since I'd guess that "restricted" by itself also could be a bit open
ended for a lot of people.

> It is the opposite of "safe", because accessing the contents the wrong
> way can return garbage or intentionally crash the whole system,
> depending on the hardware implementation. One example is attempting to
> put such a buffer on a KMS plane while the connector HDCP state is not
> high enough, or a writeback connector is connected to the CRTC. It is
> really fragile. (Do KMS drivers fail an atomic commit that would
> violate the heap rules? Somehow I doubt that, who'd even know what the
> rules are.)
> 
I believe one of the goals with reviewing the patches is to highlight
issues like this and try to figure out how to avoid ending up in
situations like what you described by suggesting alternative solutions
and ideas.

> It is protected/shielded/fortified from all the kernel and userspace,
> but a more familiar word to describe that is inaccessible.
> "Inaccessible buffer" per se OTOH sounds like a useless concept.
> 
> It is not secure, because it does not involve security in any way. In
> fact, given it's so fragile, I'd classify it as mildly opposite of
> secure, as e.g. clients of a Wayland compositor can potentially DoS the
> compositor with it by simply sending such a dmabuf. Or DoS the whole
> system.
> 
I hear what you are saying and DoS is a known problem and attack vector,
but regardless, we have use cases where we don't want to expose
information in the clear and where we also would like to have some
guarantees about correctness. That is where various secure elements and
more generally security is needed.

So, it sounds like we have two things here, the first is the naming and
the meaning behind it. I'm pretty sure the people following and
contributing to this thread can agree on a name that makes sense. Would
you personally be OK with "restricted" as the name? It sounds like that.

The other thing is the feature and functionality itself offered by this
patch series. My impression from reading your replies is that you think
this is the wrong approach. If my impression is correct, what would you
suggest as an alternative approach?

> "Poisonous heap" would be fitting but politically inappropriate I
> guess. After all, "poison" is data that is not meant to be read by
> anything normal.
> 
> 
> Thanks,
> pq

-- 
// Regards
Joakim
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
