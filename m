Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cM5sHQuLoGnekgQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 19:03:55 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DE51AD33E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 19:03:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF6203F6F8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 18:03:45 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id D90EB3F6F8
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 18:03:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=fe5AAuMV;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.218.52 as permitted sender) smtp.mailfrom=jstultz@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b8fa449e618so165824566b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 10:03:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772129015; cv=none;
        d=google.com; s=arc-20240605;
        b=Y1HxDGTm8DUsKelPs66MevfoWjBE8rqvU0qPe4nIQ8yR/i4SAbaHtaCLSrhXbqarJv
         un3xQ19dQGYVJeVibVkCUkFA8aNjUyN5XNjQi6fB3n5CvU7p6zl68JcqwVEOr0S/Px75
         pSxX68rtJFkQgZ+HkGsSE5Hbcc/z6nX2pcmwuAC0cACZCfGQU6/VLhqmITCLfvhu2Apn
         vcR7BUiFAGnbO5Gn4UmbefDoJnyqxpEqhTFwhxP+hvcpuxaSD6UZ6qybUndHt+TLz1Rq
         fIwkBD4HteODcszfh2km8vZGQQz75/8H6AM8QIcVhPiNhzLxGbxtJow57o2qAqXNDSHf
         fJqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9Qnm2oa0MVzHK3SlIdevV2oCNgF9I6YsjdLLXN+h7bs=;
        fh=pwhqOOVTxh7JFDbIO5aD7s6jckvBCne3qvT9HTlu1/s=;
        b=Tu8WpsRDvdWeGWqMSUoxGi4AVPTZ5sxJoyhqKWemJvekg8Eq8MlP0hsK6SByfNq/9+
         PHd8P9IEu6KpZPV9B6ChH/6m4XGhvpxiHXeXd2BG9tI6A+AUqJ46+/6YXAdviG2bc0eF
         RnFv/EAwWvD89Sv1+KXP3qV4lcGP6z53HVVZTJMS5EZUepu/NXvhq48nGaQWOgFwP83l
         sIUoJQ/Py9c3AEAlv2DlacRmMkQF+YjgDYKq0UmUXFMhjMF1nIXCp3qcgtqlE42eQFpi
         UEPGzxsD8VMMYBsbCyKQPR8Nlo/7UBDyju3mQwVfonS5X1d68l3AI1G3o8GRjvySBRos
         quyA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772129015; x=1772733815; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Qnm2oa0MVzHK3SlIdevV2oCNgF9I6YsjdLLXN+h7bs=;
        b=fe5AAuMVhwiufTecZHNGGxxeIcpxia1qsqUymEqEJQhLnmpZVEvIzxF2ccCvCUg8Z6
         cs0AtPA4V8A10pFFOkiO83XxUxanrnSZvGWxv9j7xPyDDJnZ+y4awd++of17KLks8Yhd
         NxI9KWGLTWiEf2wJa0clNH+GZNVFXlxg+8Eh63OivRBZcNdS7u1OEyOcLnR4tsVOyX8O
         5y575y98o8FdMWUJAxpSyiFq6AwJ27geVQCJmnGTnw7RqMde9MoXFjVhvLbDUkDR0K01
         CiGzmXHjlkMJDJV1+PFrWJX7ArumaBhaK5P7yTkhHpYeB/0BRFD4leNo+ySSnUdpmSqt
         tlyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772129015; x=1772733815;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9Qnm2oa0MVzHK3SlIdevV2oCNgF9I6YsjdLLXN+h7bs=;
        b=e8kCWxb5iPvBPXZn/0gsIlkmpbmbNtevcxaItaLTQ9vgXJ+2TdACB4kPvBaMOkloUu
         acwWUPaKqBj03nWtqNx40FVdGUna2QrL3zUt4/+0wY3T+zfuLZkpbs1qM7kFOKNdkp/Q
         j0yrUH74JOlPmaYvyxENVAj6vB3Xv9R3C543eOjCtDGstP/iuY/9Yvimlmrsk51ZDVmE
         cW0Gp+Y5M2cw0hjpfl+xqjmem5kjXuwjce5fS5GbaL9/IeD36dBjayAYTEwr0nL4kr7L
         HrwILs4A6gNgdhTvYoeoH9p+2dxcEywLwuZsoAaGDX0CzkUsujA70YnCbZZLlxKhxaOT
         uAPA==
