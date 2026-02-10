Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHRnOPoQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7973A411D4B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AB9644D30
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:40:25 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 6E1153F700
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 09:05:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=btJdozax;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.44) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so5437515e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 01:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1770714317; x=1771319117; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OP3VbNx68VcllvOx/t4H1bQXdiTg3vSueeogLKpAveY=;
        b=btJdozax7AE0LlwdEq7W9qWsuNGapcVHL+5Ql9EPMil/lp7Sf5m/NnmlbKcUlIy1Je
         k9Jtuf8iuj1UDcMfh7zrqIdrX6NCicj+lNmVqM/AUOEzydSf23C9jDdouYVf5VL/9Hvf
         /ZRFrnU4Aqv1JE0V23ld1DB5mTXoXk8agQEme8/a38lJuiZn5y/rkxoSy2qXrTgGgGrd
         5ik3FkciOrZBjagFXK3svXSuvDyYmPw+B995azKxWx2hSewKYnKFT3kmmJUlnrwGOJeD
         N4oVI9n/bMXXSS5JwB6MwhF85a+Ck58L2TkkFaIS/amOjOeLfvqagvltoAGGBGnJmQbO
         OQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770714317; x=1771319117;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OP3VbNx68VcllvOx/t4H1bQXdiTg3vSueeogLKpAveY=;
        b=VHkz7qXOWOLHR0j2EpjvDV7zHLKjOMRUaj6nFlL7NEE6HdP00ikZyRnj0uVTr4KbDa
         dDy7S6eTJ6gd2ma5PRnQFbKUaT0B9c7MRt7qZtY731tNP1ENDsttRBsR0gYoj4h3YedU
         m402yFE7vVsYDYwmhPVHtRjfTwkj0XPWP6oQAKTTtyXSTbFBAeCEb6ZAZnHdUXTeeIRc
         ERCZ1w4OLwCYvmu16wzQ/257G/GQjJJoa0V0Ajz7daVMilUCwM3ezPFysZt5t8f4c2ZZ
         wacFQFXsn0Ds06x+WRRABGsSQnpf4WPFxEcmujrftEHc14oPF5xLc9jEMpfvrLJRMyoP
         zW4w==
X-Forwarded-Encrypted: i=1; AJvYcCVak7o1KqACJnMDrvmUwosOvAIvA20KA//cM5LGseTcB5fP1u/4r673Pz87nBvRaLaExFn6UJ0J5a6kXZBR@lists.linaro.org
X-Gm-Message-State: AOJu0YwAlHD0RulDq4U/Ir+9s2gA8mokAne66MjVtF8iBvTbP+20LEMn
	y3gOo+krTpGghD7zn+xpzjnXxZydoksNBdT5IFEJC6NN4DpqFz9SNXZrBUqu9/DkHWI=
X-Gm-Gg: AZuq6aKZc4PPOQS1AWQcw/kX5R8mxK465ajSC0feoq0fHOWRceT2CFgsWjjaIl1Ly7L
	4vMqYb4BhyrKqSdYQsPIi+afZDfPDgGPeK3L5DMbrFGA4rc7zlhwJnShjrbVB6vHdHkCIr2jUWy
	Ved/FE3ihLaVrCmOjyqhneHGDeS1X4/K2GtVdY+9XOGFi+Hzo8nqcG+npPMArRFt7Y9yrNe+Oi/
	lW6a2Q0t2rhY6X+ffeoXrJMHLq4Zo9gJOjkiH3VgT+NH7IQcs78zYmhCaWM1pBWkoCWLmjgBCNr
	hQhaX6QWp/HyIB1mbQdNZBA75qTxxArujHb2Labh/+VPcB0uQDg19rS3I4fQHtjsT7G3qG900JX
	CCUf7HUMSavWTm7VDYijzT8oVRrX/HV/u5msi6wn7Tl+Vv/eG9eFqQYdCDQp9yq55+u2xJdPlt6
	LHnbg6J5Oc9/832rwlXUqNbRVJAlUn0GE/kXM=
X-Received: by 2002:a05:600c:674f:b0:471:13dd:bae7 with SMTP id 5b1f17b1804b1-4832022aee5mr181770665e9.30.1770714317119;
        Tue, 10 Feb 2026 01:05:17 -0800 (PST)
Received: from FV6GYCPJ69 ([140.209.217.211])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296bd4desm32761634f8f.18.2026.02.10.01.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 01:05:16 -0800 (PST)
Date: Tue, 10 Feb 2026 10:05:14 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: John Stultz <jstultz@google.com>
Message-ID: <hwdezwktndbm6hoko3rz5lffgfljodegcygzf6rbdf2ferokj6@ftk2uk3rqfdq>
References: <20260209153809.250835-1-jiri@resnulli.us>
 <20260209153809.250835-5-jiri@resnulli.us>
 <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KYKQGX2OSMY5BUGOKECYSGWGJPPZPSLN
X-Message-ID-Hash: KYKQGX2OSMY5BUGOKECYSGWGJPPZPSLN
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:12 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] dma-buf: heaps: allow heap to specify valid heap flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KYKQGX2OSMY5BUGOKECYSGWGJPPZPSLN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.09 / 15.00];
	DATE_IN_PAST(1.00)[1567];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[resnulli.us];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,resnulli.us:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7973A411D4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

