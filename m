Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEUyB4hh5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:25:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C5B431297
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:25:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDD343F6C2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:25:26 +0000 (UTC)
Received: from mail-wm1-f73.google.com (mail-wm1-f73.google.com [209.85.128.73])
	by lists.linaro.org (Postfix) with ESMTPS id EF9733F781
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2026 12:25:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=DgZa3psD;
	spf=pass (lists.linaro.org: domain of 3wpm6aQkKDTURcZTVipYcXffXcV.TfdcZeRif-dd-jZXcZjkj.cZeRif.fiX@flex--aliceryhl.bounces.google.com designates 209.85.128.73 as permitted sender) smtp.mailfrom=3wpm6aQkKDTURcZTVipYcXffXcV.TfdcZeRif-dd-jZXcZjkj.cZeRif.fiX@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f73.google.com with SMTP id 5b1f17b1804b1-48539bda3dcso71258165e9.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2026 05:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1773836739; x=1774441539; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UlJezP5+/1fujrnKlE3SL7R1CpkwMMIibiFc+CCvrMk=;
        b=DgZa3psD8+FnkU00NBgf5fG4jJCb9nuOu99QTzhLSFTV85HztHl451YLXDEQGyIWLw
         0PAm+wgPpHtvSpz6IlNXUqMf310XLLQyHevNHC5N5Et4kLwHEH1lpvckYX+vWMH86xQf
         T83he+l2JFHr4KZVNbEEoY4zJjse5/Bq0Ub2NBaBjpORMXoqcQStEEI/rv8HtyxQHvGk
         lc+wG2uZg8CQsTCrebbWG2B/IsduCLtTEpiWMEhWshT2Isi5QONwOfo1X9Vnep3UgDU8
         s43IrGIYYhPaIexp2hFwMy4wWG78MtuZQrkuImJFf3Owv17afasZ3e+B0PnSVaynmdJN
         oWlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773836739; x=1774441539;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UlJezP5+/1fujrnKlE3SL7R1CpkwMMIibiFc+CCvrMk=;
        b=WQLukHfDTdt1YZc9asY+FQfeGvkeWLXrxhlCoGhDo3Cuj7rr7+VsrMludgFs1Oa4M9
         QYPI9bGUqSwysgUGk2aAv/myul/PZKMUWJSb0mWsEKdOvZeZ5b/oj5/f5WVoe+CWAg2s
         TNXe0Y54bVXU6XSglpv75hLXxlHV0YZT7hmCf9Csfa7JYufieBJJvx04+WhUHGF0jrlM
         UctovCy9J3xYveEvxkIFySqaEaJSLTgj7FlYxXlAhAnCze70PdUlPsxhh5nK3093eaNV
         WFwgFvzv+6TIDxNEHhy2uDLMkeWE46qYn+u1YDrbY2MuduS9Hm0t5g2anUiCwpynPzX1
         WvbA==
X-Forwarded-Encrypted: i=1; AJvYcCWD3h2wfbHHKilZ6kAac7cSrArOHqJhYws8rQIMJG4Rp9x2zwwhQqBtnwURjEqXXzM8axQVHr8ayr9E7EJA@lists.linaro.org
X-Gm-Message-State: AOJu0Ywczq1/dgPF81BOQkj8+WI7BFz1JEKsYbNwEF7JKAM3Kfs0csDt
	isvTqd2o1LUNGWeNR7ps4+JUsHmCtM6C1qrRR/BRLDXPRYwgu5ujsg2I/Tu12P8Tijd66AMs52W
	I31HVE4+9yZe6ZPr86Q==
X-Received: from wmfu16.prod.google.com ([2002:a05:600c:1390:b0:483:7f25:eadd])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:6d97:b0:46e:4e6d:79f4 with SMTP id 5b1f17b1804b1-486f4460736mr35691675e9.15.1773836738625;
 Wed, 18 Mar 2026 05:25:38 -0700 (PDT)
