Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O642By1jPmpQFAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 13:31:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8146CC7A0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 13:31:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=pUTrXV18;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FA5743C5A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Jun 2026 11:31:55 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id CC10B4014D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jun 2026 11:31:42 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-490b613a17bso8205015e9.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Jun 2026 04:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782473502; x=1783078302; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3V7IAVFZWmnU0nMqKkIZzyiPJmKtXEMD/AnbFuh2C68=;
        b=pUTrXV18x7QH4bGb6tbPk+ROR13Wk/tgTiiBc+vpcy8vmiXGGaaIRFNah6zJ+mzHmL
         C21H1M1S0xSp8tuzPSNlK82w7ved8cBWOITgvwhvg6vo/i0O6bPuWO5M2gHAG1/I9uPk
         BoZtJdaXH1P1Nm5iMT7OgYITUdpNgBVnT7HEDYd2nRWAEVJdvQzxL9ZJksWpNr1kaRw1
         a2AreTU/4CcyZmMYl9nuyDmp25EBwP4Lq2I5C4vtMnq0075wLYBqjjPmKlD3lOiobxz+
         KRCEMTbDB4mhhKahrlPoR2tN3MgMNSToZyNA6322WMAN4c2KKqcFrOb3NnPcWlUeMXY3
         fQxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782473502; x=1783078302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3V7IAVFZWmnU0nMqKkIZzyiPJmKtXEMD/AnbFuh2C68=;
        b=e/w+htz0Lw2Ak+S001PPcQN+sWi2z+T37Rzm3YWnKVirXNgO3giCE9sxFHliAnaPES
         rSg6c7MgSz1gPrcyui9KdGzvZ3aJO/syLZBDtG05K+/2RayzTL5rd3VjzETeXE0r3qmy
         /vsBLQ92DbhUGPcXJxQRVAo08KADg9NARhAiB9kbvSMr65nMkAVviDcc9Md8EQ1HdIBJ
         ZWUTBRC/a5P5CDBAwcEH92HcAzLn1ADsOwBi3ViFaZReRzb2E0wlE8NItqSPkzcJtA+h
         QWQcxId/I2BNU2I/ZhJnRmNzPSo1nDikR5AK5a3tdKY0I4HNsBjyZazrvbj4nycyP/4G
         UuGw==
X-Forwarded-Encrypted: i=1; AFNElJ9TarYyd1Sr//FYoLQ5hnPyKj24UdOf8oi+MRuk2zeuEz6crO/ESM++XxBoRKMM12E8uc4mTsLspKHu8H1p@lists.linaro.org
X-Gm-Message-State: AOJu0YxaQe+y43llRIrRoFQIDLNllqEyHIdHYdht5+eX0frR+JWzWbmu
	U7O+O0EAU2gilF6swAIHo0+/5Lrg+q0tFgH/ZT0HaEd0/i7nlGaNewuA
X-Gm-Gg: AfdE7ckEHt7MN2dAOk6Z/kZOHJROgzv4B4+2HBVXO+l1/NoOZsm8Ns4fBv0qrxFcEDG
	UcYb/gHL30rpIsrEpjAclKbN+ytaA9Ws2+k5pNW7lnS0zS6kV+ZTNMwhzQgouF4WbTcvkhxyjcX
	ftipzGsrzeq8PRL+iOkiq/fUSnNbpX0CIGQ6FrrPUhNIsdKMt45gSN9tnOVvsMpSXQ7VIcIIDVc
	8lACPUTOCYswLJJ3bxbzOD40g3wbvQZM+ItIjE4eKxH+Bh8JpkC95XDdADrj4m2yEDdNkqVCnky
	rYWBvqdTI0EHlTApffuYK/wof3kYa78Koa90ZjQ21cUQWDE1MMs+ZZex0eS20QNmCs+M6i15HMn
	Vvz4yaqM74PZRg6Tr5JAGxOPdDmCNo9vJIOPRAWb6iHjy2ngdYOIxL1vQ4dd5mSx4GP0N3GHQKk
	lz3HTcuVFnCHnjSzsWcR6wq+95zV/JcG2tlUet15OylFsm7MebZA==
