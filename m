Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qF2nBwBTn2mraAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:52:32 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AE48119CF13
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:52:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 812EE401AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 19:52:30 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id B07E1401AF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:52:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=djYPU0uy;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48373ad38d2so15845e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:52:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772049147; cv=none;
        d=google.com; s=arc-20240605;
        b=djDxr3V2ZP54iiQEK6WumiNb0WzkpmtveKvWZ3U9z9UzbMMw1wP0ffsjZgX9K/hUgU
         vsvm/5KC03NRiO6cSXnCSR8MpXL76GG+au5p5moZj890lbOrLUkQqHJYuLIUirSAgEdM
         O6KMt+v/Qkov3p3tcHzHhIf1CpX0TfPV8gXAn6lw/KvbZg9pVBJpt4EvAcY8dBxAbGCV
         m6Johld9kfvq5vLxCtXItuOrr3ERV9Q05ZWIXKigNWtui8Yv2gZMp3zpPLHuk7XpH2iW
         3pnryG4cVZS+nd4/VjmWNIScess5JE/bl8FuB7iPmLFfs47OgAqI6go5fOLJw+86/skl
         MrNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GOCqpqP4xulPNkLV+0mavDjGZp2jPKuE2l1wLsJLWlw=;
        fh=xhF+UZ6sMsbuy47GqoiWEZD10LNZttb6dU+aqBtjw90=;
        b=LZW/JK/bZwaNAt+yJxBQRiZ+Lq3PR27sQ230anoopoAS3D8DbFtWPz6iqsQobutILS
         C2WRdHWHyRitjRgt0YAab3V2E8SmynrUB4+2+xQnztpffr/hcLhoilYjVrGOI9vZSHf9
         0+TUvIoCEO/dsO1xxVlmjqb3/+eqZvfYy6EY/Y7fadXyNroPjrUgwfzFQ4ac3tlPnxZt
         k2FnWTDxGY1qtqw3Yj1Rav1Fi2/2m61K1M0nlNMrGYmZ7QCJiyoBQvB3DVHhS/O7TBln
         hZPPObu/OMwFo6SyYmLXIf9GZTm/f96qAdwD9EoJeqn0roLN5YoZ0SuALyIhjep9rlzX
         M6ug==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772049147; x=1772653947; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GOCqpqP4xulPNkLV+0mavDjGZp2jPKuE2l1wLsJLWlw=;
        b=djYPU0uyII2AaNgrEzWTr/4SEAAZGqmQRvWGMkmhK6n4lG+owvIbFz+mRYYDIiIuKR
         EZN2ZOXIq9LWJMebFSS59sVomMNQ/VLYto2SnmjsmhytXj32XLg6e9WRSeR2EUQORRXc
         bN54yAVy8RF7BOsiD6mrA+D4minWeTuqV2e4x/nnKuUHM3s4J3y2a41vQJtx+QQeQqLI
         mE09xTv6PnfG74Dxj2Nno6Oe5/h+5le9VDTpBN00EYDTPbYkwGi00x6PRESfGaRAOP+O
         wJneDH2N1pTCLHunVYHHwffczHimXb3zQKgHRwujxAbJHsgV4aRlATs4icf/8I9XYFlJ
         mUvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772049147; x=1772653947;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GOCqpqP4xulPNkLV+0mavDjGZp2jPKuE2l1wLsJLWlw=;
        b=SQMEKraadSUpkqCOJr1un/c6Od5SMylhBMcC7XzPWOKnXH1Fb0WDBem2VpRpBQRGOh
         k2/PGC32Mmow+KdwnbNL21Z+VXEX25bS77/5j37oBboCB1y1xr50ICOdhnbM4xyi6PKY
         ujfycNVgwv2zxrpb+reSyLrqpzUXFz6xPfdI1udSSm48V/W8R1UuGDNHC5r/VRi4BtL1
         8lRbN2Gex7h9KgDbmZdpRJ/NvFIwBMmuEgNd2HBItQDih56pfLsargblkO5KBDutUPHv
         1WFfYT4HL6q5fobMR0nWmRP26wPCxjtK1sM8hxfKUVveizS78AMnPpk8LVq1dENGi9V4
         Iujg==
