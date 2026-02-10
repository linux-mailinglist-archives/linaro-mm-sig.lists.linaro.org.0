Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULaxECApi2n1QQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 13:48:32 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D658811AFE1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 13:48:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BEFDD3F700
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 12:48:30 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id BD6343F700
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 12:48:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Omxd9ntP;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 47D8A6013E;
	Tue, 10 Feb 2026 12:48:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AAD6C116C6;
	Tue, 10 Feb 2026 12:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770727704;
	bh=f9Hioy1nBNAN6Nj6FmxHzvPM8qjWxbtxXn6ma/BOEN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Omxd9ntPib7buprI2avF9vcC5Snk52LrNPhoNyFSO+Pp/RnFY9OpJi8PDjJVaxHmb
	 JXUYYvf8mDOqJL00C/SA5U6DUzy7M/eEd+7C4i1SVv3A4qZh92mM5Rm14mro68cR2t
	 6h0t8AeSTNBPNmliXeDF6glQjfeed1kx5MhPTPGFC1WpXrv0JLEgHiJbUaah2n5b5Z
	 gAdRG3klf2YYAP5MWPc6bLxDm6TKYyUEZQvEGN2z5fMUW9rlSD2hezSOCJvY1XcU/+
	 BRxCvbm1bcNecNnEBO0TGKpRpqR28vrU2kjBTA1jfqTtyRVkkCx0KnIFJBp3Nan0jG
	 VoQHRcdYSklIg==
Date: Tue, 10 Feb 2026 14:48:19 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20260210124819.GC12887@unreal>
References: <20260209153809.250835-1-jiri@resnulli.us>
 <20260209153809.250835-5-jiri@resnulli.us>
 <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
 <hwdezwktndbm6hoko3rz5lffgfljodegcygzf6rbdf2ferokj6@ftk2uk3rqfdq>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <hwdezwktndbm6hoko3rz5lffgfljodegcygzf6rbdf2ferokj6@ftk2uk3rqfdq>
X-Spamd-Bar: ---
Message-ID-Hash: U7KXRFEDNYPGVPF5YO6EDG6UGMHRWRBZ
X-Message-ID-Hash: U7KXRFEDNYPGVPF5YO6EDG6UGMHRWRBZ
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: John Stultz <jstultz@google.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] dma-buf: heaps: allow heap to specify valid heap flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U7KXRFEDNYPGVPF5YO6EDG6UGMHRWRBZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: D658811AFE1
X-Rspamd-Action: no action