Date: Wed, 18 Mar 2026 12:25:36 +0000
In-Reply-To: <20260317144825.2318-1-christian.koenig@amd.com>
Mime-Version: 1.0
References: <20260317144825.2318-1-christian.koenig@amd.com>
Message-ID: <abqZwCJhPFeu7hAy@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: "Christian =?utf-8?B?S8O2bmln?=" <ckoenig.leichtzumerken@gmail.com>
Content-Type: text/plain; charset="utf-8"
X-Spamd-Bar: ---
X-MailFrom: 3wpm6aQkKDTURcZTVipYcXffXcV.TfdcZeRif-dd-jZXcZjkj.cZeRif.fiX@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FSMLO6X53X4ESNWR5YGL64QXJKCPQSXT
X-Message-ID-Hash: FSMLO6X53X4ESNWR5YGL64QXJKCPQSXT
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:20 +0000
CC: phasta@mailbox.org, boris.brezillon@collabora.com, gary@garyguo.net, lossin@kernel.org, daniel.almeida@collabora.com, joelagnelf@nvidia.com, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma_fence: be more defensive in dma_fence_release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FSMLO6X53X4ESNWR5YGL64QXJKCPQSXT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[796];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	NEURAL_SPAM(0.00)[0.978];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: D0C5B431297
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMTcsIDIwMjYgYXQgMDM6NDg6MjVQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gSW4gY2FzZSBvZiBhIHJlZmNvdW50aW5nIGJ1ZyBkbWFfZmVuY2VfcmVsZWFz
ZSgpIGNhbiBiZSBjYWxsZWQgYmVmb3JlIHRoZQ0KPiBmZW5jZSB3YXMgZXZlbiBzaWduYWxlZC4N
Cj4gDQo+IFByZXZpb3VzbHkgdGhlIGRtYV9mZW5jZSBmcmFtZXdvcmsgdGhlbiBmb3JjZSBzaWdu
YWxlZCB0aGUgZmVuY2UgdG8gbWFrZQ0KPiBzdXJlIHRvIHVuYmxvY2sgd2FpdGVycywgYnV0IHRo
YXQgY2FuIHBvdGVudGlhbGx5IGxlYWQgdG8gcmFuZG9tIG1lbW9yeQ0KPiBjb3JydXB0aW9uIHdo
ZW4gdGhlIERNQSBvcGVyYXRpb24gY29udGludWVzLiBTbyBiZSBtb3JlIGRlZmVuc2l2ZSBoZXJl
IGFuZA0KPiBwaWNrIHRoZSBsZXNzZXIgZXZpbC4NCj4gDQo+IEluc3RlYWQgb2YgZm9yY2Ugc2ln
bmFsaW5nIHRoZSBmZW5jZSBzZXQgYW4gZXJyb3IgY29kZSBvbiB0aGUgZmVuY2UsDQo+IHJlLWlu
aXRpYWxpemUgdGhlIHJlZmNvdW50IHRvIHNvbWV0aGluZyBsYXJnZSBhbmQgdGFpbnQgdGhlIGtl
cm5lbC4NCj4gDQo+IFRoaXMgd2lsbCBsZWFrIG1lbW9yeSBhbmQgZXZlbnR1YWxseSBjYW4gY2F1
c2UgYSBkZWFkbG9jayB3aGVuIHRoZSBmZW5jZQ0KPiBpcyBuZXZlciBzaWduYWxlZCwgYnV0IGF0
IGxlYXN0IHdlIHdvbid0IHJ1biBpbnRvIGFuIHVzZSBhZnRlciBmcmVlIG9yDQo+IHJhbmRvbSBt
ZW1vcnkgY29ycnVwdGlvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLmMgfCAxOCArKysrKysrKysrKysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBpbmRl
eCAxODI2YmE3MzA5NGMuLjhiZjA3Njg1YTA1MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBA
QCAtNTkzLDE0ICs1OTMsMjQgQEAgdm9pZCBkbWFfZmVuY2VfcmVsZWFzZShzdHJ1Y3Qga3JlZiAq
a3JlZikNCj4gIAkJLyoNCj4gIAkJICogRmFpbGVkIHRvIHNpZ25hbCBiZWZvcmUgcmVsZWFzZSwg
bGlrZWx5IGEgcmVmY291bnRpbmcgaXNzdWUuDQo+ICAJCSAqDQo+IC0JCSAqIFRoaXMgc2hvdWxk
IG5ldmVyIGhhcHBlbiwgYnV0IGlmIGl0IGRvZXMgbWFrZSBzdXJlIHRoYXQgd2UNCj4gLQkJICog
ZG9uJ3QgbGVhdmUgY2hhaW5zIGRhbmdsaW5nLiBXZSBzZXQgdGhlIGVycm9yIGZsYWcgZmlyc3QN
Cj4gLQkJICogc28gdGhhdCB0aGUgY2FsbGJhY2tzIGtub3cgdGhpcyBzaWduYWwgaXMgZHVlIHRv
IGFuIGVycm9yLg0KPiArCQkgKiBUaGlzIHNob3VsZCBuZXZlciBoYXBwZW4sIGJ1dCBpZiB0cnkg
dG8gYmUgZGVmZW5zaXZlIGFuZCB0YWtlDQo+ICsJCSAqIHRoZSBsZXNzZXIgZXZpbC4gSW5pdGlh
bGl6ZSB0aGUgcmVmY291bnQgdG8gc29tZXRoaW5nIGxhcmdlLA0KPiArCQkgKiBidXQgbm90IHNv
IGxhcmdlIHRoYXQgaXQgY2FuIG92ZXJmbG93Lg0KPiArCQkgKg0KPiArCQkgKiBUaGF0IHdpbGwg
bGVhayBtZW1vcnkgYW5kIGNvdWxkIGRlYWRsb2NrIGlmIHRoZSBmZW5jZSBuZXZlcg0KPiArCQkg
KiBzaWduYWxzLCBidXQgYXQgbGVhc3QgaXQgZG9lc24ndCBjYXVzZSBhbiB1c2UgYWZ0ZXIgZnJl
ZSBvcg0KPiArCQkgKiByYW5kb20gbWVtb3J5IGNvcnJ1cHRpb24uDQo+ICsJCSAqDQo+ICsJCSAq
IEFsc28gdGFpbnQgdGhlIGtlcm5lbCB0byBub3RlIHRoYXQgaXQgaXMgcmF0aGVyIHVucmVsaWFi
bGUgdG8NCj4gKwkJICogY29udGludWUuDQo+ICAJCSAqLw0KPiAgCQlkbWFfZmVuY2VfbG9ja19p
cnFzYXZlKGZlbmNlLCBmbGFncyk7DQo+ICAJCWZlbmNlLT5lcnJvciA9IC1FREVBRExLOw0KPiAt
CQlkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChmZW5jZSk7DQo+ICsJCXJlZmNvdW50X3NldCgmZmVu
Y2UtPnJlZmNvdW50LnJlZmNvdW50LCBJTlRfTUFYKTsNCg0KSXQncyBtdWNoIGJldHRlciB0byBs
ZWF2ZSB0aGUgcmVmY291bnQgd2l0aCBhIHZhbHVlIG9mIHplcm8gaGVyZS4gVGhhdA0Kd2F5LCB3
aGVuIHRoZSByZWZjb3VudCBpcyBkZWNyZW1lbnRlZCBuZXh0IHRpbWUsIHRoZSB1c3VhbCB1bmRl
cmZsb3cNCmRldGVjdGlvbiBjaGVja3Mgd2lsbCB0cmlnZ2VyLg0KDQpZb3UgY2FuIHN0aWxsIHNr
aXAgdGhlIGtmcmVlKCkgdG8gYXZvaWQgdXNlLWFmdGVyLWZyZWUuDQoNCkFsaWNlDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