X-Forwarded-Encrypted: i=1; AJvYcCXYTKvoX9ivkevlGIOSOU+IgzII1VJwqaSHYMSuIcjwLyJeWu5BIyvlTy1Nc/dPQD5oI6gGff3sQNobr8HK@lists.linaro.org
X-Gm-Message-State: AOJu0Yz9DpjRHgBgxxf8t4/nwvmW+Col5qTkzMg9a1OtE7WThFt2Quib
	gDk6kVoVbFrvll+FGNn9wcsWZoLN5wwZ3YAu0jwZ8CSY1yo8oFw99OSTTkoh6sU7pksEGoZHI0v
	hxx2ql06F7Dy532nnpl/Vz6/mdBl5p2UNCT6wwumF
X-Gm-Gg: ATEYQzxwTEwI6F2Lj2qKZaWZdSTK4i/eOVaP38BT0+ntKD3gOkJOrWYlyiZOVZxqRJc
	XJNNdiqvnVE6vqF0CYOJGKLOFnkKs0oY18VKKpXmaSu5PHQkVPBlEKUexGrGeaPfA0GFVUlUSfv
	TmNvFuFt7w6xHKeT3c2BhAo0E+BDcuwTkEh4YYfwadVm07nSGqxE8QgMtuUDuP8ZYKr6LhXhybp
	QlXmY2IOwg3VZOtEYPkBrsz1vOTMLJHdsqw/Mjigq4SOadRyjbSqDXU9kCAW4ssrrThM4InEaUX
	XE9GOij2PW2DuRE0XIixoOR2HiuIvz5LEPZUy/rNvvRD7sPo6u8Q1pTVvIXy2hE4ky0GhA==
X-Received: by 2002:a05:600c:5702:b0:477:95a8:3805 with SMTP id
 5b1f17b1804b1-483c31cfb56mr70235e9.15.1772049146264; Wed, 25 Feb 2026
 11:52:26 -0800 (PST)
MIME-Version: 1.0
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org> <20260225-dma-buf-heaps-as-modules-v1-4-2109225a090d@kernel.org>
In-Reply-To: <20260225-dma-buf-heaps-as-modules-v1-4-2109225a090d@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 25 Feb 2026 11:52:13 -0800
X-Gm-Features: AaiRm517LrodfDPDmk8aF233zMemSo71i-_zn9eOj5ImN-lsr29tVaebY-ntsoQ
Message-ID: <CABdmKX1piZByQvx0sYbO4R=f1rdZKmYS5R0EcChBv22cAUvCUQ@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: AMXW6ZOVHZJVL46C5MJDJOW2QDDAEFI7
X-Message-ID-Hash: AMXW6ZOVHZJVL46C5MJDJOW2QDDAEFI7
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/7] mm: cma: Export dma_contiguous_default_area
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AMXW6ZOVHZJVL46C5MJDJOW2QDDAEFI7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.981];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: AE48119CF13
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgODo0MuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IFRoZSBDTUEgZG1hLWJ1ZiBoZWFwIHVzZXMgdGhlIGRl
dl9nZXRfY21hX2FyZWEoKSBpbmxpbmUgZnVuY3Rpb24gdGhhdA0KPiB3b3VsZCBlaXRoZXIgcmV0
dXJuIHRoZSBjb250ZW50IG9mIGRldmljZS5jbWFfYXJlYSBvciB0aGUgY29udGVudCBvZg0KPiBk
bWFfY29udGlndW91c19kZWZhdWx0X2FyZWEuDQo+DQo+IFRoZSBsYXR0ZXIgaG9sZHMgYSBwb2lu
dGVyIHRvIHRoZSBkZWZhdWx0IENNQSByZWdpb24sIGFuZCBpcyBzdG9yZWQgaW4gYQ0KPiBwdWJs
aWMgdmFyaWFibGUuIEhvd2V2ZXIsIHRoYXQgdmFyaWFibGUgaXNuJ3QgZXhwb3J0ZWQgd2hpY2gg
cHJldmVudHMgdG8NCj4gdXNlIGRldl9nZXRfY21hX2FyZWEoKSBpbiBtb2R1bGVzLg0KPg0KPiBT
aW5jZSB3ZSB3YW50IHRvIHR1cm4gdGhlIENNQSBoZWFwIGludG8gYSBtb2R1bGUsIGxldCdzIGV4
cG9ydA0KPiBkbWFfY29udGlndW91c19kZWZhdWx0X2FyZWEgdG8gYWxsb3cgbW9kdWxlcyB0byB1
c2UgZGV2X2dldF9jbWFfYXJlYSgpLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJk
IDxtcmlwYXJkQGtlcm5lbC5vcmc+DQoNClJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVy
Y2llckBnb29nbGUuY29tPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
