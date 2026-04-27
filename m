Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KA84Ewad72mfDQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 19:29:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CC58E4779D1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 19:29:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6E5C404B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:29:40 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 139623F785
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2026 17:29:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=b8SJfDG3;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lyude@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777310977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KF7u6ZoNxfK3+BpCCoO5erH9nqzrz/OiFIJaWAx89LM=;
	b=b8SJfDG3RsPV7zOWTbKHqXthNtuxPzxTR4i9KNwzvWogTMEcnO9hEqWAqdiIFc3b+SmvA2
	Wf7Hwwky3bCwuziGCXT81mxv04BpB4r1WVxRmNOSF3oo17hXPAppToknJ3qJEAoZSqOZI2
	muiEaDm/nzznp3xKY8HORwyCcLs9igE=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-190-mnbegLZeO7aY9ocBDnjKOA-1; Mon, 27 Apr 2026 13:29:34 -0400
X-MC-Unique: mnbegLZeO7aY9ocBDnjKOA-1
X-Mimecast-MFC-AGG-ID: mnbegLZeO7aY9ocBDnjKOA_1777310974
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50faf575af4so49671901cf.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2026 10:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777310974; x=1777915774;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KF7u6ZoNxfK3+BpCCoO5erH9nqzrz/OiFIJaWAx89LM=;
        b=mnC0iM54qm7B3DZEbEVHLI/CjUDS0QKGBSsIP/4BR/m0PWwKV8ByIobbWB3vNkUHHD
         Wg0Qx2i4b/+/wRL3AwCgthLgkHdQGHMUuQxAcN569mW7xn5dv8Wz8eanNHOwlIMwL1uv
         Vx02qNU6RtehqsEOlLm5M9EVyypyY0M1M7SpjFs6GFdFvqnRtMCjIx2OdzxmvFmyiWxD
         KuQu+vbYwMIu9SGBOu8uOsa2hakgeb7yo+aU4XcwyJrstpgYTUCnpJYGU78A2zejrftO
         kKq5dojT+GBuaRh1eY9FfwKNKhBKiFh8ENUyV+bkDLU7/FlgPnSdpGcAVx2ySOxmRAGG
         SI6g==
X-Forwarded-Encrypted: i=1; AFNElJ+elj1AFrcypAz0HXaz3rwyoJr0nDgBUGKC85ZncAAtDep2p8gnSW5sc+XKWvbe/xjabtBnvuywqFNuQ4AB@lists.linaro.org
X-Gm-Message-State: AOJu0YyZQlV55ZLihgQmRAW/YGNY+pWVrE6LOzleyx9a0wxzeZQtIgpC
	qL9+F/Zmgx2/Fa83oqiymz98CP/Kj8qfHk2AzYgRNNQBVlqc487yG3iWQn1uotqNgaCdslqxuBm
	51ZWuW5RHUT9znUFQSx573916R37+UjHqEPkU5Gqm8w0jl1Fs9DfyJjFLEK6dIhoVSrZe
X-Gm-Gg: AeBDietDukpKuqHTtaPJas9IFnrR5z72zTE9uTpJrErCkqv4R3sxW88pkm7UIGeS2Lq
	utnZZT+uo2ND/+oCRgYFCSETJVqO0kEnzafJuQI824/IMhIijPOEVwysehYDV0RvA9I3I6dpNLT
	HFJ84uej/Y1SbOLDipqj4K5jDLXwH3zwtJRdnt+9ypBdykjhQjA9s/NZHSDXdxg3nVOnBuzi8MH
	+v1Vouimx0GcjfZ6/fE3LD61tSi5rxNGDb+Kj68LAQfOPJ248kR1JZMTCSVzuMQ1fPjKoH32I4d
	yLpfziIDx5VEN6rMwTgav60Mb86JiE6yxw3M35ElAUV29N0ZOP/S7jFVQtfmNPlmDRvgznGBHaN
	JjfZp5BiyIszq7LQHoDT+9tnnmcSo
X-Received: by 2002:a05:622a:486:b0:509:1009:e7a6 with SMTP id d75a77b69052e-5100c97933emr2571081cf.43.1777310973769;
        Mon, 27 Apr 2026 10:29:33 -0700 (PDT)
X-Received: by 2002:a05:622a:486:b0:509:1009:e7a6 with SMTP id d75a77b69052e-5100c97933emr2570391cf.43.1777310973161;
        Mon, 27 Apr 2026 10:29:33 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b3e29932fasm285886d6.45.2026.04.27.10.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 10:29:32 -0700 (PDT)
