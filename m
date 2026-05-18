Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APwRCxYfC2q8DgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:15:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B6C56E859
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 16:15:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AA604095B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:15:48 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id E9E223F91A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 14:15:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=MjR5dh6D;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779113735;
	bh=QDhP2ywyXlpxq310WYLb3KtdttgJ/FJZ9LPyfSF/Qxk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MjR5dh6DsJgL0f40EMCWwtquK5OJ/A/kVSwXGNDcgSomQblUUjk8ZTwjRW3ENLNrs
	 aiJfPViRQVbayYcHJ5w6Z67KNWoebKyOi3echpl6ZFlozTqWd6xYAVsleIjLVVTXjf
	 d45/S10lQa/h9nykuB1QorwzPVinCUd/10e0iG9fY0sZuMhu3nPtmU/AcTTpaMjv2E
	 Bth3MqjjCZqzo3LzfKzg9sBu4eNgCPM4m+CY0tUPWW1EuwvqjeZrXWLJw2Y84ocqNe
	 3RdZvqYVsovVTElND8wBV8oVrhdqjGToQJErRh5s24fuPU6igUxKNAgTzfkrS3KO20
	 /E20WxyY+UuLg==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1D05117E04E2;
	Mon, 18 May 2026 16:15:35 +0200 (CEST)
Date: Mon, 18 May 2026 16:15:31 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260518161531.331cab2d@fedora>
In-Reply-To: <a9ee80aa-0c9b-4bd7-87bb-d3e228357b18@amd.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
	<20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
	<03a57011-e734-4a74-aef2-e3a6016e15fc@amd.com>
	<20260518111456.30ba9bba@fedora>
	<a9ee80aa-0c9b-4bd7-87bb-d3e228357b18@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: HDJV56K2RRYTALV27OR5WAA6NQNRXUGJ
X-Message-ID-Hash: HDJV56K2RRYTALV27OR5WAA6NQNRXUGJ
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] dma-resv: Define guards for context-less dma_resv locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HDJV56K2RRYTALV27OR5WAA6NQNRXUGJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.19 / 15.00];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[collabora.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: B8B6C56E859
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAxOCBNYXkgMjAyNiAxNDoxODo0MSArMDIwMA0KQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCg0KPiBPbiA1LzE4LzI2IDExOjE0LCBCb3Jp
cyBCcmV6aWxsb24gd3JvdGU6DQo+ID4gSGkgQ2hyaXN0aWFuLA0KPiA+IA0KPiA+IE9uIE1vbiwg
MTggTWF5IDIwMjYgMDk6MTA6MjMgKzAyMDANCj4gPiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+ICAgDQo+ID4+IE9uIDUvMTMvMjYgMTg6NTgs
IEJvcmlzIEJyZXppbGxvbiB3cm90ZTogIA0KPiA+Pj4gV2hlbiB1c2VkIHdpdGhvdXQgYSBjb250
ZXh0LCBkbWFfcmVzdiBhcmUgbm8gZGlmZmVyZW50IGZyb20gcmVndWxhcg0KPiA+Pj4gbG9ja3Mu
IERlZmluZSBndWFyZHMgc28gd2UgY2FuIHVzZSB0aGUgZ3VhcmQtc3ludGFjdGljIHN1Z2FycyBm
b3INCj4gPj4+IGV4cGxpY2l0L2ltcGxpY2l0IHNjb3BlZCBsb2Nrcy4NCj4gPj4+DQo+ID4+PiBT
aWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEu
Y29tPiAgICANCj4gPj4NCj4gPj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gPj4NCj4gPj4gSG93IGRvIHlvdSB3YW50IHRvIHVwc3Ry
ZWFtIGl0PyBNeSBwcmVmZXJlbmNlIHdvdWxkIGJlIGRybS1taXNjLW5leHQsIGJ1dCBJIHRoaW5r
IEkgY2FuIGxpdmUgd2l0aCBhIHBhbnRob3Igc3BlY2lmaWMgYnJhbmNoIGFzIHdlbGwuICANCj4g
PiANCj4gPiBFdmVyeXRoaW5nIFBhbnRob3IgcmVsYXRlZCBnb2VzIHRocm91Z2ggZHJtLW1pc2Mt
bmV4dCwgc28gZHJtLW1pc2MtbmV4dA0KPiA+IGFsc28gaGFzIG15IHByZWZlcmVuY2UgOy0pLiBC
dXQgSSdkIGxpa2UgdG8gd2FpdCBmb3IgbW9yZSBmZWVkYmFjayBvbg0KPiA+IHRoZSBvdGhlciBk
cm0gcGF0Y2hlcywgYW5kIHRoZXJlIGFyZSBhIGZldyB0aGluZ3MgSSBuZWVkIHRvIGFkZHJlc3Mg
aW4NCj4gPiB0aGUgcGFudGhvciBwYXRjaGVzIGFueXdheSwgc28gaXQncyBsaWtlbHkgdG8gdGFr
ZSBhIGNvdXBsZSBtb3JlIHdlZWtzDQo+ID4gZm9yIHRoaXMgc2VyaWVzIHRvIGhpdCB0aGUgZHJt
LW1pc2MgdHJlZSwgdW5sZXNzIHlvdSBoYXZlIGEgZ29vZCByZWFzb24NCj4gPiB0byBmYXN0LXRy
YWNrIHRoaXMgc3BlY2lmaWMgcGF0Y2guICANCj4gDQo+IFdlbGwgdGhlIERNQS1idWYgY29kZSBp
dHNlbGYgdXNlcyBkbWFfcmVzdl9sb2NrL3VubG9jaw0KDQpUaGVyZSdzIG5vIHVzZSBpbiBkbWEt
cmVzdi5jIHRoYXQgY2FuIGJlIGNvbnZlcnRlZCB0byBndWFyZHMuIEkgZ2F2ZQ0KZG1hLWJ1Zi5j
IGEgdHJ5LCBidXQganVzdCBsaWtlIGZvciBwYW50aG9yLCBJIGRvbid0IHJlYWxseSBsaWtlIHRo
ZSBmYWN0DQppdCdzIGhhbGZ3YXkgdGhyb3VnaCAob3RoZXIgbG9ja3Mgc3RpbGwgdXNlIG1hbnVh
bCBsb2NraW5nKSwgc28gSSdkIGJlDQp0ZW1wdGVkIHRvIGNvbnZlcnQgZXZlcnl0aGluZyBhdCBv
bmNlIGZvciBjb25zaXN0ZW5jeS4gSWYgeW91J3JlIGZpbmUNCndpdGggdGhhdCwgSSBjYW4gZ2l2
ZSB0aGlzIGEgdHJ5Lg0KDQo+IGFuZCBvYnZpb3VzbHkgaGFzIHRlc3QgY2FzZXMgZm9yIGFsbCB0
aGUgZGlmZmVyZW50IHZhcmlhbnRzLg0KDQpMb29rcyBsaWtlIHRoZSB0ZXN0IGNhc2VzIGFsbCB2
YWxpZGF0ZSB0aGF0IGRtYV9yZXN2X2xvY2soeCwgTlVMTCkNCnJldHVybnMgMC4gSWYgSSB3ZXJl
IHRvIGNvbnZlcnQgdGhvc2UgdG8gZ3VhcmQoZG1hX3Jlc3YpKCksIHRoZXNlIGNoZWNrcw0Kd291
bGQgYmUgZ29uZS4gSXMgdGhhdCBva2F5IHdpdGggeW91Pw0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