T24gVHVlLCBGZWIgMTAsIDIwMjYgYXQgMTA6MDU6MTRBTSArMDEwMCwgSmlyaSBQaXJrbyB3cm90
ZToNCj4gTW9uLCBGZWIgMDksIDIwMjYgYXQgMDk6MDg6MDNQTSArMDEwMCwganN0dWx0ekBnb29n
bGUuY29tIHdyb3RlOg0KPiA+T24gTW9uLCBGZWIgOSwgMjAyNiBhdCA3OjM44oCvQU0gSmlyaSBQ
aXJrbyA8amlyaUByZXNudWxsaS51cz4gd3JvdGU6DQo+ID4+DQo+ID4+IEZyb206IEppcmkgUGly
a28gPGppcmlAbnZpZGlhLmNvbT4NCj4gPj4NCj4gPj4gQ3VycmVudGx5IHRoZSBmbGFncywgd2hp
Y2ggYXJlIHVudXNlZCwgYXJlIHZhbGlkYXRlZCBmb3IgYWxsIGhlYXBzLg0KPiA+PiBTaW5jZSB0
aGUgZm9sbG93LXVwIHBhdGNoIGludHJvZHVjZXMgYSBmbGFnIHZhbGlkIGZvciBvbmx5IG9uZSBv
ZiB0aGUNCj4gPj4gaGVhcHMsIGFsbG93IHRvIHNwZWNpZnkgdGhlIHZhbGlkIGZsYWdzIHBlci1o
ZWFwLg0KPiA+DQo+ID5JJ20gbm90IHJlYWxseSBpbiB0aGlzIHNwYWNlIGFueW1vcmUsIHNvIHRh
a2UgbXkgZmVlZGJhY2sgd2l0aCBhIGdyYWluIG9mIHNhbHQuDQo+ID4NCj4gPldoaWxlIHRoZSBo
ZWFwIGFsbG9jYXRlIGZsYWdzIGFyZ3VtZW50IGlzIHVudXNlZCwgaXQgd2FzIGludGVuZGVkIHRv
DQo+ID5iZSB1c2VkIGZvciBnZW5lcmljIGFsbG9jYXRpb24gZmxhZ3MgdGhhdCB3b3VsZCBhcHBs
eSB0byBhbGwgb3IgYXQNCj4gPmxlYXN0IGEgd2lkZSBtYWpvcml0eSBvZiBoZWFwcy4NCj4gPg0K
PiA+SXQgd2FzIGRlZmluaXRlbHkgbm90IGFkZGVkIHRvIGFsbG93IGZvciBwZXItaGVhcCBvciBo
ZWFwIHNwZWNpZmljDQo+ID5mbGFncyAoYXMgdGhpcyBwYXRjaCB0cmllcyB0byB1dGlsaXplIGl0
KS4gVGhhdCB3YXMgdGhlIG1lc3Mgd2UgaGFkDQo+ID53aXRoIElPTiBkcml2ZXIgdGhhdCB3ZSB3
ZXJlIHRyeWluZyB0byBhdm9pZC4NCj4gPg0KPiA+VGhlIGludGVudCBvZiBkbWEtYnVmIGhlYXBz
IGlzIHRvIHRyeSB0byBhYnN0cmFjdCBhbGwgdGhlIGRpZmZlcmVudA0KPiA+ZGV2aWNlIG1lbW9y
eSBjb25zdHJhaW50cyBzbyB0aGVyZSBvbmx5IG5lZWRzIHRvIGJlIGEgW3VzYWdlXSAtPg0KPiA+
W2hlYXBdIG1hcHBpbmcsIGFuZCBvdGhlcndpc2UgdXNlcmxhbmQgY2FuIGJlIGdlbmVyYWxpemVk
IHNvIHRoYXQgaXQNCj4gPmRvZXNuJ3QgbmVlZCB0byBiZSByZS13cml0dGVuIHRvIHdvcmsgd2l0
aCBkaWZmZXJlbnQgZGV2aWNlcy9tZW1vcnkNCj4gPnR5cGVzLiAgQWRkaW5nIGhlYXAtc3BlY2lm
aWMgYWxsb2NhdGlvbiBmbGFncyBwcmV2ZW50cyB0aGF0DQo+ID5nZW5lcmFsaXphdGlvbi4NCj4g
Pg0KPiA+U28gaW5zdGVhZCBvZiBhZGRpbmcgaGVhcCBzcGVjaWZpYyBmbGFncywgdGhlIGdlbmVy
YWwgYWR2aWNlIGhhcyBiZWVuDQo+ID50byBhZGQgYSBzZXBhcmF0ZSBoZWFwIG5hbWUgZm9yIHRo
ZSBmbGFnIHByb3BlcnR5Lg0KPiANCj4gUmlnaHQsIG15IG9yaWdpbmFsIGlkZWEgd2FzIHRvIGFk
ZCBhIHNlcGFyYXRlIGhlYXAuIFRoZW4gSSBzcG90dGVkIHRoZQ0KPiBmbGFncyBhbmQgc2VlbWVk
IGxpa2UgYSBncmVhdCBmaXQuIFdhcyBub3QgYXdhcmUgb3IgdGhlIGhpc3Rvcnkgb3INCj4gb3Jp
Z2luYWwgaW50ZW50aW9uLiBXb3VsZCBiZSBwcm9iYWJseSBnb29kIHRvIGRvY3VtZW50IGl0IGZv
cg0KPiBmdXR1cmUgZ2VuZXJhdGlvbnMuDQo+IA0KPiBTbyBpbnN0ZWFkIG9mIGZsYWcsIEkgd2ls
bCBhZGQgaGVhcCBuYW1lZCBzb21ldGhpbmcNCj4gbGlrZSAic3lzdGVtX2NjX2RlY3J5cHRlZCIg
dG8gaW1wbGVtZW50IHRoaXMuDQoNCkl0IGlzIHByb2JsZW1hdGljIHRvIGV4cG9zZSBhIHVzZXLi
gJF2aXNpYmxlIEFQSSB0aGF0IGRlcGVuZHMgb24gYSBuYW1lLg0KU3VjaCBhIGRlc2lnbiBsaW1p
dHMgb3VyIGFiaWxpdHkgdG8gZXh0ZW5kIHRoZSBmdW5jdGlvbmFsaXR5IGluIHRoZQ0KZnV0dXJl
LCBzaG91bGQgbmV3IHVzZSBjYXNlcyBhcmlzZS4NCg0KVGhhbmtzDQoNCj4gDQo+IFRoYW5rcyEN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
