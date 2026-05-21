Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FT3KWsCD2pfEAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 15:02:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F745A5528
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 15:02:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1DC59406C8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 13:02:23 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 02E904044C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 13:01:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=YUVRXx7q;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779368492;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LmwC58HJBimxH19t4ZPSn9X111oVOA5kpRJyuTfhJLQ=;
	b=YUVRXx7qIJLyCRfL6nWKH/LEOSNsB07w2syW1+6W2bJsscZjs5F7hQc4UgMWl0ym/C1JcO
	Ra0vrxjRY77BqULkmO9O349843jruZmScvatUAKuH9dI0nD8sH66aogKSe0eRCTyFyYm0B
	CFM81v9M4ZoeA+/uczA5lfNbEPBB2o0=
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-144-LdeqPHCoOIOibvlueOqAWw-1; Thu, 21 May 2026 09:01:28 -0400
X-MC-Unique: LdeqPHCoOIOibvlueOqAWw-1
X-Mimecast-MFC-AGG-ID: LdeqPHCoOIOibvlueOqAWw_1779368488
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-7bd66ec877aso110924007b3.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 06:01:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779368488; x=1779973288;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LmwC58HJBimxH19t4ZPSn9X111oVOA5kpRJyuTfhJLQ=;
        b=ATltFoj6SwgvCzPymZz3qsJhBU5lJwMohAF+6YKsOFEvW9ghfH2zRjHGfPtIoiRFEH
         io2Mb49VVF2F9+vHRzRFHKtPcVCs9yVQqadRl00PkxRrTs86cspYXtaB/riECdn6MMuM
         tlajX5TMCdTosFWF10UbEPC5ZLjftAjTwoe+RHRcBSaIp6YTOBLdTYjU8PFOWb/Mm8Sg
         ia3fCkvoYhqj3nh/TI9S4mr40fwlWI82kFHKMQYMkaRooV2nLBqQdDPIfLqABoQ51uUC
         2yTylq+mb6EJp/Fsp4yKrc2IwEMv5RNZlrLAWY/yK7JxNip5AJNE3s4Ti7x3PmQiUenX
         c+pA==
X-Forwarded-Encrypted: i=1; AFNElJ+CoavjQ8CTdcoJ5e/wgLdYfc5+WGg99zfnB6t6vq8NFYWuf5TX/VapwVIbiPYUINtJ1Nu9Z0Br+Yc/DXsV@lists.linaro.org
X-Gm-Message-State: AOJu0YwplWc5AyksmmOQEGxK1Q/X151Jklwkd2sSjrW0n5rEdkmbV4Ig
	1dblYu0uESJjO4Upn54100H1ht+d0ya/kBlLi22U4p5T3akOlpwMlHPNngZ0gD0Dum3JBCqgkgn
	MIZR8KtdCDkeA8Aauyq9DSJelcKIwV+b/12YunGk0h5rieXMm0r51V0Bi7IqrRPjePVEmfIPtNa
	8xYKLAmE80oqB75QnRndJHTrEkp/V7V6Xy9pm7zwNNhSm7SejsN1Y=
X-Gm-Gg: Acq92OFPKfe+jlJGxhTtV08JzdhlIa0AZLEQxR8zxrdpoq8ejfg8bOTfUvfl1tQr9Lj
	NmRm4seJndvD+jx3RKj17Y8rU1+yBba1V6dBK0KhgGKbrOdv4g5APPsSjuD5EP8t5Rt2TsFPfYG
	OfrxO1YD3mR2ZR2X4A1B1JJhmh0O3TzGCLi4R2Pu30NqW6HYBqFVFIyFhPsr/Ft3MX5q9jlXcED
	cJVrA==
X-Received: by 2002:a05:690c:2701:b0:798:5213:d90e with SMTP id 00721157ae682-7d21458c414mr20821457b3.25.1779368487428;
        Thu, 21 May 2026 06:01:27 -0700 (PDT)
X-Received: by 2002:a05:690c:2701:b0:798:5213:d90e with SMTP id
 00721157ae682-7d21458c414mr20820547b3.25.1779368486638; Thu, 21 May 2026
 06:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <20260521-dmabuf-limit-access-v1-0-26c01e27365a@redhat.com> <7b662fcd-3bcd-40a2-b014-d9ce36f6425b@amd.com>
