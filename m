Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOs8LETmp2mrlAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Mar 2026 08:59:00 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB061FC135
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Mar 2026 08:58:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 443B13F98A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2026 07:58:58 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 4E3E13F98A
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2026 07:58:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Wp8BKSAs;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772611136;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wcqpRt8jvMP8XWtSPkO4bteIZfJG5tmplM3Y6kGZdoo=;
	b=Wp8BKSAsphuka/rWK1RBRi6EyLkevNdS+gOFPkRt8jbyRklUu/bmcGxM6NVupBkCcc+ABq
	zgbW6Ce+TdsUPhYyyLnOfyGAiqF24PrygpXk/ZCvhWBm3CwR1coHtVq19qm2qmomlnPVB2
	TRS/xaSnqIIaPfckzGYMZ9k05aAeQCo=
Received: from mail-yx1-f71.google.com (mail-yx1-f71.google.com
 [74.125.224.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-358-SH9bS_qWOA6XeI2iS_5a7w-1; Wed, 04 Mar 2026 02:58:54 -0500
X-MC-Unique: SH9bS_qWOA6XeI2iS_5a7w-1
X-Mimecast-MFC-AGG-ID: SH9bS_qWOA6XeI2iS_5a7w_1772611134
Received: by mail-yx1-f71.google.com with SMTP id 956f58d0204a3-64cb719e778so11475254d50.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Mar 2026 23:58:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772611134; x=1773215934;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wcqpRt8jvMP8XWtSPkO4bteIZfJG5tmplM3Y6kGZdoo=;
        b=rSsUVBiP1x16JZRbNwD7JgFq3zp42tbpg1AXO6rous2ENeBylswS0xa9uiHW6qg9fb
         s3oMFgmPWooxITTTtyl+P+7hVoxMldB092+nvx+Sp3xz021fTpLh2JVljQTxIRVCQR8p
         gFW9v06j4/xyMJLqybTMXwdUAPDzzC98mcoCpx4gYpnRDFLYmmXaxknxDv35knpn9Ew+
         s+Z8Gvyq9U8geognyWPn+yvHAfCcjJuBqriNXbtoMqXeI6kFsTha/17IYfj+qbl5ViHJ
         h5br4Ns5hif2Jy5colYlxo0Hc7IlxeMhcelFOKBICpHSINkVDoJZEOjctXIPmvk+WCN1
         8K2Q==
X-Forwarded-Encrypted: i=1; AJvYcCX+xV4reHo0nA6W8jkhN2c9mjLL9yecKjB4HDVEfHGj3V7WTz/LDbnNy4oVQtmxAdR/JoPF/YwDe/y4Q/PZ@lists.linaro.org
X-Gm-Message-State: AOJu0YzS6QAoCI6cZUKbdNpGsvzsdv7KjFtyDxycRQZQ0vvJgZi5JsXp
	d6fX43V10PtlaMXRvZIkVPewEP8aRCAEonWLIg+Lp1C9MSZ9SZ/CWXvRGPgkf10cwwkFufFKYJP
	AKK+ElQpxcostAOTsDBykNqf/nXLyLZ+u4n01vWBs+XsTR3itBr9y1ymTD656lk3MLvyzpWUDmz
	8YvhTQg7N5lhV4ZSpm8YDREi7eDpS71tjKlyyT7EwbYkM=
X-Gm-Gg: ATEYQzyD1VGOtx+iXKOkhvyjkwNAA2M7EeK5O801ixAurIIUfyI1cthFfeuTLam3C57
	9XCSn7OU8JuCdBrD/SIsfU9GYShpjFUg6PSOTa3frz78GwIqpJFGZKpicxzrlrQWjQWz6/6nZCz
	FbZ5s34/62HODARJCRHR6RuH2DLk7HQ78PGcVKw7q0RAAHoOKB7rZ05fgnssLDbA16/IREm/p9t
	w==
X-Received: by 2002:a53:ee53:0:b0:649:b04c:25c3 with SMTP id 956f58d0204a3-64cf9c1872amr761658d50.62.1772611134109;
        Tue, 03 Mar 2026 23:58:54 -0800 (PST)
X-Received: by 2002:a53:ee53:0:b0:649:b04c:25c3 with SMTP id
 956f58d0204a3-64cf9c1872amr761636d50.62.1772611133749; Tue, 03 Mar 2026
 23:58:53 -0800 (PST)
MIME-Version: 1.0
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
 <20260303-b4-dmabuf-heap-coherent-rmem-v2-3-65a4653b3378@redhat.com> <20260303-weightless-crafty-hyrax-bdf1ca@houat>
In-Reply-To: <20260303-weightless-crafty-hyrax-bdf1ca@houat>
From: Albert Esteve <aesteve@redhat.com>
Date: Wed, 4 Mar 2026 08:58:42 +0100
X-Gm-Features: AaiRm50vjbd8iZF9aZq1Cno_RqIuyn0PYTIuzz9Iq5d5rpEaa4iOCaZKKjWryT4
Message-ID: <CADSE00LodeTg8Xfvo4VOZDvHh25=8+Jsqq+V8iynmpYx2bBRjA@mail.gmail.com>
To: Maxime Ripard <mripard@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 1u4KENxNzsavUbL5OgtKXYNs0SGSBdQCQ6RImLtbc28_1772611134
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: PDYNUE32T3VO7GDYSWWQIQDPQUO735UT
X-Message-ID-Hash: PDYNUE32T3VO7GDYSWWQIQDPQUO735UT
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/6] of_reserved_mem: add a helper for rmem device_init op
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PDYNUE32T3VO7GDYSWWQIQDPQUO735UT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 1FB061FC135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.905];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Action: no action