X-Forwarded-Encrypted: i=1; AJvYcCVlQ37PHSgo74RfEMDkt8CtTRgLDPI0GDU8G4K0dHlSzMcM9ro1U4dQ3fUIkR7fX5eA8L/wGL0hG3RYfdyJ@lists.linaro.org
X-Gm-Message-State: AOJu0Ywfc82OLCzd5ICj7wYCFAQAd2odeDtJSIQ+hc5bFvBq02Z7XVDO
	c1Jph2Bl5sY5y4KWKLVk7+gmUaVh0opMeGcnrYL8vYKDcLpdoRNRUyfqecbyS1Yakx7dWV0FqXI
	mT+eqsfIiCkXQWZ1EqfhWORh3GHwGpDV22+Zg3M4=
X-Gm-Gg: ATEYQzwg8moXFbjk007l9+QxzGpKM2vvexJry26bOyZGrqcCuH0gw0z/WALvO9SL9za
	dRhAGecEtYfYoyMKvBmYt5hOJK1tTzzPy5zKoPeDloh41fU/Qb3w4PHngfDlewGPgY0FgSW9xnf
	rzRnGbsG6ueBOr6HLi/eU0E2G+UFvEz0xnN59jnSiv7uqXa3b+VEmP2TcVjGft/85Jqg6sKTI8G
	MceCyV65f+9fEkYFcNBZjvJW7sFLE+zXIgJZ4lH8Y84exGe4OqQ49PLomjz5+POdQUhbPYY5SdD
	YKFJPb/9LRaLZTgm+kb/TSK8M40d6umx+/qn
X-Received: by 2002:a17:906:eec7:b0:b87:d255:39ff with SMTP id
 a640c23a62f3a-b9081b37fe6mr1411724466b.32.1772129014224; Thu, 26 Feb 2026
 10:03:34 -0800 (PST)
MIME-Version: 1.0
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org>
 <CANDhNCqk9Uk4aXHhUsL4hR1GHNmWZnH3C9Np-A02wdi+J3D7tA@mail.gmail.com> <20260226-adaptable-vermilion-nautilus-0aa6f0@penduick>
In-Reply-To: <20260226-adaptable-vermilion-nautilus-0aa6f0@penduick>
From: John Stultz <jstultz@google.com>
Date: Thu, 26 Feb 2026 10:03:21 -0800
X-Gm-Features: AaiRm538ftOfa1UyUjDoV9Yd7b0SRwtnSHBghCEM_shajRcZSxbK21W611Pqdkc
Message-ID: <CANDhNCrpNU7QJgu+0CZRvdxLwKp8VNxZoG_zDo7qqxaE0mjoTw@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: -----
Message-ID-Hash: 7WRMTB75ZHNYMHEWXW5BR6NJKE2VUKNW
X-Message-ID-Hash: 7WRMTB75ZHNYMHEWXW5BR6NJKE2VUKNW
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/7] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7WRMTB75ZHNYMHEWXW5BR6NJKE2VUKNW/>
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
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.966];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,googlesource.com:url]
X-Rspamd-Queue-Id: E9DE51AD33E
X-Rspamd-Action: no action

