Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0018725E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 18:46:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC7213F1B5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 17:46:11 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by lists.linaro.org (Postfix) with ESMTPS id 2E9203F1B5
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Mar 2024 17:46:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=4TKHhoHa;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.176 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-60983233a0dso539177b3.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Mar 2024 09:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709660765; x=1710265565; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aGRt8RiRcM7HoBToJhGy2IhtOk9BsPJwbK84po2hCcM=;
        b=4TKHhoHaG5ti6g45Eh4tNdVH3bFbA9heWA8al3MkffQIkdvZnmobR7glCG9AR32gs6
         bPrZ2+gzOLlYocUpbVrQCsB4SFKZJlQ+WDDW/SNrQdlyV43gZgdE03K/UB1mDK8IkOi6
         UdzvmtgQdKrJhOawDlCh5M/sH/i2tQXBMIOnIljHfugm625TKNNm477p5s+VnYH1nwd8
         iuVcF5YwkH43484SK4d+QZBK0rTrUqdy8fmi8nAh5VYDxWZn7fv3FV/8F+j+Y01zaR32
         0j8OiyK5/GVb403jPT4jalBLyhjghfzaNIGr2LBwurwkA5YwQYeShWpdLekIhAzlC+SL
         D6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709660765; x=1710265565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aGRt8RiRcM7HoBToJhGy2IhtOk9BsPJwbK84po2hCcM=;
        b=HDPdX3zbDaNY6X7rLgB1QmaUiQAn9NK4VGJL+1DI/D8G8Ej8QDuiUrCYNo8seok9Zn
         ClKLVXvlBlZd+W0hE9XWYlju7bAvekQVMTTMn1pSj3w6V9bmWmOb/5mr1v8RKbi2P9/w
         lopPAJKOX014gLNat4bRgYT4P+tZHufv/gqxLYNvt1VZKFkgXuKpq/z481vmyZp4cUjT
         0QylHPh8gNXrGaTyXBaCG8mgdyoOyMSVumYW+KAv1BGKCPtiEUDSQ3GmC0gMhyIYweBx
         faKSO1tGwtqlsx/IahpqmnqOgQdcSNd7pDgPPS722jNteENCmGtnliWS240/Q3kv53qh
         Eq0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUUkk6nKv7alDeYCyDH7dlCfmdEi6wdt/v46vme52rgovqg3PIvXmhbqfouKhIDvE6m0R8J6UceoAtF5cijprxeUGup5ZhzDVh/VFZv2bk=
X-Gm-Message-State: AOJu0YxoDEXaaUDCbI1XoRWzy/FEJOKYxgt5OuZMwUPVbctmp33tRJ+B
	K40+QSGPil/wvo+640LAlRtbKzEA7xDbNq8uHvb1NfUJNMsl1W2tY/ujAzRSMNyvMnvrDVHQsjz
	lZr2/+y4Msqd+7fNagLw3MyOcAGVfRIkyp4jj
X-Google-Smtp-Source: AGHT+IEH4w81wtDgQ7qxtxm4j8GNKlHjLhmHdUhbPcgEgL2YwGAU2Z1QETpZifRDvMKeW4+uwUhNXQh+A2JI1zKU2JU=
X-Received: by 2002:a81:85c5:0:b0:609:9171:130d with SMTP id
 v188-20020a8185c5000000b006099171130dmr8371354ywf.19.1709660764517; Tue, 05
 Mar 2024 09:46:04 -0800 (PST)