TW9uLCBGZWIgMDksIDIwMjYgYXQgMDk6MDg6MDNQTSArMDEwMCwganN0dWx0ekBnb29nbGUuY29t
IHdyb3RlOg0KPk9uIE1vbiwgRmViIDksIDIwMjYgYXQgNzozOOKAr0FNIEppcmkgUGlya28gPGpp
cmlAcmVzbnVsbGkudXM+IHdyb3RlOg0KPj4NCj4+IEZyb206IEppcmkgUGlya28gPGppcmlAbnZp
ZGlhLmNvbT4NCj4+DQo+PiBDdXJyZW50bHkgdGhlIGZsYWdzLCB3aGljaCBhcmUgdW51c2VkLCBh
cmUgdmFsaWRhdGVkIGZvciBhbGwgaGVhcHMuDQo+PiBTaW5jZSB0aGUgZm9sbG93LXVwIHBhdGNo
IGludHJvZHVjZXMgYSBmbGFnIHZhbGlkIGZvciBvbmx5IG9uZSBvZiB0aGUNCj4+IGhlYXBzLCBh
bGxvdyB0byBzcGVjaWZ5IHRoZSB2YWxpZCBmbGFncyBwZXItaGVhcC4NCj4NCj5JJ20gbm90IHJl
YWxseSBpbiB0aGlzIHNwYWNlIGFueW1vcmUsIHNvIHRha2UgbXkgZmVlZGJhY2sgd2l0aCBhIGdy
YWluIG9mIHNhbHQuDQo+DQo+V2hpbGUgdGhlIGhlYXAgYWxsb2NhdGUgZmxhZ3MgYXJndW1lbnQg
aXMgdW51c2VkLCBpdCB3YXMgaW50ZW5kZWQgdG8NCj5iZSB1c2VkIGZvciBnZW5lcmljIGFsbG9j
YXRpb24gZmxhZ3MgdGhhdCB3b3VsZCBhcHBseSB0byBhbGwgb3IgYXQNCj5sZWFzdCBhIHdpZGUg
bWFqb3JpdHkgb2YgaGVhcHMuDQo+DQo+SXQgd2FzIGRlZmluaXRlbHkgbm90IGFkZGVkIHRvIGFs
bG93IGZvciBwZXItaGVhcCBvciBoZWFwIHNwZWNpZmljDQo+ZmxhZ3MgKGFzIHRoaXMgcGF0Y2gg
dHJpZXMgdG8gdXRpbGl6ZSBpdCkuIFRoYXQgd2FzIHRoZSBtZXNzIHdlIGhhZA0KPndpdGggSU9O
IGRyaXZlciB0aGF0IHdlIHdlcmUgdHJ5aW5nIHRvIGF2b2lkLg0KPg0KPlRoZSBpbnRlbnQgb2Yg
ZG1hLWJ1ZiBoZWFwcyBpcyB0byB0cnkgdG8gYWJzdHJhY3QgYWxsIHRoZSBkaWZmZXJlbnQNCj5k
ZXZpY2UgbWVtb3J5IGNvbnN0cmFpbnRzIHNvIHRoZXJlIG9ubHkgbmVlZHMgdG8gYmUgYSBbdXNh
Z2VdIC0+DQo+W2hlYXBdIG1hcHBpbmcsIGFuZCBvdGhlcndpc2UgdXNlcmxhbmQgY2FuIGJlIGdl
bmVyYWxpemVkIHNvIHRoYXQgaXQNCj5kb2Vzbid0IG5lZWQgdG8gYmUgcmUtd3JpdHRlbiB0byB3
b3JrIHdpdGggZGlmZmVyZW50IGRldmljZXMvbWVtb3J5DQo+dHlwZXMuICBBZGRpbmcgaGVhcC1z
cGVjaWZpYyBhbGxvY2F0aW9uIGZsYWdzIHByZXZlbnRzIHRoYXQNCj5nZW5lcmFsaXphdGlvbi4N
Cj4NCj5TbyBpbnN0ZWFkIG9mIGFkZGluZyBoZWFwIHNwZWNpZmljIGZsYWdzLCB0aGUgZ2VuZXJh
bCBhZHZpY2UgaGFzIGJlZW4NCj50byBhZGQgYSBzZXBhcmF0ZSBoZWFwIG5hbWUgZm9yIHRoZSBm
bGFnIHByb3BlcnR5Lg0KDQpSaWdodCwgbXkgb3JpZ2luYWwgaWRlYSB3YXMgdG8gYWRkIGEgc2Vw
YXJhdGUgaGVhcC4gVGhlbiBJIHNwb3R0ZWQgdGhlDQpmbGFncyBhbmQgc2VlbWVkIGxpa2UgYSBn
cmVhdCBmaXQuIFdhcyBub3QgYXdhcmUgb3IgdGhlIGhpc3Rvcnkgb3INCm9yaWdpbmFsIGludGVu
dGlvbi4gV291bGQgYmUgcHJvYmFibHkgZ29vZCB0byBkb2N1bWVudCBpdCBmb3INCmZ1dHVyZSBn
ZW5lcmF0aW9ucy4NCg0KU28gaW5zdGVhZCBvZiBmbGFnLCBJIHdpbGwgYWRkIGhlYXAgbmFtZWQg
c29tZXRoaW5nDQpsaWtlICJzeXN0ZW1fY2NfZGVjcnlwdGVkIiB0byBpbXBsZW1lbnQgdGhpcy4N
Cg0KVGhhbmtzIQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
