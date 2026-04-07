Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHfpELlk5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AB9431AC7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:39:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4FE840501
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:39:03 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by lists.linaro.org (Postfix) with ESMTPS id 98C913F83D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2026 09:25:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20251104.gappssmtp.com header.s=20251104 header.b=fiMpNkHd;
	dmarc=none;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.221.48) smtp.mailfrom=jiri@resnulli.us
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-43b9d3ebed5so4042675f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Apr 2026 02:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1775553918; x=1776158718; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ChD0onF1gDOUOLYFpD7x1c0kz7T4QILlyJ39777mmvM=;
        b=fiMpNkHdNAEa5KmP+NDMkbf7Z5jb0OlFakCOC7ABEhHYhKO3p4Nr1nZKuG8me1uTMy
         /tUOeSMrV0zUyFDWDBPF58a2yAZKHJx5spFd0bdZwloXC5IFeMgAh9TxAvly7RikLJB3
         p3mCl10c/YMhZ1+3odY0+nocMtTAzBUyjHtTpotxKvrZJCM8xI2PuSspSCe3ou35diGs
         EXgQSdeu1O8UtWwviOvADOUbksIzi0rgNNM5KjQY8A3kfb8PX53rOcaFDt30ve28i+Ql
         kUe+bzZRdO//NfNBMzTfqhyXVOEGMP9SZuefaRJCsWzSeHj+LZnQkeX29AccpQSSeKiI
         HTfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775553918; x=1776158718;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ChD0onF1gDOUOLYFpD7x1c0kz7T4QILlyJ39777mmvM=;
        b=F/cU+EHlc5fuUNWhHzBXMSCt6/68YLNYeTPsm6dA25W8lP+TPxaMc+s+3nmicq2p4Y
         ckJqOHGKb2ge4uwzh3uFqBnWDskC/JixPsmgHBIXq5EY+oLttCNJJEwjJsa9ZaN0d+DP
         qdS0phOI83EU8qxWKGCfwVk9hMb+qVH7AXp//hpvQRWtmPEBNfVUmCy0GXbME6Lr7Pp8
         sP+WyAJcZjyAJPfZ7KHJkYJixJwdUxFrpGIWAejTwIeKjvRLaSn6qEqhB+BWb3L7GiIw
         kbrpXtoqmHTCQ06/hUsxUQ0n+1ivldokfohVbyazAyJSRmH7xQAbjYnGbg3bCJVZWtds
         LNEA==
X-Forwarded-Encrypted: i=1; AJvYcCXO4fkm9HG9RED5CpaOY4m3BvioXS/CzwC1j91iWrfQZqwOsvU2beGBdNj532fKxzJsHlNmZg/6Aq9UEO+8@lists.linaro.org
X-Gm-Message-State: AOJu0Yx7VzjDXC4Buv+x8eb4fYgeTSe+Ju8Mx5hKlEBKJ4CVbr05hpgS
	2BOccd4tsQklFXqeulo1bQ74kMFqOBLcLJOkZWwoC19IrAcVP+s0TPeNRf4Von3Tu4o=
X-Gm-Gg: AeBDietk/Z+/L9KwhX1Aelc0yHqr9V5CQvie+Dp4AjoowpMrX2c07rAK3CVLSNAnww0
	htc2EwNQq0Tj1+m/l0Xv8uZCAUpy1HTg74z+5n5YjA1uykAoS3lknli08unGqP6AVo9J+kXMpqe
	0Q6oQnL+uvAekKxQo9nayYi1VIbTbixdRh8og9FCZ1Lz1+iLI5f0mVeXwZbV2GHvEcCwXIswm+l
	L7FhS30rm+EsnljWVlNwXBDL2jTZOK0l57KpyQD1w343y46TCSUVJDS3RmROtAo0BhO0V2mMR2z
	H8pvDAe2mVjqrC+R1Z5Su08mieE3ahSveyWv24mTOlWWfY5UNqRSuUrojuUJRrO74B3YW9eSph3
	eaWNMnMAIRJYnc0xttzFGwzhnbFOcP0tDxYQHoLZ0PoJtBmT9hCvUBB6BvNNQJAF6WNoR28UNBB
	7HeoAD1ey8bISqVVYwtdXC6+1B2a2aTo8=
X-Received: by 2002:a05:6000:4201:b0:43c:f95c:3e66 with SMTP id ffacd0b85a97d-43d29294b62mr24203622f8f.21.1775553918478;
        Tue, 07 Apr 2026 02:25:18 -0700 (PDT)
Received: from FV6GYCPJ69 ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d1e4f5016sm52091538f8f.33.2026.04.07.02.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2026 02:25:17 -0700 (PDT)
Date: Tue, 7 Apr 2026 11:25:15 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <5l5ack3pgpajrkbcactkiyvfi5pir3jn5eg6tmohcrdgiuqtn5@odbwbvsn4vrj>
References: <20260402141103.598495-1-jiri@resnulli.us>
 <CABdmKX3N70j8ZZs5DNhx6fhRi=Aa_+2xY1JHcW+uDoaV2+Sngw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABdmKX3N70j8ZZs5DNhx6fhRi=Aa_+2xY1JHcW+uDoaV2+Sngw@mail.gmail.com>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3PV4XKJIVAPHH54IYNRY2ZYJL3YAPLAN
X-Message-ID-Hash: 3PV4XKJIVAPHH54IYNRY2ZYJL3YAPLAN
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:38:52 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: system: document system_cc_shared heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3PV4XKJIVAPHH54IYNRY2ZYJL3YAPLAN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.09 / 15.00];
	DATE_IN_PAST(1.00)[320];
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
	NEURAL_SPAM(0.00)[0.915];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,resnulli.us:email]
