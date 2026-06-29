Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yemGMN01QmqB1wkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 11:07:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 526876D7DD9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 11:07:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=k6LBd3yF;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52BDD40AA7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 09:07:40 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	by lists.linaro.org (Postfix) with ESMTPS id 29E2F3F798
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 09:06:29 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4gpgPZ2Y2Jz9try;
	Mon, 29 Jun 2026 11:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782723986; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+5DbOdCREXrMOWTs8JUDBnSvw6WHxdCc8/FhJoU4pkA=;
	b=k6LBd3yF3Cnq4MQdQc4I+O4WCdw+y7Noqxao+VzjtYi9OYQ7XW+2HvjGqcRVJHoVhmLcLc
	s3f/wRe0eJmN96EjhPw1DUomwvvHCZp9E29MDxZJGXjRduvgqpZmDIYGpED0MHzlp28kzq
	sWzDf/9h6tcOGRsWGi95XWpN/DHtGbuRxSXnOUtWgHmSLUHbth47Y6lCTVQizyutGmTqBZ
	zzmkABTINM7ROXl2HyKnQeCjpT5/UZ14ebvsqlbd7vW3fJwKCs1y7Q16CANb7SxjrDlZjT
	C5FMk0+KCbADbCzC5PRtEmUQmFqwwGEJDRkMh/I2fRYCS3JdwRS43uAxcBxtmQ==
Message-ID: <7dc78d8ae9903c215ec492ee39b27cc504da8307.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	phasta@kernel.org, Baineng Shou <shoubaineng@gmail.com>, Sumit Semwal
	 <sumit.semwal@linaro.org>
Date: Mon, 29 Jun 2026 11:06:22 +0200
In-Reply-To: <66344c20-ea97-4dfa-ac42-c9d6e061eb95@amd.com>
References: <20260629031346.3875683-1-shoubaineng@gmail.com>
	 <becd29b5-9e40-4104-b6c9-3d91e2ddddff@amd.com>
	 <058f4bb261e408cf17deca9ff7354460675eacbf.camel@mailbox.org>
	 <66344c20-ea97-4dfa-ac42-c9d6e061eb95@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: cfpbhpfazfnp163f3j9gh77ehdtgq5zb
X-MBO-RS-ID: 2e7c4b9ff8e2908180c
X-Spamd-Bar: ----
Message-ID-Hash: 6NXYRK2LUAWLPXOV5HFB7FR6Z3JPBSL3
X-Message-ID-Hash: 6NXYRK2LUAWLPXOV5HFB7FR6Z3JPBSL3
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Make dma_fence_dedup_array() robust against 0-count input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6NXYRK2LUAWLPXOV5HFB7FR6Z3JPBSL3/>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:phasta@kernel.org,m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:tursulin@ursulin.net,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,kernel.org,gmail.com,linaro.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,mailbox.org:mid,mailbox.org:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 526876D7DD9

T24gTW9uLCAyMDI2LTA2LTI5IGF0IDEwOjUyICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBPbiA2LzI5LzI2IDEwOjQ5LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+ID4gPiANCj4g
PiA+IEkgd2lsbCBhZGQgYSBDQyBzdGFibGUgYmVmb3JlIHB1c2hpbmcgdG8gZHJtLW1pc2MtZml4
ZXMuDQo+ID4gDQo+ID4gTm8gb2ZmZW5zZSBpbnRlbmRlZCBvciB0YWtlbiwgYnV0IGRvbid0IHRo
ZSBEUk0gcnVsZXMgc2F5IHRoYXQgdGhpbmdzDQo+ID4gZG8gbm90IGdldCBtZXJnZWQgd2hpbGUg
dGhlcmUgYXJlIG91dHN0YW5kaW5nIGNvbmNlcm5zIG9yIHNpZ25pZmljYW50DQo+ID4gcG9pbnRz
IGluIHJldmlldyBmZWVkYmFjaz8NCj4gDQo+IEkgaGF2ZW4ndCBzZWVuIHRoYXQgYmVmb3JlIHdy
aXRpbmcgdGhlIHJlc3BvbnNlLg0KPiANCj4gSSB1c3VhbGx5IGdvIG92ZXIgbXkgbWFpbHMgdGls
bCB0aGUgZW5kIGFuZCB3YWl0IGEgY291cGxlIG9mIGhvdXJzIGJlZm9yZSBwdXNoaW5nIGFueXRo
aW5nLg0KPiANCj4gPiBXaGF0IGFib3V0IG15IGNvbW1lbnRzPw0KPiANCj4gTG9va3MgdmFsaWQg
dG8gbWUgYXMgd2VsbCwgYnV0IEkgdGhpbmsgdGhhdCBpcyBhIHNlcGFyYXRlIGlzc3VlLg0KDQpC
dXQgaWYgd2Uga2VlcCBpdCBhbiBpbnRlZ2VyIGZvciBub3csIGFuZCBpZiB0aGF0IGNoZWNrIGlz
IGFkZGVkLCBhbmQNCml0IG1vc3QgY2VydGFpbmx5IHNob3VsZCBhbHNvIGNhdGNoIG5lZ2F0aXZl
IGludGVnZXJzLCBzaG91bGRuJ3QgaXQ/DQoNClAuDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
