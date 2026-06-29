Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AkSVAWdMQmpV4QkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 12:43:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E196D9060
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 12:43:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=ZePC5gdl;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 914C440A7A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 10:43:49 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by lists.linaro.org (Postfix) with ESMTPS id 01C75401F2
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 10:43:38 +0000 (UTC)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4gpjYg3zfmz9v78;
	Mon, 29 Jun 2026 12:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782729815; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NKXo9kS8UPvQyEKtU98KqOyTUanqfXLW03eEjmWvD6I=;
	b=ZePC5gdle9c/KcEU/FYbGda+2I6PpG34VSg5jS1oI8JgrZ4DYtByZwiZmyIRlYjqHM90L6
	88cfHBWbJXwtxgJxRAWLba+JOsqISencpdXFGXBDXV8RG48OUMnFM6ipDZDObdTMG4BZBU
	Kz9OMQ9mlXDPUHOBoTHXvChLOSM5Uqz28Me4XbK//lcfDdtNjhiknw7n2mup1zNgkZ8TUI
	wb/+P7Ovd6uuF9E8c1Ptlueqkbtl/CfUnu4Cz3F0F0KgadF2WXB0atXvhPyjUBqpOVPqvk
	ve4bd45yRdq/NwFwF5Z2nhGGhcBnoTEjXEE79+wfjEj49O+nB8+q9+YmRP1Ouw==
Message-ID: <2f4ee171084d82235e23017886662b2d5b3506c0.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Philipp
 Stanner <phasta@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Boris
 Brezillon	 <boris.brezillon@collabora.com>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>,  =?ISO-8859-1?Q?Andr=E9?= Draszik	
 <andre.draszik@linaro.org>, Danilo Krummrich <dakr@kernel.org>, Gary Guo	
 <gary@garyguo.net>, "Paul E . McKenney" <paulmck@kernel.org>, Boqun Feng	
 <boqun@kernel.org>
Date: Mon, 29 Jun 2026 12:43:29 +0200
In-Reply-To: <688077c3-903d-4cf5-837f-40621175cb30@amd.com>
References: <20260629075636.2513214-2-phasta@kernel.org>
	 <688077c3-903d-4cf5-837f-40621175cb30@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: fyurinxj6p8ugeguzshhwdjorkkaou3a
X-MBO-RS-ID: f215f38f57b359d7c56
X-Spamd-Bar: ----
Message-ID-Hash: 7GTUQOAXLDXVVE46TGVWDHHML3DXDXQJ
X-Message-ID-Hash: 7GTUQOAXLDXVVE46TGVWDHHML3DXDXQJ
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: dma-fence: Fix potential NULL pointer dereference
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7GTUQOAXLDXVVE46TGVWDHHML3DXDXQJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:phasta@kernel.org,m:sumit.semwal@linaro.org,m:boris.brezillon@collabora.com,m:tvrtko.ursulin@igalia.com,m:andre.draszik@linaro.org,m:dakr@kernel.org,m:gary@garyguo.net,m:paulmck@kernel.org,m:boqun@kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mailbox.org:mid,mailbox.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 83E196D9060

T24gTW9uLCAyMDI2LTA2LTI5IGF0IDEwOjQ5ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiA2LzI5LzI2IDA5OjU2LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+ID4gQ2M6IHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiBGaXhlczogZjRjYzNhYjgyNGQ2ICgiZG1hLWJ1Zjog
cHJvdGVjdGVkIGZlbmNlIG9wcyBieSBSQ1UgdjgiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IFBoaWxp
cHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+IA0KPiBSZXZpZXdlZC1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQpBcyB0aGUgbWFpbnRhaW5l
ciB5b3UgcHVzaCB0aGF0IG9uZSwgZG9uJ3QgeW91IENocmlzdGlhbj8NCg0KUmVnYXJkcw0KUC4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