X-Rspamd-Queue-Id: A5AB9431AC7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

TW9uLCBBcHIgMDYsIDIwMjYgYXQgMTA6MjA6MzNQTSArMDIwMCwgdGptZXJjaWVyQGdvb2dsZS5j
b20gd3JvdGU6DQo+T24gVGh1LCBBcHIgMiwgMjAyNiBhdCA3OjEx4oCvQU0gSmlyaSBQaXJrbyA8
amlyaUByZXNudWxsaS51cz4gd3JvdGU6DQo+Pg0KPj4gRnJvbTogSmlyaSBQaXJrbyA8amlyaUBu
dmlkaWEuY29tPg0KPj4NCj4+IERvY3VtZW50IHRoZSBzeXN0ZW1fY2Nfc2hhcmVkIGRtYS1idWYg
aGVhcCB0aGF0IHdhcyBpbnRyb2R1Y2VkDQo+PiByZWNlbnRseS4gRGVzY3JpYmUgaXRzIHB1cnBv
c2UsIGF2YWlsYWJpbGl0eSBjb25kaXRpb25zIGFuZA0KPj4gcmVsYXRpb24gdG8gY29uZmlkZW50
aWFsIGNvbXB1dGluZyBWTXMuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogSmlyaSBQaXJrbyA8amly
aUBudmlkaWEuY29tPg0KPj4gLS0tDQo+PiAgRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL2Rt
YS1idWYtaGVhcHMucnN0IHwgOCArKysrKysrKw0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBp
L2RtYS1idWYtaGVhcHMucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL2RtYS1idWYt
aGVhcHMucnN0DQo+PiBpbmRleCAwNTQ0NWM4M2I3OWEuLjU5MTczMjM5M2U3ZCAxMDA2NDQNCj4+
IC0tLSBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9kbWEtYnVmLWhlYXBzLnJzdA0KPj4g
KysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL2RtYS1idWYtaGVhcHMucnN0DQo+PiBA
QCAtMTYsNiArMTYsMTQgQEAgZm9sbG93aW5nIGhlYXBzOg0KPj4NCj4+ICAgLSBUaGUgYGBzeXN0
ZW1gYCBoZWFwIGFsbG9jYXRlcyB2aXJ0dWFsbHkgY29udGlndW91cywgY2FjaGVhYmxlLCBidWZm
ZXJzLg0KPj4NCj4+ICsgLSBUaGUgYGBzeXN0ZW1fY2Nfc2hhcmVkYGAgaGVhcCBhbGxvY2F0ZXMg
dmlydHVhbGx5IGNvbnRpZ3VvdXMsIGNhY2hlYWJsZSwNCj4+ICsgICBidWZmZXJzIHVzaW5nIHNo
YXJlZCAoZGVjcnlwdGVkKSBtZW1vcnkuIEl0IGlzIG9ubHkgcHJlc2VudCBvbg0KPj4gKyAgIGNv
bmZpZGVudGlhbCBjb21wdXRpbmcgKENvQ28pIFZNcyB3aGVyZSBtZW1vcnkgZW5jcnlwdGlvbiBp
cyBhY3RpdmUNCj4+ICsgICAoZS5nLiwgQU1EIFNFViwgSW50ZWwgVERYKS4gVGhlIGFsbG9jYXRl
ZCBwYWdlcyBoYXZlIHRoZSBlbmNyeXB0aW9uDQo+PiArICAgYml0IGNsZWFyZWQsIG1ha2luZyB0
aGVtIGFjY2Vzc2libGUgZm9yIGRldmljZSBETUEgd2l0aG91dCBURElTUA0KPj4gKyAgIHN1cHBv
cnQuIE9uIG5vbi1Db0NvIFZNcyBjb25maWd1cmF0aW9ucywgdGhpcyBoZWFwIGlzDQo+DQo+Im5v
bi1Db0NvIFZNIGNvbmZpZ3VyYXRpb25zIg0KPg0KPj4gKyAgIG5vdCByZWdpc3RlcmVkLg0KPg0K
PkRvZXNuJ3Qgc2VlbSBsaWtlIHlvdSBuZWVkIHRvIHdyYXAgdGhpcyBsaW5lLg0KPg0KPndpdGgg
dGhhdDogUmV2aWV3ZWQtYnk6IFQuSi5NZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCg0K
T2theS4gVGhhbmtzIQ0KDQoNCj4NCj4+ICsNCj4+ICAgLSBUaGUgYGBkZWZhdWx0X2NtYV9yZWdp
b25gYCBoZWFwIGFsbG9jYXRlcyBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMsDQo+PiAgICAgY2FjaGVh
YmxlLCBidWZmZXJzLiBPbmx5IHByZXNlbnQgaWYgYSBDTUEgcmVnaW9uIGlzIHByZXNlbnQuIFN1
Y2ggYQ0KPj4gICAgIHJlZ2lvbiBpcyB1c3VhbGx5IGNyZWF0ZWQgZWl0aGVyIHRocm91Z2ggdGhl
IGtlcm5lbCBjb21tYW5kbGluZQ0KPg0KPkVhY2ggcGFyYWdyYXBoIHN0YXJ0aW5nIHdpdGggJy0n
IGNvbmZ1c2VkIG1lIGZvciBhIHNlY29uZCB0aGVyZS4gVGhvc2UNCj5hcmVuJ3QgcGFydCBvZiB0
aGUgZGlmZi4gOikNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
