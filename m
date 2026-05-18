Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEgkBaTYCmrb8gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:15:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6895697A1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:15:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2262C406A2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 09:15:14 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 6B17640475
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 09:15:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=MtzABl4Q;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779095701;
	bh=Evhx71+uHCKSNbI1/JWhyd7uMUqb7RZM1k+fJyqK8h0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MtzABl4Q3eo4GdeoXvWI3cqPO9TB9LGGtg+aCcf41L4Mf22ir9b++t3fpS9jvSGwd
	 bPcO78fh1Na6RFzoy+kIES4fJNlLEWtPJPYlQN8+EUpWksyaRhwoz9MGP9WmWC+/fN
	 duVdX/lb18qgJ7S+5tNP+U9q4Ai5OrKbV/RbVwqe4MunZJe4C3foOr4EDutN71QLqh
	 ReLqLbArre6HxYnGUpcKJXP4dkuUnfdXOE6j3dnM+wgXUQWAwKkf5Y8hnDcv//TIE6
	 Pns1PthM/v6JOiWRSMmCDAfppOEyDec5Ik6cXJ8pYtyEDdptBMzkS6Ow9Np1x6XzyS
	 JkqM+aGD1NIow==
Received: from fedora (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8C06917E0319;
	Mon, 18 May 2026 11:15:00 +0200 (CEST)
Date: Mon, 18 May 2026 11:14:56 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260518111456.30ba9bba@fedora>
In-Reply-To: <03a57011-e734-4a74-aef2-e3a6016e15fc@amd.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
	<20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
	<03a57011-e734-4a74-aef2-e3a6016e15fc@amd.com>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 42F6TPBRQXBRJZXZD4SE7TNZ5L26CXFS
X-Message-ID-Hash: 42F6TPBRQXBRJZXZD4SE7TNZ5L26CXFS
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] dma-resv: Define guards for context-less dma_resv locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/42F6TPBRQXBRJZXZD4SE7TNZ5L26CXFS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 9D6895697A1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.964];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:email]
X-Rspamd-Action: no action

SGkgQ2hyaXN0aWFuLA0KDQpPbiBNb24sIDE4IE1heSAyMDI2IDA5OjEwOjIzICswMjAwDQpDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KDQo+IE9uIDUv
MTMvMjYgMTg6NTgsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToNCj4gPiBXaGVuIHVzZWQgd2l0aG91
dCBhIGNvbnRleHQsIGRtYV9yZXN2IGFyZSBubyBkaWZmZXJlbnQgZnJvbSByZWd1bGFyDQo+ID4g
bG9ja3MuIERlZmluZSBndWFyZHMgc28gd2UgY2FuIHVzZSB0aGUgZ3VhcmQtc3ludGFjdGljIHN1
Z2FycyBmb3INCj4gPiBleHBsaWNpdC9pbXBsaWNpdCBzY29wZWQgbG9ja3MuDQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3Jh
LmNvbT4gIA0KPiANCj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4gDQo+IEhvdyBkbyB5b3Ugd2FudCB0byB1cHN0cmVhbSBpdD8gTXkg
cHJlZmVyZW5jZSB3b3VsZCBiZSBkcm0tbWlzYy1uZXh0LCBidXQgSSB0aGluayBJIGNhbiBsaXZl
IHdpdGggYSBwYW50aG9yIHNwZWNpZmljIGJyYW5jaCBhcyB3ZWxsLg0KDQpFdmVyeXRoaW5nIFBh
bnRob3IgcmVsYXRlZCBnb2VzIHRocm91Z2ggZHJtLW1pc2MtbmV4dCwgc28gZHJtLW1pc2MtbmV4
dA0KYWxzbyBoYXMgbXkgcHJlZmVyZW5jZSA7LSkuIEJ1dCBJJ2QgbGlrZSB0byB3YWl0IGZvciBt
b3JlIGZlZWRiYWNrIG9uDQp0aGUgb3RoZXIgZHJtIHBhdGNoZXMsIGFuZCB0aGVyZSBhcmUgYSBm
ZXcgdGhpbmdzIEkgbmVlZCB0byBhZGRyZXNzIGluDQp0aGUgcGFudGhvciBwYXRjaGVzIGFueXdh
eSwgc28gaXQncyBsaWtlbHkgdG8gdGFrZSBhIGNvdXBsZSBtb3JlIHdlZWtzDQpmb3IgdGhpcyBz
ZXJpZXMgdG8gaGl0IHRoZSBkcm0tbWlzYyB0cmVlLCB1bmxlc3MgeW91IGhhdmUgYSBnb29kIHJl
YXNvbg0KdG8gZmFzdC10cmFjayB0aGlzIHNwZWNpZmljIHBhdGNoLg0KDQpSZWdhcmRzLA0KDQpC
b3Jpcw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