T24gVHVlLCBNYXIgMywgMjAyNiBhdCAyOjEz4oCvUE0gTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBy
ZWRoYXQuY29tPiB3cm90ZToNCj4NCj4gT24gVHVlLCBNYXIgMDMsIDIwMjYgYXQgMDE6MzM6NDZQ
TSArMDEwMCwgQWxiZXJ0IEVzdGV2ZSB3cm90ZToNCj4gPiBBZGQgYSBoZWxwZXIgZnVuY3Rpb24g
d3JhcHBpbmcgaW50ZXJuYWwgcmVzZXJ2ZWQgbWVtb3J5DQo+ID4gZGV2aWNlX2luaXQgY2FsbCBh
bmQgZXhwb3NlIGl0IGV4dGVybmFsbHkuDQo+ID4NCj4gPiBVc2UgdGhlIG5ldyBoZWxwZXIgZnVu
Y3Rpb24gd2l0aGluIG9mX3Jlc2VydmVkX21lbV9kZXZpY2VfaW5pdF9ieV9pZHgoKS4NCj4gPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEFsYmVydCBFc3RldmUgPGFlc3RldmVAcmVkaGF0LmNvbT4NCj4g
PiAtLS0NCj4gPiAgZHJpdmVycy9vZi9vZl9yZXNlcnZlZF9tZW0uYyAgICB8IDI3ICsrKysrKysr
KysrKysrKysrKysrKysrLS0tLQ0KPiA+ICBpbmNsdWRlL2xpbnV4L29mX3Jlc2VydmVkX21lbS5o
IHwgIDggKysrKysrKysNCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvb2Yvb2ZfcmVzZXJ2
ZWRfbWVtLmMgYi9kcml2ZXJzL29mL29mX3Jlc2VydmVkX21lbS5jDQo+ID4gaW5kZXggMWZkMjhm
ODA1NjEwOC4uM2EzNTBiZWY4ZjExZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL29mL29mX3Jl
c2VydmVkX21lbS5jDQo+ID4gKysrIGIvZHJpdmVycy9vZi9vZl9yZXNlcnZlZF9tZW0uYw0KPiA+
IEBAIC02MDUsNiArNjA1LDI4IEBAIHN0cnVjdCBybWVtX2Fzc2lnbmVkX2RldmljZSB7DQo+ID4g
IHN0YXRpYyBMSVNUX0hFQUQob2Zfcm1lbV9hc3NpZ25lZF9kZXZpY2VfbGlzdCk7DQo+ID4gIHN0
YXRpYyBERUZJTkVfTVVURVgob2Zfcm1lbV9hc3NpZ25lZF9kZXZpY2VfbXV0ZXgpOw0KPiA+DQo+
ID4gKy8qKg0KPiA+ICsgKiBvZl9yZXNlcnZlZF9tZW1fZGV2aWNlX2luaXRfd2l0aF9tZW0oKSAt
IGFzc2lnbiByZXNlcnZlZCBtZW1vcnkgcmVnaW9uIHRvDQo+ID4gKyAqICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZ2l2ZW4gZGV2aWNlDQo+ID4gKyAqIEBkZXY6ICAgICBQ
b2ludGVyIHRvIHRoZSBkZXZpY2UgdG8gY29uZmlndXJlDQo+ID4gKyAqIEBybWVtOiAgICBSZXNl
cnZlZCBtZW1vcnkgcmVnaW9uIHRvIGFzc2lnbg0KPiA+ICsgKg0KPiA+ICsgKiBUaGlzIGZ1bmN0
aW9uIGFzc2lnbnMgcmVzcGVjdGl2ZSBETUEtbWFwcGluZyBvcGVyYXRpb25zIGJhc2VkIG9uIHRo
ZQ0KPiA+ICsgKiByZXNlcnZlZCBtZW1vcnkgcmVnaW9uIGFscmVhZHkgcHJvdmlkZWQgaW4gQHJt
ZW0gdG8gdGhlIEBkZXYgZGV2aWNlLA0KPiA+ICsgKiB3aXRob3V0IHdhbGtpbmcgRFQgbm9kZXMu
DQo+ID4gKyAqDQo+ID4gKyAqIFJldHVybnMgZXJyb3IgY29kZSBvciB6ZXJvIG9uIHN1Y2Nlc3Mu
DQo+ID4gKyAqLw0KPiA+ICtpbnQgb2ZfcmVzZXJ2ZWRfbWVtX2RldmljZV9pbml0X3dpdGhfbWVt
KHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgcmVzZXJ2ZWRfbWVtICpybWVtKQ0KPiA+ICt7DQo+ID4gKyAgICAgaWYg
KCFkZXYgfHwgIXJtZW0gfHwgIXJtZW0tPm9wcyB8fCAhcm1lbS0+b3BzLT5kZXZpY2VfaW5pdCkN
Cj4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+ICsNCj4gPiArICAgICByZXR1
cm4gcm1lbS0+b3BzLT5kZXZpY2VfaW5pdChybWVtLCBkZXYpOw0KPiA+ICt9DQo+ID4gK0VYUE9S
VF9TWU1CT0xfR1BMKG9mX3Jlc2VydmVkX21lbV9kZXZpY2VfaW5pdF93aXRoX21lbSk7DQo+ID4g
Kw0KPiA+ICAvKioNCj4gPiAgICogb2ZfcmVzZXJ2ZWRfbWVtX2RldmljZV9pbml0X2J5X2lkeCgp
IC0gYXNzaWduIHJlc2VydmVkIG1lbW9yeSByZWdpb24gdG8NCj4gPiAgICogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZ2l2ZW4gZGV2aWNlDQo+ID4gQEAgLTY0MywxNCArNjY1
LDExIEBAIGludCBvZl9yZXNlcnZlZF9tZW1fZGV2aWNlX2luaXRfYnlfaWR4KHN0cnVjdCBkZXZp
Y2UgKmRldiwNCj4gPiAgICAgICBybWVtID0gb2ZfcmVzZXJ2ZWRfbWVtX2xvb2t1cCh0YXJnZXQp
Ow0KPiA+ICAgICAgIG9mX25vZGVfcHV0KHRhcmdldCk7DQo+ID4NCj4gPiAtICAgICBpZiAoIXJt
ZW0gfHwgIXJtZW0tPm9wcyB8fCAhcm1lbS0+b3BzLT5kZXZpY2VfaW5pdCkNCj4gPiAtICAgICAg
ICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+IC0NCj4gPiAgICAgICByZCA9IGttYWxsb2Nfb2Jq
KHN0cnVjdCBybWVtX2Fzc2lnbmVkX2RldmljZSk7DQo+ID4gICAgICAgaWYgKCFyZCkNCj4gPiAg
ICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOw0KPiA+DQo+ID4gLSAgICAgcmV0ID0gcm1lbS0+
b3BzLT5kZXZpY2VfaW5pdChybWVtLCBkZXYpOw0KPiA+ICsgICAgIHJldCA9IG9mX3Jlc2VydmVk
X21lbV9kZXZpY2VfaW5pdF93aXRoX21lbShkZXYsIHJtZW0pOw0KPiA+ICAgICAgIGlmIChyZXQg
PT0gMCkgew0KPiA+ICAgICAgICAgICAgICAgcmQtPmRldiA9IGRldjsNCj4gPiAgICAgICAgICAg
ICAgIHJkLT5ybWVtID0gcm1lbTsNCj4NCj4gSSB0aGluayB5b3UgbmVlZCB0byB0YWtlIHRoZSBh
bGxvY2F0aW9uIG9mIHJkLCBhbmQgZXZlcnl0aGluZyBiZWxvdy4NCj4gT3RoZXJ3aXNlLCB5b3Vy
IGRldmljZSwgZGVzcGl0ZSBiZWluZyBhdHRlY2hkLCB3b3VsZG4ndCBiZSBsaXN0ZWQNCj4gYW55
d2hlcmUuDQoNClRydWUsIEkgZGlkIG5vdCBwYXkgZW5vdWdoIGF0dGVudGlvbiB0byB0aGF0IHBh
cnQuIEkgd2lsbCBmaXggaXQgaW4NCnRoZSBuZXh0IHZlcnNpb24uDQoNCj4NCj4gTWF4aW1lDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