X-Received: by 2002:a05:600c:3b29:b0:490:e5c1:b8b9 with SMTP id 5b1f17b1804b1-4926fac56a2mr6382035e9.0.1782473501473;
        Fri, 26 Jun 2026 04:31:41 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c1ee0189esm25128520f8f.9.2026.06.26.04.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 04:31:41 -0700 (PDT)
Date: Fri, 26 Jun 2026 12:31:39 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260626123139.7d6ec6ec@pumpkin>
In-Reply-To: <06bddfca-d868-4043-ac6f-28ca103fff02@amd.com>
References: <20260624125242.11232-1-alhouseenyousef@gmail.com>
	<06bddfca-d868-4043-ac6f-28ca103fff02@amd.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 7Z7RXOYTHGVRGJZ4MPWO32KESREBTAM5
X-Message-ID-Hash: 7Z7RXOYTHGVRGJZ4MPWO32KESREBTAM5
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Yousef Alhouseen <alhouseenyousef@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: udmabuf: avoid list copy size overflow
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7Z7RXOYTHGVRGJZ4MPWO32KESREBTAM5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.19 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:alhouseenyousef@gmail.com,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,redhat.com,intel.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F8146CC7A0

T24gV2VkLCAyNCBKdW4gMjAyNiAxNDo1ODo1OCArMDIwMA0KQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCg0KPiBPbiA2LzI0LzI2IDE0OjUyLCBZb3Vz
ZWYgQWxob3VzZWVuIHdyb3RlOg0KPiA+IFVETUFCVUZfQ1JFQVRFX0xJU1QgY29waWVzIGFuIGFy
cmF5IHdob3NlIGVsZW1lbnQgY291bnQgY29tZXMgZnJvbQ0KPiA+IHVzZXJzcGFjZS4gVGhlIGNv
dW50IGlzIGNvbXBhcmVkIGFnYWluc3QgbGlzdF9saW1pdCwgYnV0IGxpc3RfbGltaXQgaXMgYQ0K
PiA+IHNpZ25lZCBtb2R1bGUgcGFyYW1ldGVyIHdoaWxlIHRoZSBjb3VudCBpcyB1MzIuICANCj4g
DQo+IFdlIHNob3VsZCBwcm9iYWJseSBqdXN0IGRyb3AgdGhlIHNpZ24gZnJvbSB0aGUgbW9kdWxl
IHBhcmFtZXRlciBpbnN0ZWFkLg0KDQpEb2VzIGFueXRoaW5nIHNhbml0eS1jaGVjayB0aGUgbW9k
dWxlIHBhcmFtZXRlcj8NCg0KCURhdmlkDQoNCj4gDQo+IEkgZG9uJ3Qgc2VlIGFuIHVzZSBjYXNl
IGZvciBuZWdhdGl2ZSB2YWx1ZXMgaGVyZS4NCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4N
Cj4gDQo+ID4gDQo+ID4gSWYgdGhlIGxpbWl0IGlzIHJhaXNlZCB0b28gZmFyIG9yIG1hZGUgbmVn
YXRpdmUsIHRoYXQgY29tcGFyaXNvbiBubw0KPiA+IGxvbmdlciBib3VuZHMgdGhlIGNvdW50IHRv
IGEgcmFuZ2Ugd2hlcmUgc2l6ZW9mKCpsaXN0KSAqIGNvdW50IGZpdHMgaW4NCj4gPiB0aGUgdTMy
IHRlbXBvcmFyeSB1c2VkIGZvciB0aGUgY29weSBsZW5ndGguIEEgd3JhcHBlZCBjb3B5IGxlbmd0
aCBsZXRzDQo+ID4gbWVtZHVwX3VzZXIoKSBjb3B5IGZld2VyIGVudHJpZXMgdGhhbiB1ZG1hYnVm
X2NyZWF0ZSgpIHN1YnNlcXVlbnRseQ0KPiA+IHdhbGtzLCBsZWFkaW5nIHRvIG91dC1vZi1ib3Vu
ZHMgcmVhZHMgZnJvbSB0aGUgY29waWVkIGxpc3QuDQo+ID4gDQo+ID4gVGFrZSBhIHBvc2l0aXZl
IHNuYXBzaG90IG9mIHRoZSBtb2R1bGUgbGltaXQgYW5kIHVzZSBtZW1kdXBfYXJyYXlfdXNlcigp
DQo+ID4gc28gdGhlIG11bHRpcGxpY2F0aW9uIGlzIGNoZWNrZWQgYmVmb3JlIGNvcHlpbmcuDQo+
ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogWW91c2VmIEFsaG91c2VlbiA8YWxob3VzZWVueW91c2Vm
QGdtYWlsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyB8IDkg
KysrKystLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMg
Yi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+ID4gaW5kZXggYmNlZDQyMWMwLi5iNDA3OGVj
ODQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4gPiBAQCAtNDY5LDE0ICs0NjksMTUgQEAgc3Rh
dGljIGxvbmcgdWRtYWJ1Zl9pb2N0bF9jcmVhdGVfbGlzdChzdHJ1Y3QgZmlsZSAqZmlscCwgdW5z
aWduZWQgbG9uZyBhcmcpDQo+ID4gICAgICAgICBzdHJ1Y3QgdWRtYWJ1Zl9jcmVhdGVfbGlzdCBo
ZWFkOw0KPiA+ICAgICAgICAgc3RydWN0IHVkbWFidWZfY3JlYXRlX2l0ZW0gKmxpc3Q7DQo+ID4g
ICAgICAgICBpbnQgcmV0ID0gLUVJTlZBTDsNCj4gPiAtICAgICAgIHUzMiBsc2l6ZTsNCj4gPiAr
ICAgICAgIGludCBsaW1pdDsNCj4gPiANCj4gPiAgICAgICAgIGlmIChjb3B5X2Zyb21fdXNlcigm
aGVhZCwgKHZvaWQgX191c2VyICopYXJnLCBzaXplb2YoaGVhZCkpKQ0KPiA+ICAgICAgICAgICAg
ICAgICByZXR1cm4gLUVGQVVMVDsNCj4gPiAtICAgICAgIGlmIChoZWFkLmNvdW50ID4gbGlzdF9s
aW1pdCkNCj4gPiArICAgICAgIGxpbWl0ID0gUkVBRF9PTkNFKGxpc3RfbGltaXQpOw0KPiA+ICsg
ICAgICAgaWYgKCFoZWFkLmNvdW50IHx8IGxpbWl0IDw9IDAgfHwgaGVhZC5jb3VudCA+IGxpbWl0
KQ0KPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPiAtICAgICAgIGxzaXpl
ID0gc2l6ZW9mKHN0cnVjdCB1ZG1hYnVmX2NyZWF0ZV9pdGVtKSAqIGhlYWQuY291bnQ7DQo+ID4g
LSAgICAgICBsaXN0ID0gbWVtZHVwX3VzZXIoKHZvaWQgX191c2VyICopKGFyZyArIHNpemVvZiho
ZWFkKSksIGxzaXplKTsNCj4gPiArICAgICAgIGxpc3QgPSBtZW1kdXBfYXJyYXlfdXNlcigodm9p
ZCBfX3VzZXIgKikoYXJnICsgc2l6ZW9mKGhlYWQpKSwNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBoZWFkLmNvdW50LCBzaXplb2YoKmxpc3QpKTsNCj4gPiAgICAgICAgIGlm
IChJU19FUlIobGlzdCkpDQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGxpc3Qp
Ow0KPiA+IA0KPiA+IC0tDQo+ID4gMi41NC4wDQo+ID4gICANCj4gDQo+IA0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