Message-ID: <2f8a8b96473d99cee6f33075532a97f956ce21bc.camel@redhat.com>
From: lyude@redhat.com
To: Alexandre Courbot <acourbot@nvidia.com>
Date: Mon, 27 Apr 2026 13:29:31 -0400
In-Reply-To: <DI0MII8J4P2Y.309VKYVMQJNVK@nvidia.com>
References: <20260421235346.672794-1-lyude@redhat.com>
	 <20260421235346.672794-6-lyude@redhat.com>
	 <DI0MII8J4P2Y.309VKYVMQJNVK@nvidia.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qH-WyYajJSBflYKE0EWl0CZqlWi05in9IRUzTLohTbM_1777310974
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ---
Message-ID-Hash: NBIOWIPBXOQJMSHNGXECSAOLEJ2YHH6L
X-Message-ID-Hash: NBIOWIPBXOQJMSHNGXECSAOLEJ2YHH6L
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 5/5] rust: drm: gem: Add vmap functions to shmem bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NBIOWIPBXOQJMSHNGXECSAOLEJ2YHH6L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: CC58E4779D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.398];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]

T24gRnJpLCAyMDI2LTA0LTI0IGF0IDAwOjAxICswOTAwLCBBbGV4YW5kcmUgQ291cmJvdCB3cm90
ZToNCj4gPiDCoMKgIGRyb3BwZWQgYmVmb3JlIG9iai4NCj4gDQo+IEkgYW0gbm90IHN1cmUgdGhp
cyBpcyBlbm91Z2ggdG8gc29sdmUgdGhlIGRvdWJsZS1mcmVlIGlzc3VlIC0NCj4gYWx0aG91Z2gg
bXkgR0VNDQo+IGtub3dsZWRnZSBpcyBsYWNraW5nLCBzbyBwbGVhc2UgdGFrZSB0aGlzIHdpdGgg
YSBncmFpbiBvZiBzYWx0Lg0KPiANCj4gVGFrZSBhbiBvYmplY3Qgd2hlcmUgd2UgY2FsbGVkIGBz
Z190YWJsZWAsIHNvIHRoZSBTR1QgaGFzIGJlZW4NCj4gY3JlYXRlZC4NCj4gDQo+IFdoZW4gdGhl
IG9iamVjdCBpcyBkcm9wcGVkIGJ5IERSTSwgYGZyZWVfY2FsbGJhY2tgIGlzIGZpcnN0IGNhbGxl
ZC4NCj4gSXQNCj4gY2FsbHMgYGRybV9nZW1fc2htZW1fcmVsZWFzZWAsIHdoaWNoIGZyZWVzIHRo
ZSBTR1QuDQo+IA0KPiBUaGVuLCB0aGUgYERyb3BgIGltcGxlbWVudGF0aW9uIG9mIGBPYmplY3Rg
IGlzIGNhbGxlZCwgYW5kIGBzZ3RfcmVzYA0KPiBpcw0KPiBkcm9wcGVkLi4uIHdoaWNoIGF0dGVt
cHRzIHRvIGZyZWUgdGhlIFNHVCBhZ2Fpbi4NCj4gDQo+IEkgaGF2ZW4ndCB0ZXN0ZWQgdGhhdCBh
bmQgcmVseSBvbmx5IG9uIGEgcXVpY2sgbG9vayBhdCB0aGUgY29kZSBhbmQNCj4gbXkNCj4gcGFy
dGlhbCB1bmRlcnN0YW5kaW5nLCBidXQgdGhlIGNvcnJlY3QgZml4IGFwcGVhcnMgdG8gYmUgdG8g
Y2xlYXJpbmcNCj4gYHNndF9yZXNgIGluIGBmcmVlX2NhbGxiYWNrYC4NCg0KV2hvb3BzISBObyB5
b3UncmUgcmlnaHQsIGFuZCBzbyBpcyBEZWJvcmFoIChzaGUgbWVudGlvbmVkIHRoaXMNCnByZXZp
b3VzbHksIGJ1dCB3aGVuIHJlYWRpbmcgdGhyb3VnaCBpdCBJIGNvbXBsZXRlbHkgZm9yZ290IHRo
YXQNCmZyZWVfY2FsbGJhY2soKSB3YXMgaW4gdGhlIHBpY3R1cmUpLiBXZSBjYW4ndCBjbGVhciBT
ZXRPbmNlLCBidXQgd2UgY2FuDQp1c2UgbWVtOjp0YWtlKCkgd2hpY2ggc2hvdWxkIGJlIGVzc2Vu
dGlhbGx5IHRoZSBzYW1lIHRoaW5nLiBXaWxsIGZpeCBpbg0KdGhlIG5leHQgcmVzcGluDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