T24gVGh1LCBGZWIgMjYsIDIwMjYgYXQgMjoxOOKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+IE9uIFdlZCwgRmViIDI1LCAyMDI2IGF0IDEwOjUxOjMwQU0g
LTA4MDAsIEpvaG4gU3R1bHR6IHdyb3RlOg0KPiA+IFNvIGhlYXBzLWFzLW1vZHVsZXMgaXMgY29t
bW9uIGluIHRoZSBBbmRyb2lkIGtlcm5lbHMsIGFuZCB3YXMNCj4gPiBhdHRlbXB0ZWQgdG8gYmUg
dXBzdHJlYW1lZCBsb25nIGFnbzoNCj4gPiAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwv
MjAxOTEwMjUyMzQ4MzQuMjgyMTQtMS1qb2huLnN0dWx0ekBsaW5hcm8ub3JnLw0KPiA+DQo+ID4g
QW5kIGl0IGdvdCBhIGZhaXJseSBjaGlsbHkgcmVjZXB0aW9uLCBidXQgbWF5YmUgaGF2aW5nIHRo
ZSBhZGRpdGlvbmFsDQo+ID4gb3B0ZWUgaGVhcCAoYXMgd2VsbCBhcyBvdGhlciBwcm9wb3NlZCBo
ZWFwcykgbWlnaHQgc3dheSBmb2xrcyBvbiB0aGlzDQo+ID4gbm93Lg0KPg0KPiBJIGRpZG4ndCBr
bm93IHRoYXQgQW5kcm9pZCB3YXMgdXNpbmcgaGVhcCBhcyBtb2R1bGVzIG9ubHksIGJ1dCBJJ2Qg
c2F5DQo+IHRoYXQgaXQncyBldmVuIG1vcmUgb2YgYSByZWFzb24gdG8gdXBzdHJlYW0gaXQgdGhl
bi4NCj4NCj4gPiBUaGVyZSBpcyBhbHNvIHRoZSBrcmVmIGJpdHMgeW91IG1pZ2h0IG5lZWQgKHdo
aWNoIEFuZHJvaWQgc3RpbGwgY2Fycmllcyk6DQo+ID4gICBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9sa21sLzIwMjAwNzI1MDMyNjMzLjEyNTAwNi0xLWpvaG4uc3R1bHR6QGxpbmFyby5vcmcvDQo+
DQo+IEknbSBjdXJpb3VzIGFib3V0IHRoaXMgb25lIHRob3VnaC4gSXQgbG9va3MgbGlrZSB5b3Ug
YWRkIHJlZmNvdW50aW5nLA0KPiBidXQgbmV2ZXIgcmVhbGx5IGdldCB0aGUgcmVmZXJlbmNlcyBh
bnl3aGVyZS4gV2hhdCB3YXMgeW91ciBpbnRlbnQsIHRoYXQNCj4gb24gZXZlcnkgYWxsb2NhdGlv
biB0aGUgYnVmZmVyIHdvdWxkIGdldCBhIHJlZmVyZW5jZSB0byB0aGUgaGVhcCBzbyB3ZQ0KPiBh
dm9pZCByZW1vdmluZyBhIGhlYXAgd2l0aCBhbGxvY2F0ZWQgYnVmZmVycz8NCg0KT2gsIGFwb2xv
Z2llcyBJIG1peGVkIHRoaXMgdXAuIFlvdSBjYW4gaWdub3JlIHRoYXQgc3VnZ2VzdGlvbi4NCg0K
SW4gQW5kcm9pZCwgb25jZSBmb2xrcyB3ZXJlIGZhbWlsaWFyIHdpdGggdGhpbmtpbmcgYWJvdXQg
ZG1hLWJ1Zg0KaGVhcHMsIHNvbWUgKG91dCBvZiB0cmVlKSBkcml2ZXJzIHdhbnRlZCB0byBiZSBh
YmxlIHRvIGludGVybmFsbHkNCmFsbG9jYXRlIGZyb20gYSBnaXZlbiBoZWFwIChzb21ld2hhdCBv
ZiBhIGhvbGQtb3ZlciBmcm9tIHRoZSBvbGQgSU9ODQpkcml2ZXJzKS4gU28gd2UgaGF2ZSBhIGNv
bnZlbmllbmNlIHBhdGNoIHRvIHByb3ZpZGUgdGhhdDoNCiAgIGh0dHBzOi8vYW5kcm9pZC5nb29n
bGVzb3VyY2UuY29tL2tlcm5lbC9jb21tb24vKy84ZTFlYzk3MzU1ZWY5OTI3ZTgyZWMxOGM5ODMx
MmJkY2Q4MGJmMjg5JTVFJTIxLw0KDQpBbmQgc2luY2Ugd2UgcmV0dXJuIGEgZG1hX2hlYXAgdG8g
dGhlIGRyaXZlciB0byBhbGxvY2F0ZSBhZ2FpbnN0Og0KICBodHRwczovL2FuZHJvaWQuZ29vZ2xl
c291cmNlLmNvbS9rZXJuZWwvY29tbW9uLysvZmMxMzEwZWJmOGZlMjVlYTdiOTgzNDAwZTZmYTQx
ZjVhNmQxMTk2NiU1RSUyMS8NCg0KVGhlIGtyZWYgYml0IGlzIHRvIG1ha2Ugc3VyZSB3ZSdyZSBk
b2luZyBwcm9wZXIgcmVmZXJlbmNlIGNvdW50aW5nIG9uDQp0aGF0IHNoYXJlZCBwb2ludGVyLg0K
DQpUaGlzIGVuZGVkIHVwIGdldHRpbmcgYnVuZGxlZCB0b2dldGhlciBhbG9uZyB3aXRoIHRoZSBo
ZWFwcy1hcy1tb2R1bGVzDQpjaGFuZ2VzIGluIG91ciBvdXQtb2YtdHJlZSBjaGFuZ2VzLCBhbmQg
SSBqdXN0IGNvbmZ1c2VkIGl0cyB1c2UgaGVyZS4NCg0KdGhhbmtzDQotam9obg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