MIME-Version: 1.0
References: <20240119033126.1802711-1-ototot@chromium.org>
In-Reply-To: <20240119033126.1802711-1-ototot@chromium.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 5 Mar 2024 09:45:53 -0800
Message-ID: <CABdmKX3azAE9HPLBY3sEFm5YYM=AUp=-RArDjG+ksecx0O+6Gw@mail.gmail.com>
To: Tommy Chiang <ototot@chromium.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2E9203F1B5
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.176:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: JLAYSFLGVOPR763QFOLZO4HUAF57EKGZ
X-Message-ID-Hash: JLAYSFLGVOPR763QFOLZO4HUAF57EKGZ
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Add syntax highlighting to code listings in the document
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JLAYSFLGVOPR763QFOLZO4HUAF57EKGZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKYW4gMTgsIDIwMjQgYXQgNzozM+KAr1BNIFRvbW15IENoaWFuZyA8b3RvdG90QGNo
cm9taXVtLm9yZz4gd3JvdGU6DQo+DQo+IFRoaXMgcGF0Y2ggdHJpZXMgdG8gaW1wcm92ZSB0aGUg
ZGlzcGxheSBvZiB0aGUgY29kZSBsaXN0aW5nDQo+IG9uIFRoZSBMaW51eCBLZXJuZWwgZG9jdW1l
bnRhdGlvbiB3ZWJzaXRlIGZvciBkbWEtYnVmIFsxXSAuDQo+DQo+IE9yaWdpbmFsbHksIGl0IGFw
cGVhcnMgdGhhdCBpdCB3YXMgYXR0ZW1wdGluZyB0byBlc2NhcGUNCj4gdGhlICcqJyBjaGFyYWN0
ZXIsIGJ1dCBsb29rcyBsaWtlIGl0J3Mgbm90IG5lY2Vzc2FyeSAobm93KSwNCj4gc28gd2UgYXJl
IHNlZWluZyBzb21ldGhpbmcgbGlrZSAnXConIG9uIHRoZSB3ZWJpdGUuDQo+DQo+IFRoaXMgcGF0
Y2ggcmVtb3ZlcyB0aGVzZSB1bm5lY2Vzc2FyeSBiYWNrc2xhc2hlcyBhbmQgYWRkcyBzeW50YXgN
Cj4gaGlnaGxpZ2h0aW5nIHRvIGltcHJvdmUgdGhlIHJlYWRhYmlsaXR5IG9mIHRoZSBjb2RlIGxp
c3RpbmcuDQo+DQo+IFsxXSBodHRwczovL2RvY3Mua2VybmVsLm9yZy9kcml2ZXItYXBpL2RtYS1i
dWYuaHRtbA0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBUb21teSBDaGlhbmcgPG90b3RvdEBjaHJvbWl1
bS5vcmc+DQo+IC0tLQ0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDE1ICsrKysrKysr
Ky0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4IDhmZTVhYTY3YjE2Ny4uZTA4M2EwYWIwNmQ3IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gQEAgLTEyODIsMTAgKzEyODIsMTIgQEAgRVhQT1JUX1NZTUJP
TF9OU19HUEwoZG1hX2J1Zl9tb3ZlX25vdGlmeSwgRE1BX0JVRik7DQo+ICAgKiAgIHZtYXAgaW50
ZXJmYWNlIGlzIGludHJvZHVjZWQuIE5vdGUgdGhhdCBvbiB2ZXJ5IG9sZCAzMi1iaXQgYXJjaGl0
ZWN0dXJlcw0KPiAgICogICB2bWFsbG9jIHNwYWNlIG1pZ2h0IGJlIGxpbWl0ZWQgYW5kIHJlc3Vs
dCBpbiB2bWFwIGNhbGxzIGZhaWxpbmcuDQo+ICAgKg0KPiAtICogICBJbnRlcmZhY2VzOjoNCj4g
KyAqICAgSW50ZXJmYWNlczoNCj4gICAqDQo+IC0gKiAgICAgIHZvaWQgXCpkbWFfYnVmX3ZtYXAo
c3RydWN0IGRtYV9idWYgXCpkbWFidWYsIHN0cnVjdCBpb3N5c19tYXAgXCptYXApDQo+IC0gKiAg
ICAgIHZvaWQgZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgXCpkbWFidWYsIHN0cnVjdCBp
b3N5c19tYXAgXCptYXApDQo+ICsgKiAgIC4uIGNvZGUtYmxvY2s6OiBjDQo+ICsgKg0KPiArICog
ICAgIHZvaWQgKmRtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9z
eXNfbWFwICptYXApDQo+ICsgKiAgICAgdm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQo+ICAgKg0KPiAgICogICBUaGUgdm1h
cCBjYWxsIGNhbiBmYWlsIGlmIHRoZXJlIGlzIG5vIHZtYXAgc3VwcG9ydCBpbiB0aGUgZXhwb3J0
ZXIsIG9yIGlmDQo+ICAgKiAgIGl0IHJ1bnMgb3V0IG9mIHZtYWxsb2Mgc3BhY2UuIE5vdGUgdGhh
dCB0aGUgZG1hLWJ1ZiBsYXllciBrZWVwcyBhIHJlZmVyZW5jZQ0KPiBAQCAtMTM0MiwxMCArMTM0
NCwxMSBAQCBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX21vdmVfbm90aWZ5LCBETUFfQlVG
KTsNCj4gICAqICAgZW5vdWdoLCBzaW5jZSBhZGRpbmcgaW50ZXJmYWNlcyB0byBpbnRlcmNlcHQg
cGFnZWZhdWx0cyBhbmQgYWxsb3cgcHRlDQo+ICAgKiAgIHNob290ZG93bnMgd291bGQgaW5jcmVh
c2UgdGhlIGNvbXBsZXhpdHkgcXVpdGUgYSBiaXQuDQo+ICAgKg0KPiAtICogICBJbnRlcmZhY2U6
Og0KPiArICogICBJbnRlcmZhY2U6DQo+ICsgKg0KPiArICogICAuLiBjb2RlLWJsb2NrOjogYw0K
PiAgICoNCj4gLSAqICAgICAgaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1hX2J1ZiBcKiwgc3Ry
dWN0IHZtX2FyZWFfc3RydWN0IFwqLA0KPiAtICogICAgICAgICAgICAgICAgICAgIHVuc2lnbmVk
IGxvbmcpOw0KPiArICogICAgIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRtYV9idWYgKiwgc3Ry
dWN0IHZtX2FyZWFfc3RydWN0ICosIHVuc2lnbmVkIGxvbmcpOw0KPiAgICoNCj4gICAqICAgSWYg
dGhlIGltcG9ydGluZyBzdWJzeXN0ZW0gc2ltcGx5IHByb3ZpZGVzIGEgc3BlY2lhbC1wdXJwb3Nl
IG1tYXAgY2FsbCB0bw0KPiAgICogICBzZXQgdXAgYSBtYXBwaW5nIGluIHVzZXJzcGFjZSwgY2Fs
bGluZyBkb19tbWFwIHdpdGggJmRtYV9idWYuZmlsZSB3aWxsDQo+IC0tDQo+IDIuNDMuMC4zODEu
Z2I0MzVhOTZjZTgtZ29vZw0KDQpSZXZpZXdlZC1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJA
Z29vZ2xlLmNvbT4NCg0KVGhlIGNvZGUgYmxvY2sgaGlnaGxpZ2h0aW5nIGlzIG5pY2UuDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