In-Reply-To: <7b662fcd-3bcd-40a2-b014-d9ce36f6425b@amd.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Thu, 21 May 2026 15:01:15 +0200
X-Gm-Features: AVHnY4LBiwiMio4g-NMYwHAheob8lHj03QTb2KFQDfp0pjJRm1wTbuvqILl5JEg
Message-ID: <CADSE00J1+V4=qFZPOL8Cr8hYw6d=hf_XcDPezjYGkcxAwLYGyw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: XjEfGxLroRG8TXvzVJVgqofbOaYzOL-u0MYcMnlALq0_1779368488
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: YQBOW55XHTXZOAMD56IYGWRCTZOPSGCI
X-Message-ID-Hash: YQBOW55XHTXZOAMD56IYGWRCTZOPSGCI
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Shuah Khan <shuah@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/2] dma-buf: add DMA_BUF_IOCTL_DERIVE for reduced-permission aliases
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YQBOW55XHTXZOAMD56IYGWRCTZOPSGCI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[linaro.org:query timed out];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RSPAMD_EMAILBL_FAIL(0.00)[christian.koenig.amd.com:query timed out,linaro-mm-sig-leave.lists.linaro.org:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: F0F745A5528
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgQ2hyaXN0aWFuLA0KDQpPbiBUaHUsIE1heSAyMSwgMjAyNiBhdCAyOjI44oCvUE0gQ2hyaXN0
aWFuIEvDtm5pZw0KPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDUv
MjEvMjYgMTE6MTAsIEFsYmVydCBFc3RldmUgd3JvdGU6DQo+ID4gV2hlbiBzaGFyaW5nIGEgZG1h
LWJ1ZiBiZXR3ZWVuIGNvbXBvbmVudHMgb2YgZGlmZmVyZW50IHRydXN0IGxldmVscywgdGhlDQo+
ID4gYWxsb2NhdG9yIG1heSBuZWVkIHRvIGhhbmQgYSBjb25zdW1lciBhIHJlYWQtb25seSB2aWV3
IG9mIGEgYnVmZmVyIGl0DQo+ID4gaG9sZHMgd2l0aCByZWFkLXdyaXRlIGFjY2Vzcy4gQW4gZXhh
bXBsZSBpcyBhIGNhbWVyYSBwaXBlbGluZSB3aGVyZSB0aGUNCj4gPiBjYXB0dXJlIGNvbXBvbmVu
dCB3cml0ZXMgZnJhbWVzIGludG8gYSBidWZmZXIgYW5kIG5lZWRzIHRvIHBhc3MgYQ0KPiA+IHJl
YWQtb25seSBoYW5kbGUgdG8gYSBkb3duc3RyZWFtIHByb2Nlc3NpbmcgY29tcG9uZW50IHRoYXQg
c2hvdWxkIG5vdCBiZQ0KPiA+IGFibGUgdG8gbW9kaWZ5IHRoZSBkYXRhLg0KPiA+DQo+ID4gSG93
ZXZlciwgbm8gc3VjaCBtZWNoYW5pc20gZXhpc3RzIHRvZGF5LiBUaGUgYWNjZXNzIG1vZGUgb2Yg
YSBkbWEtYnVmDQo+ID4gZmlsZSBkZXNjcmlwdG9yIGlzIGZpeGVkIGF0IGV4cG9ydCB0aW1lLCBh
bmQgdGhlIHN0YW5kYXJkIFBPU0lYDQo+ID4gaW50ZXJmYWNlcyBmb3IgZHVwbGljYXRpbmcgb3Ig
Y2hhbmdpbmcgZmlsZSBkZXNjcmlwdG9ycyAoaS5lLiwgZHVwKDIpLA0KPiA+IGR1cDMoMiksIGFu
ZCBmY250bChGX1NFVEZMKSkgY2Fubm90IGFsdGVyIHRoZSByZWFkL3dyaXRlIGFjY2VzcyBtb2Rl
IG9mDQo+ID4gdGhlIGNvcHkuDQo+ID4NCj4gPiBPbmUgbmF0dXJhbCBjYW5kaWRhdGUgd291bGQg
YmUgcmVvcGVuaW5nIHZpYSAvcHJvYy9zZWxmL2ZkLzxOPiB3aXRoDQo+ID4gT19SRE9OTFksIHdo
aWNoIHdvcmtzIGZvciByZWd1bGFyIGZpbGVzLiBGb3IgZG1hLWJ1ZiB0aGlzIHdvdWxkIGZhaWwN
Cj4gPiAodGhhdCBpcywgaWYgd2Ugd2VyZSB0byBhZGQgYSBuZXcgaGFuZGxlciBmb3Igb3BlbiBm
X29wKSB3aXRoIEVOWElPDQo+ID4gYmVjYXVzZSB0aGUgZG1hYnVmIHBzZXVkby1maWxlc3lzdGVt
IGNhcnJpZXMgU0JfTk9VU0VSLCB3aGljaCBwcmV2ZW50cw0KPiA+IHRoZSBWRlMgZnJvbSBvcGVu
aW5nIGl0cyBmaWxlcyB0aHJvdWdoIHBhdGgtYmFzZWQgcmVzb2x1dGlvbiBmcm9tDQo+ID4gdXNl
cnNwYWNlLg0KPg0KPiBPSCBNWSBHT0QhIFRoaXMgaXMgdGhlIGxpa2UgdGhlIHNpeHRoIHRpbWUg
SSBoYWQgdG8gY2xhcmlmeSB0aGF0IGluIHRoZSBsYXN0IGZldyB3ZWVrcywgSSdtIHJlYWxseSB3
b25kZXJpbmcgd2hlcmUgdGhhdCBpcyBzdWRkZW5seSBjb21pbmcgZnJvbS4NCg0KU29ycnkhIEkg
ZG8gbm90IGtub3cgd2hlcmUgb3RoZXJzIGNhbWUgZnJvbS4gQnV0IG15IGludGVyZXN0IGNvbWVz
DQpmcm9tIGF1dG9tb3RpdmUsIHNhZmV0eSwgYW5kIG1peGVkIGNyaXRpY2FsaXR5IHNjZW5hcmlv
cy4gSSBraW5kIG9mDQpoaW50ZWQgYXQgdGhhdCBpbiB0aGUgb3BlbmluZyB3aGVuIHJlZmVycmlu
ZyB0byAiZGlmZmVyZW50IHRydXN0DQpsZXZlbHMiLg0KDQo+DQo+IENyZWF0aW5nIHRoZSBETUEt
YnVmIHdpdGggT19SRE9OTFkgZG9lcyAqTk9UKiBtYWtlIHRoZSBETUEtYnVmIGl0c2VsZiByZWFk
IG9ubHkhDQo+DQo+IFRoYXQncyBhIHJlYWxseSBjb21tb24gbWlzY29uY2VwdGlvbi4gVGhlIGZs
YWcgb25seSBjb250cm9scyBpZiBtbWFwKCkgY2FuIGJlIGRvbmUgcmVhZC93cml0ZSBvciByZWFk
LW9ubHkgdG8gaGFuZGxlIGNhY2hlIGNvaGVyZW5jeSBpc3N1ZXMuDQo+DQo+IEl0IGlzIHN0aWxs
IHBlcmZlY3RseSBwb3NzaWJsZSBmb3IgYSBkZXZpY2UgdG8gd3JpdGUgaW50byBhIERNQS1idWYg
Y3JlYXRlZCB3aXRoIE9fUkRPTkxZIHdpdGggRE1BIQ0KPg0KPiBTbyBsb25nIHN0b3J5IHNob3J0
IHRoZXJlIGlzIG5vdCBzdWNoIGZlYXR1cmUgYXMgYSByZWFkIG9ubHkgRE1BLWJ1ZiwgYW5kIHB1
dHRpbmcgcmVhZC1vbmx5IHBhZ2VzIGludG8gYSBETUEtYnVmIGFuZCB0aGVuIGV4cGVjdGluZyB0
aGF0IG5vYm9keSBjYW4gd3JpdGUgdG8gdGhlbSBpcyBhbiBhYnNvbHV0ZWx5IGNsZWFyIE5vLUdv
Lg0KPg0KPiBJZiB3ZSB3b3VsZCB3YW50IHRvIGltcGxlbWVudCBhIHJlYWQtb25seSBETUEtYnVm
IGZlYXR1cmUgd2Ugd291bGQgbmVlZCB0byBnbyBvdmVyIGFsbCB0aGUgZGlmZmVyZW50IERNQS1i
dWYgaW1wb3J0ZXJzIGluIHRoZSBrZXJuZWwgYW5kIGFkZCBzZWN1cml0eSBjaGVja3MuDQoNClRo
aXMgY2xhcmlmaWVzIGEgbG90LiBUb28gYmFkLCBidXQgaXQgbWFrZXMgc2Vuc2UuIEkgd2lsbCBh
YmFuZG9uIHRoZQ0Kc2VyaWVzIHRoZW4uDQoNClRoYW5rcyBmb3IgdGhlIHJldmlldyBhbmQgdGhl
IGV4cGxhbmF0aW9uIQ0KDQpCUiwNCkFsYmVydA0KDQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlh
bi4NCj4NCj4NCj4gPg0KPiA+IEFsdGVybmF0aXZlbHksIGV4cG9ydGluZyB0aGUgYnVmZmVyIHR3
aWNlIHdvdWxkIHByb2R1Y2UgdHdvIGluZGVwZW5kZW50DQo+ID4gZG1hX2J1ZiBpbnN0YW5jZXMs
IHdoaWNoIGJyZWFrcyBmZW5jZSBzeW5jaHJvbml6YXRpb24uDQo+ID4NCj4gPiBUaGVyZWZvcmUg
d2UgYWRkIGEgbmV3IERNQV9CVUZfSU9DVExfREVSSVZFIGlvY3RsLCB3aGljaCBwcm9kdWNlcyBh
IG5ldw0KPiA+IGZpbGUgZGVzY3JpcHRvciBmb3IgYW4gZXhpc3RpbmcgZG1hLWJ1ZiB3aXRoIGEg
Y2FsbGVyLXNwZWNpZmllZCBzdWJzZXQNCj4gPiBvZiB0aGUgb3JpZ2luYWwgcGVybWlzc2lvbnM6
DQo+ID4NCj4gPiBgYGANCj4gPiAgIHN0cnVjdCBkbWFfYnVmX2Rlcml2ZSB7IF9fdTMyIGZsYWdz
OyBfX3MzMiBmZDsgfTsNCj4gPg0KPiA+ICAgc3RydWN0IGRtYV9idWZfZGVyaXZlIHJlcSA9IHsg
LmZsYWdzID0gT19SRE9OTFkgfCBPX0NMT0VYRUMgfTsNCj4gPiAgIGlvY3RsKHJ3X2ZkLCBETUFf
QlVGX0lPQ1RMX0RFUklWRSwgJnJlcSk7DQo+ID4gICAvKiByZXEuZmQgaXMgbm93IGEgcmVhZC1v
bmx5IGFsaWFzIG9mIHRoZSBzYW1lIGJ1ZmZlciAqLw0KPiA+IGBgYA0KPiA+DQo+ID4gUGVybWlz
c2lvbiBlc2NhbGF0aW9uIGlzIHJlamVjdGVkIHdpdGggLUVBQ0NFUy4gVGhlIG5ldyBmZCBhbGlh
c2VzIHRoZQ0KPiA+IHNhbWUgc3RydWN0IGRtYV9idWYgYXMgdGhlIG9yaWdpbmFsLCBzYW1lIGRt
YV9yZXN2LCBzYW1lIGV4cG9ydGVyIG9wcywNCj4gPiBzYW1lIHVuZGVybHlpbmcgbWVtb3J5OyBz
byBpbXBvcnRlcnMgYXR0YWNoaW5nIHRvIGVpdGhlciBmZCBzZWUgdGhlIHNhbWUNCj4gPiBmZW5j
ZSB0aW1lbGluZSBhbmQgb3BlcmF0ZSBvbiB0aGUgc2FtZSBvYmplY3QuIEFjY2VzcyBjb250cm9s
IGZvciB3aGljaA0KPiA+IGNvbXBvbmVudHMgbWF5IHJlY2VpdmUgb3IgcGFzcyBvbiByZXN0cmlj
dGVkIGRlc2NyaXB0b3JzIGNhbiBiZSBsYXllcmVkIG9uDQo+ID4gdG9wIHZpYSBTRUxpbnV4IGZp
bGU6cmVhZCBhbmQgZmlsZTp3cml0ZSBwZXJtaXNzaW9ucy4NCj4gPg0KPiA+IEEgc2hhcmVkIHdy
aXRhYmxlIG1hcHBpbmcgKFBST1RfV1JJVEUgfCBNQVBfU0hBUkVEKSBvbiB0aGUgcmVhZC1vbmx5
IGZkIGlzDQo+ID4gcmVqZWN0ZWQgd2l0aCAtRUFDQ0VTIGluIGRtYV9idWZfbW1hcF9pbnRlcm5h
bCgpLg0KPiA+DQo+ID4gVHdvIHNtYWxsIGludGVybmFsIGFkanVzdG1lbnRzIGFjY29tcGFueSB0
aGUgaW9jdGw6DQo+ID4gLSBfX2RtYV9idWZfbGlzdF9kZWwoKSBpcyBtb3ZlZCB0byBkbWFfYnVm
X3JlbGVhc2UoKSBzbyBpdCBmaXJlcyBleGFjdGx5DQo+ID4gICBvbmNlIG9uIGRlbnRyeSBkZXN0
cnVjdGlvbiByYXRoZXIgdGhhbiBvbiBldmVyeSBmaWxlIGNsb3NlLg0KPiA+IC0gZG1hX2J1Zl9m
aWxlX3JlbGVhc2UoKSBpcyB1cGRhdGVkIHRvIGNhbGwgZG1hX2J1Zl9wdXQoKSBvbmx5IGZvcg0K
PiA+ICAgZmlsZXMgdGhhdCBhcmUgbm90IHRoZSBwcmltYXJ5IGRtYS1idWYgZmlsZS4NCj4gPg0K
PiA+IFRoaXMgbWF5IG5vdCBiZSB0aGUgYmVzdCBhcHByb2FjaCwgYnV0IGFmdGVyIGNvbnNpZGVy
aW5nIGRpZmZlcmVudA0KPiA+IG9wdGlvbnMgYW5kIGFsdGVybmF0aXZlcyAoYXMgZGVzY3JpYmVk
IGFib3ZlKSwgd2UgZGVjaWRlZCB0byByYWlzZSB0aGUNCj4gPiBkaXNjdXNzaW9uIHVwc3RyZWFt
LiBUaHVzLCB3ZSB3ZWxjb21lIGFueSBhbHRlcm5hdGl2ZSBwcm9wb3NhbCBvciBpZGVhcy4NCj4g
Pg0KPiA+IFRoZSBzZXJpZXMgaXMgc3RydWN0dXJlZCBhczoNCj4gPiAtIFBhdGNoIDEgYWRkcyB0
aGUgbmV3IGlvY3RsIGltcGxlbWVudGF0aW9uLg0KPiA+IC0gUGF0Y2ggMiBhZGRzIHNlbGZ0ZXN0
cyBjb3ZlcmluZyB0aGUgbmV3IGlvY3RsLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogQWxiZXJ0
IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQuY29tPg0KPiA+IC0tLQ0KPiA+IEFsYmVydCBFc3RldmUg
KDIpOg0KPiA+ICAgICAgIGRtYS1idWY6IGFkZCBETUFfQlVGX0lPQ1RMX0RFUklWRSBmb3IgcmVk
dWNlZC1wZXJtaXNzaW9uIGFsaWFzZXMNCj4gPiAgICAgICBzZWxmdGVzdHM6IGRtYS1idWY6IGFk
ZCBERVJJVkUgaW9jdGwgdGVzdHMNCj4gPg0KPiA+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1OCArKysrKysrKysrLQ0KPiA+ICBpbmNsdWRl
L3VhcGkvbGludXgvZG1hLWJ1Zi5oICAgICAgICAgICAgICAgICAgICAgICB8ICAyOCArKysrKw0K
PiA+ICB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9kbWFidWYtaGVhcHMvZG1hYnVmLWhlYXAuYyB8
IDExNCArKysrKysrKysrKysrKysrKysrKy0NCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxOTggaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiAtLS0NCj4gPiBiYXNlLWNvbW1pdDogYWI1
ZmNlODdhNzc4Y2I3ODBhMDU5ODRhMmNhNDQ4ZjJiNDFhYWZiZg0KPiA+IGNoYW5nZS1pZDogMjAy
NjA1MjAtZG1hYnVmLWxpbWl0LWFjY2Vzcy03MzI2MTM1Mzg0MWENCj4gPg0KPiA+IEJlc3QgcmVn
YXJkcywNCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
