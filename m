Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMpbMI3ht2lDWwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Mar 2026 11:55:09 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE232984F6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Mar 2026 11:55:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 111953F6F0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Mar 2026 10:55:08 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 4A1EB3F6F0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2026 10:55:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=HaGSGGqy;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773658505;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=j/4AllVOKh8z4TecylNv9BZB3czFOIQzZj3H/I9GZN8=;
	b=HaGSGGqyqNoof3Zy7y+eQNFzjoTXW0vtCtSIvGUpyOha2YVjkbhCCul/gYrsRmYCZ1atdf
	xQ3XqLxoGgvUkxVkgv0wJeZTNJHvCqWSY3Bs0g2oMXhTCyyAR0E/PdM29OP4I/+JHpDGRD
	8jzhMTWWrd68PYOpc4IXtzmwkqkgmL8=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-638-o7Qtm3bzPQm9tl0jfcUX_A-1; Mon, 16 Mar 2026 06:55:03 -0400
X-MC-Unique: o7Qtm3bzPQm9tl0jfcUX_A-1
X-Mimecast-MFC-AGG-ID: o7Qtm3bzPQm9tl0jfcUX_A_1773658503
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-7983f854288so85361097b3.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Mar 2026 03:55:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773658503; x=1774263303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j/4AllVOKh8z4TecylNv9BZB3czFOIQzZj3H/I9GZN8=;
        b=g+n+YWrVEYO8bAFj4OY/cZCdVeiL/MDYTpgwNUG5i2AggyCP9PzXVkb8JK0aI/dJlP
         dq0eUWg1zDgR2U4eWGH6qWa/DnWWVp4me+TIODXCpp4eKTK4rxDDHQQB4tWNI9L8PWNj
         q1WZs0tnnCcHkvCL/zMrf6mtR7kk0I/EDKgV8zGgmFfnpae9o6+KxdvLjdrQeKaytyvs
         e+gWdmvRsIqN2kPFdgEZ1TyQH2Ta/GLZVvHJr3xpCkj3tfA0uW+4HpqdGfSn28VcSVn7
         4OM8qYcTUxZi2HpAd3Tir6vPvyMA7aQMaZtC1pobsw6utg50dbyVn1ZTAnDxnZIPzzV3
         OxCA==
X-Forwarded-Encrypted: i=1; AJvYcCVXYECBx6QndKWsqeB8qBhJDFS8MNWqo1SkI5CWHocGtQsVbMPbL7oNaM2P3O9pnzpEFdS7prDFmGmag61B@lists.linaro.org
X-Gm-Message-State: AOJu0YxC1I03jqlfgynelBc+dxY3gE4iLRpBZbDVCCbT68cY78DKDBeH
	CjYscbjHNDR0nTYkJpEosjuiopbY7CaGH4JVvrWuHoxECavHKiVaEpnmZ66U1P7/yh6hXK4Fc10
	5KQdhBAMcHcdwzwjesPijgHxMQu/pJ/MCrvoj+Zc9J8Jb/iUWoWLJ0nJ2i/4fbMWH60BwWS5Nc5
	B+OcZcY+w2BusN6tb8/+L3EkqQTsVNKA3+r20rEqCvZcM=
X-Gm-Gg: ATEYQzwu42E82HVBaqgXm2wBpVVuIpMxI+bN15MmZ6QIGRlryNEjHlbk48QYbjCc0jd
	OdzYjFGFiKLrYRMZdWwiU0GE3sVgFZBVT0SYOEi67l/t7pRh1/DL/qDQK8K3nrMMCkhvm+/4FFy
	hFmZyej+1Qx9k2XRFBrlI+7y4XzGHNt0Zn8YPb780/1R/UhmgQebWOfNJlGBbEjDTZt2PCQMVCZ
	g==
X-Received: by 2002:a05:690e:449a:b0:64a:db50:fab2 with SMTP id 956f58d0204a3-64e630d964emr9195122d50.80.1773658503292;
        Mon, 16 Mar 2026 03:55:03 -0700 (PDT)
X-Received: by 2002:a05:690e:449a:b0:64a:db50:fab2 with SMTP id
 956f58d0204a3-64e630d964emr9195107d50.80.1773658502956; Mon, 16 Mar 2026
 03:55:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260306-b4-dmabuf-heap-coherent-rmem-v3-0-3d00d36c9bc4@redhat.com>
 <20260306-b4-dmabuf-heap-coherent-rmem-v3-3-3d00d36c9bc4@redhat.com> <20260313230629.GA3603067-robh@kernel.org>
