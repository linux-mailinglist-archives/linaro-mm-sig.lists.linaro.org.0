Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W3ddHgrYPGrTtAgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 09:26:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AFC6C357B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 09:26:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=mailbox.org header.s=mail20150812 header.b=kvR2dK2k;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=mailbox.org (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EADF740A33
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 07:26:00 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id 10073401CC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jun 2026 07:25:50 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4gm9MH20n3z9tQr;
	Thu, 25 Jun 2026 09:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782372347; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VQD35UO6Szx2rw0N2+oli/oEjPgYfVwfdvJ9X7POARs=;
	b=kvR2dK2kR1dyf5Tq8+qbQ76pCXcAPQg/vW3aGUr814ncITGW7RZEVrI1TXRAF+7hPogHHu
	FKFE/D8vmBW/yql8Aij69QlVwh41e7VpM3GilLj+yxK/5U7VAFIrzikZQ9gL+hTUfwxgpr
	yFmJfEeoA0y+3qlO8Mc9hMkK0kfgCU/BdINVJ0HQl7iOq0Yj65appxMXfl/Cirm2UTGMdh
	PFXnW2n0gPs0qt1f1K9iwUXu3VrQhkRYATOEC+BQkegbyO5F1kIYmfkh4JERMWgLI2wfNA
	iboDfIzVyIR5KxCW5OpC/7/lL/xBojMW1fZr8bFpyOW9KJFFocJ5q7shM0MMBA==
Message-ID: <c9d8f3a762601f352bd176d4ae5c7977edaeab11.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@kernel.org, simona@ffwll.ch, sumit.semwal@linaro.org,
	tvrtko.ursulin@igalia.com, dakr@kernel.org
Date: Thu, 25 Jun 2026 09:25:43 +0200
In-Reply-To: <20260624122917.2483-1-christian.koenig@amd.com>
References: <20260624122917.2483-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-META: 6h4y7a4cen9tnptfx3f9ke37werybozk
X-MBO-RS-ID: 14a23481600515e0d57
X-Spamd-Bar: ---
Message-ID-Hash: 4T67FNDO3VTW56MFV4TG3YDFT5MM3GZA
X-Message-ID-Hash: 4T67FNDO3VTW56MFV4TG3YDFT5MM3GZA
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: dma_fence cleanup/rework
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4T67FNDO3VTW56MFV4TG3YDFT5MM3GZA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ckoenig.leichtzumerken@gmail.com,m:phasta@kernel.org,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,ffwll.ch,linaro.org,igalia.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F3AFC6C357B

T24gV2VkLCAyMDI2LTA2LTI0IGF0IDEzOjEzICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBUaGVuIHRoZSBsYXN0IHBpZWNlIGlzIGRyb3BwaW5nIGNhbGxpbmcgZW5hYmxlX3NpZ25h
bGluZyBjYWxsYmFjayB3aXRoIHRoZQ0KPiBkbWFfZmVuY2UgbG9jayBoZWxkLiBUaGlzIG1ha2Vz
IGl0IHBvc3NpYmxlIGZvciBiYWNrZW5kcyB0byBhY3F1aXJlIGxvY2tzDQo+IHdoaWNoIGFyZSBz
ZW1hbnRpY2FsbHkgb3JkZXJlZCBvdXRzaWRlIG9mIHRoZSBkbWFfZmVuY2UgbG9jay4NCj4gDQo+
IFRoaXMgaXMgbmVjZXNzYXJ5IHRvIGFsbG93cyB1c2luZyB0aGUgZG1hX2ZlbmNlIGlubGluZSBs
b2NrIGluIG1vcmUgY2FzZXMsDQo+IHByZXZpb3VzbHkgYmFja2VuZHMgdXNlZCBzb21lIGNvbW1v
biBleHRlcm5hbCBsb2NrIGZvciB0aGVpciBkbWFfZmVuY2VzIHRvDQo+IGZvciBleGFtcGxlIG1h
a2UgaXQgcG9zc2libGUgcmVtb3ZlIGZlbmNlcyBmcm9tIGxpbmtlZCBsaXN0cy4NCg0KSGkgQ2hy
aXN0aWFuLA0KDQp0aHggZm9yIGFsbCB0aGlzIHdvcmshIEkgd2lsbCByZXZpZXcgYXJvdW5kIGEg
Yml0IGR1cmluZyB0aGUgbmV4dCBkYXlzLg0KDQpGb3IgY29tcGxldGVuZXNzLCBsZXQgbWUgYXNr
IGhlcmU6DQpJcyB0aGVyZSBhbnkgcmVsYXRpb24sIG9yIGFueSB3b3JrIGluIHRoZSBwaXBlLCB3
aGljaCB5b3Ugd291bGQNCmNvbnNpZGVyIGEgZ29vZCBzb2x1dGlvbiBmb3IgdGhlIHJhY2UgY29u
ZGl0aW9ucyBkZXNjcmliZWQgaW4gdGhlc2UgdHdvDQp0aHJlYWRzIFsxXVsyXT8NCg0KDQpSZWdh
cmRzDQpQLg0KDQoNClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNjA2
MTgtbGludXgtZHJtX2NydGNfZml4Mi12MS0xLWMwM2U3N2IzNmYzNEBsaW5hcm8ub3JnLw0KWzJd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9mYTBkYzk3NTdiZjgzNDM1MTZjNGIx
NTZhMmI3MGVjOTFiNjRlZjhmLmNhbWVsQG1haWxib3gub3JnLw0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