In-Reply-To: <20260313230629.GA3603067-robh@kernel.org>
From: Albert Esteve <aesteve@redhat.com>
Date: Mon, 16 Mar 2026 11:54:51 +0100
X-Gm-Features: AaiRm51o4lEgIIRwy7J8EQU-dh_zU9bcODR7YayBvstmpxh8vjYCQuobudoxI8I
Message-ID: <CADSE00JymMjob5J02bh+YSw+2zyjx8OWxks5aEhuM2GX8ZB7=A@mail.gmail.com>
To: Rob Herring <robh@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Z39-My9BJmv-jEFEEdWdAfh3nopIBpj45OxImGAM8Do_1773658503
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: YRAHNVEOHGB6FMANY3G42KCI53PRYO7R
X-Message-ID-Hash: YRAHNVEOHGB6FMANY3G42KCI53PRYO7R
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, mripard@redhat.com, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/6] of_reserved_mem: add a helper for rmem device_init op
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YRAHNVEOHGB6FMANY3G42KCI53PRYO7R/>
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
	NEURAL_HAM(-0.00)[-0.773];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[redhat.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 4AE232984F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU2F0LCBNYXIgMTQsIDIwMjYgYXQgMTI6MDbigK9BTSBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPiB3cm90ZToNCj4NCj4gT24gRnJpLCBNYXIgMDYsIDIwMjYgYXQgMTE6MzY6MzRBTSAr
MDEwMCwgQWxiZXJ0IEVzdGV2ZSB3cm90ZToNCj4gPiBBZGQgYSBoZWxwZXIgZnVuY3Rpb24gd3Jh
cHBpbmcgaW50ZXJuYWwgcmVzZXJ2ZWQgbWVtb3J5DQo+ID4gZGV2aWNlX2luaXQgY2FsbCBhbmQg
ZXhwb3NlIGl0IGV4dGVybmFsbHkuDQo+DQo+IFdoeT8NCj4NCj4gVGhlIGRpZmYgdGVsbHMgdXMg
d2hhdC4gVGhlIGNvbW1pdCBtc2cgbmVlZHMgdG8gdGVsbCB1cyB3aHkuIE1heWJlIHRoZQ0KPiBy
ZXN0IG9mIHRoZSBzZXJpZXMgZXhwbGFpbnMgaXQsIGJ1dCB0aGlzIGNvbW1pdCBuZWVkcyB0byBz
dGFuZCBvbiBpdHMNCj4gb3duLg0KDQpBQ0suDQoNClRoaXMgcGF0Y2ggcHJlcGFyZXMgZm9yIHRo
ZSBoZWFwIGltcGxlbWVudGF0aW9uIGluIHBhdGNoICM0LCB3aGljaA0KdXNlcyB0aGUgbmV3IGhl
bHBlciBmdW5jdGlvbi4gSSB3aWxsIGFkZCB0aGUgaW5mb3JtYXRpb24gdG8gdGhlIGNvbW1pdA0K
Ym9keS4NCg0KPg0KPiA+DQo+ID4gVXNlIHRoZSBuZXcgaGVscGVyIGZ1bmN0aW9uIHdpdGhpbiBv
Zl9yZXNlcnZlZF9tZW1fZGV2aWNlX2luaXRfYnlfaWR4KCkuDQo+ID4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBBbGJlcnQgRXN0ZXZlIDxhZXN0ZXZlQHJlZGhhdC5jb20+DQo+ID4gLS0tDQo+DQo+IFZl
cnNpb24gaGlzdG9yeT8NCg0KWW91IG1lYW4gdHJhY2sgaXQgaW4gdGhlIGNvbW1pdCBib2R5PyBI
aXN0b3J5IGlzIGFscmVhZHkgZGV0YWlsZWQgaW4NCnRoZSBjb3ZlciBsZXR0ZXIuDQoNCj4NCj4g
PiAgZHJpdmVycy9vZi9vZl9yZXNlcnZlZF9tZW0uYyAgICB8IDY4ICsrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tDQo+ID4gIGluY2x1ZGUvbGludXgvb2ZfcmVzZXJ2ZWRf
bWVtLmggfCAgOCArKysrKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDUyIGluc2VydGlvbnMoKyks
IDI0IGRlbGV0aW9ucygtKQ0KPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
