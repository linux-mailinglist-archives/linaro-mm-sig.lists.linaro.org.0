Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AH5CMDB8qWkg8gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Mar 2026 13:50:56 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 344152121B0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Mar 2026 13:50:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3CDC3F91E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Mar 2026 12:50:54 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 217C23F91E
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Mar 2026 12:50:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=hAk8h0LN;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of aesteve@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=aesteve@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772715052;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mGQD+cOc++KkO42kzws1oQJrJ/tIu6r6dd9H8Ca4j6g=;
	b=hAk8h0LN1V0U9yxkzJ64iijEr3Vw7dbSm9mD5x6VgyaR5GJecl2OQRp46BTHUmHMLhtHup
	MGQ36vBmlTDnTWlmhImYdOfoGri6MB8+Oa5iVBFgIRgmZ7X1iapVuQU2lCuVJ3aMctWr38
	63aNhNxUoYbpIsooUPszFdzBvwY3alU=
Received: from mail-yx1-f69.google.com (mail-yx1-f69.google.com
 [74.125.224.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-311-TuBCj8yOMNmCNzwwB_kmhw-1; Thu, 05 Mar 2026 07:50:51 -0500
X-MC-Unique: TuBCj8yOMNmCNzwwB_kmhw-1
X-Mimecast-MFC-AGG-ID: TuBCj8yOMNmCNzwwB_kmhw_1772715051
Received: by mail-yx1-f69.google.com with SMTP id 956f58d0204a3-64ad18e7ffaso9753299d50.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Mar 2026 04:50:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772715051; x=1773319851;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mGQD+cOc++KkO42kzws1oQJrJ/tIu6r6dd9H8Ca4j6g=;
        b=oTGMpFYMg5aqTz7m2XHZ/RPcJIwOZLy4h/Nzhv6DqGWBcCJFRBrMePxpRVWfgKdk+2
         jHn8SM+AET/rY3A6Vez7yheMmJXY8+zvwMx0d6/RjvyhLnwSgtYEct7fhCnnaH39k0VN
         YCO43teFosAwGfPWYKDpBw6SNOPzI+XugKPnrnU/Cn2NOeozVYbjFZCgGeAZ3xIEXfgL
         PV68pSOhfiZEYk7z7i5gmu0KhDhE0WFCiMQlHy31kXfTlyfbjpsMFaax/S2bYmd269pi
         RWeTuuvymnVprMK660mRWJPdzxMlG+RbhEigPkNtCziugb8V1870er6tqCfAp517R4Gr
         A/tQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZ9/rjXJyg+Q/JYj/eQq2rYJqKXXyHSh9CrWL/1df6MEoTQ4RZNAv9N6M5Vu2hDHynjqZRp+cVeTSqkxqh@lists.linaro.org
X-Gm-Message-State: AOJu0YxKO0mgqUNguBsXdMi6plHd5tzPqMaWuBPbKTpcE8aO20q6dy0k
	NoZEOFJV6h43p2I0drIDycCB0SAdQMKUNr0uiLrb1a2ehHwKu5zTW7jf8YxIBwQtWlN/SwU6bOY
	eB2LvhDd/uXuWHCeBYFaLznsrTp9FvvJ5w6xWP5ripgG/HhEM5A4s8/uI6KAFGgPOzo6d37LXqG
	0ihL4wuF5C76ZEvHsi+Vir+A7iE83QR2qB9qUAfKVrzHc=
X-Gm-Gg: ATEYQzxfufUittSIbaJ1JLNhBvToo8T58HkYE4fU8pioV3qvP3HiFr6zosb2qlcAVB1
	aAVSKrlPPSFCyxHUigw4oS9519ZyBsyN6lxdud01RrLkMSc27TMQhQdQzDt4ZwDyitsBAUMef7F
	JOrel6X9Fs7VjUpMJA+1E96LjwiEE0g21b6pSGlxW0Ty0o1U2CZcrY0mjI1FZcWOL1nj6zkJ1n8
	g==
X-Received: by 2002:a05:690e:b4d:b0:64c:e7a0:7eb8 with SMTP id 956f58d0204a3-64cf9b4e46dmr4272161d50.24.1772715050843;
        Thu, 05 Mar 2026 04:50:50 -0800 (PST)
X-Received: by 2002:a05:690e:b4d:b0:64c:e7a0:7eb8 with SMTP id
 956f58d0204a3-64cf9b4e46dmr4272126d50.24.1772715050349; Thu, 05 Mar 2026
 04:50:50 -0800 (PST)
MIME-Version: 1.0
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
 <20260303-b4-dmabuf-heap-coherent-rmem-v2-4-65a4653b3378@redhat.com>
 <20260303-rigorous-cow-of-saturation-23f87b@houat> <CADSE00+jCZSHi=OLbmOebBwnue5tjG7AFPKN76CbYDWYBcP+AA@mail.gmail.com>
 <20260305-antique-flying-gopher-4cbe34@houat>
In-Reply-To: <20260305-antique-flying-gopher-4cbe34@houat>
From: Albert Esteve <aesteve@redhat.com>
Date: Thu, 5 Mar 2026 13:50:39 +0100
X-Gm-Features: AaiRm520Qsz-JqgW5810FPhKu21ZofkmrOtPWlvIEAnCY9wjM-bxXO9YQ-thsLs
Message-ID: <CADSE00K2PnP-AwS3Ad3UCrQd_ZG7a1L70i1+6EdQsrg0QM3OSA@mail.gmail.com>
To: Maxime Ripard <mripard@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ZW56UWw2WFcSHb5_RMQTiaQyyNpr3DqVp-vI0eASwMA_1772715051
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
Message-ID-Hash: YBHZF6XJXBGIJXQE2PZOVYBVSZPQWQFH
X-Message-ID-Hash: YBHZF6XJXBGIJXQE2PZOVYBVSZPQWQFH
X-MailFrom: aesteve@redhat.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/6] dma-buf: heaps: Add Coherent heap to dmabuf heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YBHZF6XJXBGIJXQE2PZOVYBVSZPQWQFH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 344152121B0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aesteve@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.910];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:-]
X-Rspamd-Action: no action

T24gVGh1LCBNYXIgNSwgMjAyNiBhdCAxOjMw4oCvUE0gTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBy
ZWRoYXQuY29tPiB3cm90ZToNCj4NCj4gT24gVHVlLCBNYXIgMDMsIDIwMjYgYXQgMDM6NDc6MTRQ
TSArMDEwMCwgQWxiZXJ0IEVzdGV2ZSB3cm90ZToNCj4gPiBPbiBUdWUsIE1hciAzLCAyMDI2IGF0
IDI6MjDigK9QTSBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQHJlZGhhdC5jb20+IHdyb3RlOg0KPiA+
ID4gT24gVHVlLCBNYXIgMDMsIDIwMjYgYXQgMDE6MzM6NDdQTSArMDEwMCwgQWxiZXJ0IEVzdGV2
ZSB3cm90ZToNCj4gPiA+ID4gQWRkIGEgZG1hLWJ1ZiBoZWFwIGZvciBEVCBjb2hlcmVudCByZXNl
cnZlZC1tZW1vcnkNCj4gPiA+ID4gKGkuZS4sICdzaGFyZWQtZG1hLXBvb2wnIHdpdGhvdXQgJ3Jl
dXNhYmxlJyBwcm9wZXJ0eSksDQo+ID4gPiA+IGV4cG9zaW5nIG9uZSBoZWFwIHBlciByZWdpb24g
Zm9yIHVzZXJzcGFjZSBidWZmZXJzLg0KPiA+ID4gPg0KPiA+ID4gPiBUaGUgaGVhcCBiaW5kcyB0
aGUgaGVhcCBkZXZpY2UgdG8gZWFjaCBtZW1vcnkgcmVnaW9uIHNvDQo+ID4gPiA+IGNvaGVyZW50
IGFsbG9jYXRpb25zIHVzZSB0aGUgY29ycmVjdCBkZXYtPmRtYV9tZW0sIGFuZA0KPiA+ID4gPiBp
dCBkZWZlcnMgcmVnaXN0cmF0aW9uIHVudGlsIG1vZHVsZV9pbml0IHdoZW4gbm9ybWFsDQo+ID4g
PiA+IGFsbG9jYXRvcnMgYXJlIGF2YWlsYWJsZS4NCj4gPiA+ID4NCj4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQuY29tPg0KPiA+ID4gPiAtLS0NCj4g
PiA+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jICAgICAgICAgICAgfCAgIDQgKy0NCj4g
PiA+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnICAgICAgICAgfCAgIDkgKw0KPiA+
ID4gPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlICAgICAgICB8ICAgMSArDQo+ID4g
PiA+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvY29oZXJlbnRfaGVhcC5jIHwgNDI2ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiA+ID4gIGluY2x1ZGUvbGludXgvZG1hLWhl
YXAuaCAgICAgICAgICAgICAgfCAgMTEgKw0KPiA+ID4gPiAgaW5jbHVkZS9saW51eC9kbWEtbWFw
LW9wcy5oICAgICAgICAgICB8ICAgNyArDQo+ID4gPiA+ICA2IGZpbGVzIGNoYW5nZWQsIDQ1NiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4gPg0KPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAu
Yw0KPiA+ID4gPiBpbmRleCA4ODE4OWQ0ZTQ4NTYxLi5iYTg3ZTVhYzE2YWUyIDEwMDY0NA0KPiA+
ID4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+ID4gPiArKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+ID4gPiBAQCAtMzkwLDggKzM5MCw4IEBAIHN0cnVj
dCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5m
byAqZXhwX2luZm8pDQo+ID4gPiA+DQo+ID4gPiA+ICAgICAgIGhlYXAgPSBkbWFfaGVhcF9jcmVh
dGUoZXhwX2luZm8pOw0KPiA+ID4gPiAgICAgICBpZiAoSVNfRVJSKGhlYXApKSB7DQo+ID4gPiA+
IC0gICAgICAgICAgICAgcHJfZXJyKCJkbWFfaGVhcDogZmFpbGVkIHRvIGNyZWF0ZSBoZWFwICgl
ZClcbiIsIFBUUl9FUlIoaGVhcCkpOw0KPiA+ID4gPiAtICAgICAgICAgICAgIHJldHVybiBQVFJf
RVJSKGhlYXApOw0KPiA+ID4gPiArICAgICAgICAgICAgIHByX2VycigiZG1hX2hlYXA6IGZhaWxl
ZCB0byBjcmVhdGUgaGVhcCAoJWxkKVxuIiwgUFRSX0VSUihoZWFwKSk7DQo+ID4gPiA+ICsgICAg
ICAgICAgICAgcmV0dXJuIEVSUl9DQVNUKGhlYXApOw0KPiA+ID4NCj4gPiA+IFRoaXMgbG9va3Mg
dW5yZWxhdGVkIGFuZCBzaG91bGQgcG9zc2libHkgYmUgc3F1YXNoZWQgaW50byB0aGUgcHJldmlv
dXMNCj4gPiA+IHBhdGNoIHRoYXQgaW50cm9kdWNlcyBkbWFfaGVhcF9jcmVhdGUoKT8NCj4gPiA+
DQo+ID4gPiA+ICtzdGF0aWMgaW50IGNvaGVyZW50X2hlYXBfaW5pdF9kbWFfbWFzayhzdHJ1Y3Qg
ZGV2aWNlICpkZXYpDQo+ID4gPiA+ICt7DQo+ID4gPiA+ICsgICAgIGludCByZXQ7DQo+ID4gPiA+
ICsNCj4gPiA+ID4gKyAgICAgcmV0ID0gZG1hX2NvZXJjZV9tYXNrX2FuZF9jb2hlcmVudChkZXYs
IERNQV9CSVRfTUFTSyg2NCkpOw0KPiA+ID4gPiArICAgICBpZiAoIXJldCkNCj4gPiA+ID4gKyAg
ICAgICAgICAgICByZXR1cm4gMDsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgICAvKiBGYWxsYmFj
ayB0byAzMi1iaXQgRE1BIG1hc2sgKi8NCj4gPiA+ID4gKyAgICAgcmV0dXJuIGRtYV9jb2VyY2Vf
bWFza19hbmRfY29oZXJlbnQoZGV2LCBETUFfQklUX01BU0soMzIpKTsNCj4gPiA+ID4gK30NCj4g
PiA+DQo+ID4gPiBXaHkgZG8geW91IG5lZWQgdG8gbWVzcyB3aXRoIHRoZSBETUEgbWFzaz8gSSdk
IGV4cGVjdCB0aGF0IGRldmljZSB0byBiZQ0KPiA+ID4gYWJsZSB0byBhY2Nlc3MgZXZlcnl0aGlu
Zy4NCj4gPg0KPiA+IFdoZW4gSSB0ZXN0ZWQgSSB3YXMgZ2V0dGluZzogInJlc2VydmVkIG1lbW9y
eSBpcyBiZXlvbmQgZGV2aWNlJ3Mgc2V0DQo+ID4gRE1BIGFkZHJlc3MgcmFuZ2UiLCBzbyBJIHRl
c3RlZCBpZiBpdCB3YXMgZml4ZWQgd2l0aA0KPiA+IGRtYV9jb2VyY2VfbWFza19hbmRfY29oZXJl
bnQoKSBhbmQvb3IgZG1hX3NldF9tYXNrX2NvaGVyZW50KCkuIEkgZGlkDQo+ID4gbm90IGRlYnVn
IHRoZSB2YWx1ZSBvZiBjb2hlcmVudF9kbWFfbWFzaywgYnV0IGdpdmVuIHRoZSBlcnJvciBJIGFz
c3VtZQ0KPiA+IGl0IHdhcyBub3Qgc2V0IHByb3Blcmx5PyBVbHRpbWF0ZWx5LCB1c2luZyB0aGUg
NjQgYml0IG1hc2sgZml4ZWQgaXQsDQo+ID4gYW5kIEkgYWRkZWQgYSAzMi1iaXQgZmFsbGJhY2sg
dG8gZW5zdXJlIHN1cHBvcnQgZm9yIDMyLWJpdCBzeXN0ZW1zLg0KPg0KPiBTbyB5b3UgZG9uJ3Qg
bmVlZCB0byBoYW5kbGUgdGhlIGZhbGxiYWNrIGJlY2F1c2UNCj4gZG1hX2NvZXJjZV9tYXNrX2Fu
ZF9jb2hlcmVudCB3aWxsIHRydW5jYXRlIHRoZSBnZW5lcmF0ZWQgbWFzayB0bw0KPiBkbWFfYWRk
cl90LCB3aGljaCBpcyA2NGJpdHMgb24gNjQgYml0cyBwbGF0Zm9ybXMsIGFuZCAzMiBiaXRzIG9u
IDMyIGJpdHMNCj4gcGxhdGZvcm1zLg0KPg0KPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9s
aW51eC92Ni4xOS4zL3NvdXJjZS9rZXJuZWwvZG1hL21hcHBpbmcuYyNMOTA4DQoNCkdvb2QhIEkg
ZGlkbid0IHJlYWxpc2UgdGhhdC4gSSB3aWxsIHJlbW92ZSBpdCBmb3IgdGhlIG5leHQgcmV2aXNp
b24uDQoNCj4NCj4gQnV0IEkgdGhpbmsgbXkgcG9pbnQgd2FzIG1vcmUgdGhhbiB0aGVyZSdzIG5v
dGhpbmcgc3BlY2lmaWMgdG8gdGhlDQo+IGNvaGVyZW50IGhlYXAgaXRzZWxmOiB0aGUgZGV2aWNl
IGFsbG9jYXRlZCBmb3IgdGhlIGhlYXAgc2hvdWxkIGhhdmUgdGhlDQo+IHJpZ2h0IG1hc2sgZm9y
IGFueSBoZWFwLCBzbyBpdCdzIHNvbWV0aGluZyBJJ2QgcmF0aGVyIHB1dCBpbg0KPiBkbWFfaGVh
cF9hZGQuDQoNClRoYXQgd2FzIG15IGZpcnN0IHRha2UgdG9vLiBCdXQgd2hlbiBJIGNoZWNrZWQs
IEkgZGlkIG5vdCBzZWUNCmRtYV9oZWFwX2FkZCgpIGRvaW5nIGFueXRoaW5nIHRvIGRldi0+Y29o
ZXJlbnRfZG1hX21hc2suIFNvIEkgYXNzdW1lZA0KdGhlIHByb2JsZW0gcmVsYXRlcyB0byB0aGUg
cm1lbSBiZWluZyBib3VuZCwgd2hpY2ggdHJpZ2dlcnMgdGhlIGNoZWNrDQp0byBlbnN1cmUgdGhl
IG1lbW9yeSBwb29sIGlzIHdpdGhpbiBib3VuZGFyaWVzLiBUaGF0J3MgYSBzcGVjaWZpYw0KaXNz
dWUgd2l0aCB0aGUgY29oZXJlbnQgaGVhcCwgc28gaXQgc291bmRzIGxpa2UgaXQgd291bGQgYmUg
YmV0dGVyDQpoYW5kbGVkIGhlcmUgaW4gdGhlIGhlYXAtc3BlY2lmaWMgY29kZSByYXRoZXIgdGhh
biBpbg0KYGRtYV9oZWFwX2FkZCgpYCwgd2hpY2ggd291bGQgYWZmZWN0IGFsbCB0aGUgZG1hYnVm
IGhlYXBzLg0KDQpUaGF0IGJlaW5nIHNhaWQsIHNldHRpbmcgdGhlIG1hc2sgaXMgcHJvYmFibHko
PykgaGFybWxlc3MgZm9yIHRoZQ0Kb3RoZXIgaGVhcHMgYW55d2F5LCBzbyBJIHdvdWxkIGJlIGZp
bmUgd2l0aCBtb3ZpbmcgaXQgLS0gdG8NCmRtYV9oZWFwX2NyZWF0ZSgpIHRvIGJlIG1vcmUgc3Bl
Y2lmaWMuDQoNCkJSLA0KQWxiZXJ0Lg0KDQo+DQo+ID4gPiA+ICtzdGF0aWMgaW50IF9fY29oZXJl
bnRfaGVhcF9yZWdpc3RlcihzdHJ1Y3QgcmVzZXJ2ZWRfbWVtICpybWVtKQ0KPiA+ID4gPiArew0K
PiA+ID4gPiArICAgICBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gZXhwX2luZm87DQo+ID4g
PiA+ICsgICAgIHN0cnVjdCBjb2hlcmVudF9oZWFwICpjb2hfaGVhcDsNCj4gPiA+ID4gKyAgICAg
c3RydWN0IGRldmljZSAqaGVhcF9kZXY7DQo+ID4gPiA+ICsgICAgIGludCByZXQ7DQo+ID4gPiA+
ICsNCj4gPiA+ID4gKyAgICAgaWYgKCFybWVtIHx8ICFybWVtLT5uYW1lKQ0KPiA+ID4gPiArICAg
ICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsgICAgIGNvaF9o
ZWFwID0ga3phbGxvY19vYmooKmNvaF9oZWFwKTsNCj4gPiA+ID4gKyAgICAgaWYgKCFjb2hfaGVh
cCkNCj4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsNCj4gPiA+ID4gKw0KPiA+
ID4gPiArICAgICBjb2hfaGVhcC0+cm1lbSA9IHJtZW07DQo+ID4gPiA+ICsgICAgIGNvaF9oZWFw
LT5uYW1lID0ga3N0cmR1cChybWVtLT5uYW1lLCBHRlBfS0VSTkVMKTsNCj4gPiA+ID4gKyAgICAg
aWYgKCFjb2hfaGVhcC0+bmFtZSkgew0KPiA+ID4gPiArICAgICAgICAgICAgIHJldCA9IC1FTk9N
RU07DQo+ID4gPiA+ICsgICAgICAgICAgICAgZ290byBmcmVlX2NvaGVyZW50X2hlYXA7DQo+ID4g
PiA+ICsgICAgIH0NCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgICBleHBfaW5mby5uYW1lID0gY29o
X2hlYXAtPm5hbWU7DQo+ID4gPiA+ICsgICAgIGV4cF9pbmZvLm9wcyA9ICZjb2hlcmVudF9oZWFw
X29wczsNCj4gPiA+ID4gKyAgICAgZXhwX2luZm8ucHJpdiA9IGNvaF9oZWFwOw0KPiA+ID4gPiAr
DQo+ID4gPiA+ICsgICAgIGNvaF9oZWFwLT5oZWFwID0gZG1hX2hlYXBfY3JlYXRlKCZleHBfaW5m
byk7DQo+ID4gPiA+ICsgICAgIGlmIChJU19FUlIoY29oX2hlYXAtPmhlYXApKSB7DQo+ID4gPiA+
ICsgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihjb2hfaGVhcC0+aGVhcCk7DQo+ID4gPiA+ICsg
ICAgICAgICAgICAgZ290byBmcmVlX25hbWU7DQo+ID4gPiA+ICsgICAgIH0NCj4gPiA+ID4gKw0K
PiA+ID4gPiArICAgICBoZWFwX2RldiA9IGRtYV9oZWFwX2dldF9kZXYoY29oX2hlYXAtPmhlYXAp
Ow0KPiA+ID4gPiArICAgICByZXQgPSBjb2hlcmVudF9oZWFwX2luaXRfZG1hX21hc2soaGVhcF9k
ZXYpOw0KPiA+ID4gPiArICAgICBpZiAocmV0KSB7DQo+ID4gPiA+ICsgICAgICAgICAgICAgcHJf
ZXJyKCJjb2hlcmVudF9oZWFwOiBmYWlsZWQgdG8gc2V0IERNQSBtYXNrICglZClcbiIsIHJldCk7
DQo+ID4gPiA+ICsgICAgICAgICAgICAgZ290byBkZXN0cm95X2hlYXA7DQo+ID4gPiA+ICsgICAg
IH0NCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgICByZXQgPSBvZl9yZXNlcnZlZF9tZW1fZGV2aWNl
X2luaXRfd2l0aF9tZW0oaGVhcF9kZXYsIHJtZW0pOw0KPiA+ID4gPiArICAgICBpZiAocmV0KSB7
DQo+ID4gPiA+ICsgICAgICAgICAgICAgcHJfZXJyKCJjb2hlcmVudF9oZWFwOiBmYWlsZWQgdG8g
aW5pdGlhbGl6ZSBtZW1vcnkgKCVkKVxuIiwgcmV0KTsNCj4gPiA+ID4gKyAgICAgICAgICAgICBn
b3RvIGRlc3Ryb3lfaGVhcDsNCj4gPiA+ID4gKyAgICAgfQ0KPiA+ID4gPiArDQo+ID4gPiA+ICsg
ICAgIHJldCA9IGRtYV9oZWFwX3JlZ2lzdGVyKGNvaF9oZWFwLT5oZWFwKTsNCj4gPiA+ID4gKyAg
ICAgaWYgKHJldCkgew0KPiA+ID4gPiArICAgICAgICAgICAgIHByX2VycigiY29oZXJlbnRfaGVh
cDogZmFpbGVkIHRvIHJlZ2lzdGVyIGhlYXAgKCVkKVxuIiwgcmV0KTsNCj4gPiA+ID4gKyAgICAg
ICAgICAgICBnb3RvIGRlc3Ryb3lfaGVhcDsNCj4gPiA+ID4gKyAgICAgfQ0KPiA+ID4NCj4gPiA+
IEkgZ3Vlc3MgaXQncyBtb3JlIG9mIGEgY29tbWVudCBhYm91dCB5b3VyIHByZXZpb3VzIHBhdGNo
LCBidXQgaXQncyBub3QNCj4gPiA+IGNsZWFyIHRvIG1lIHdoeSB5b3UgbmVlZGVkIHRvIHNwbGl0
IGRtYV9oZWFwX2FkZCBpbnRvIGRtYV9oZWFwX2NyZWF0ZSAvDQo+ID4gPiBfcmVnaXN0ZXIuIENh
biB5b3UgZXhwYW5kIGEgYml0Pw0KPiA+DQo+ID4gU28gZmlyc3QgSSB0cmllZCB0byBqdXN0IHVz
ZSBkbWFfaGVhcF9hZGQoKSBhbmQgdGhlbiB1c2UgdGhlIGhlYXBfZGV2DQo+ID4gYWZ0ZXJ3YXJk
IHRvIGNhbGwgb2ZfcmVzZXJ2ZWRfbWVtX2RldmljZV9pbml0X3dpdGhfbWVtKCksIGJ1dCBpZiB0
aGF0DQo+ID4gY2FsbCBmYWlsZWQsIHRoZSBlcnJvciBwYXRoIHJlcXVpcmVkIHNvbWUga2luZCBk
bWFfaGVhcF9yZW1vdmUoKQ0KPiA+IGZ1bmN0aW9uIGFzIHRoZSBoZWFwIHdhcyBhbHJlYWR5IHJl
Z2lzdGVyZWQgYnkgdGhlbi4NCj4gPg0KPiA+IEluIHRoZSBDTUEgaGVhcCBmb3IgZXhhbXBsZSwg
ZG1hX2hlYXBfYWRkKCkgaXMgaW52b2tlZCBhdCB0aGUgZW5kIG9mDQo+ID4gdGhlIGBpbml0YCBm
dW5jdGlvbi4gVGhlcmVmb3JlLCB5b3UgZG8gbm90IGhhdmUgdGhpcyBpc3N1ZSwgaWYgaXQNCj4g
PiBmYWlsZWQgaXQgbWVhbnMgdGhlIGhlYXAgd2FzIG5vdCBhZGRlZCBhbmQgeW91IGp1c3QgbmVl
ZCB0byBjbGVhbg0KPiA+IGV2ZXJ5dGhpbmcgZWxzZS4NCj4gPg0KPiA+IEhvd2V2ZXIsIHBlcmZv
cm1pbmcgYSByZW1vdmUoKSBkb2VzIG5vdCBzb3VuZCBsaWtlIHNvbWV0aGluZyB0aGF0IGNhbg0K
PiA+IGJlIGRvbmUgc2FmZWx5LiBJJ3ZlIHNwZW50IHNvbWUgdGltZSB0aGlua2luZyBvbiBhbHRl
cm5hdGl2ZXMsIGJ1dA0KPiA+IHNwbGl0dGluZyBmZWx0IHRoZSBiZXN0IHBhdHRlcm4uDQo+ID4N
Cj4gPiBUaGlzIHdheSBJIGNhbjoNCj4gPiAxLiBDcmVhdGUgdGhlIGRldmljZQ0KPiA+IDIuIENh
bGwgb2ZfcmVzZXJ2ZWRfbWVtX2RldmljZV9pbml0X3dpdGhfbWVtDQo+ID4gMy4gUmVnaXN0ZXIg
dGhlIGhlYXANCj4gPg0KPiA+IFRoaXMgcGxhY2VzIHJlZ2lzdHJhdGlvbiBhdCB0aGUgZW5kLCBt
YWtpbmcgZXZlcnkgZXJyb3IgcGF0aCBhbmQNCj4gPiBjbGVhbnVwIGVhc3kgdG8gaGFuZGxlLg0K
PiA+DQo+ID4gQWxzbywgdGhlIGBkbWFfaGVhcF9hZGQoKWAgY29kZSBhbHJlYWR5IHNlZW1lZCB0
byBoYW5kbGUgdGhlc2UgdHdvDQo+ID4gcGFydHMvcGhhc2VzIGltcGxpY2l0bHkgd2l0aCBkZXZp
Y2VfY3JlYXRlKCksIHNvIHNwbGl0dGluZyBmZWx0DQo+ID4gYXJjaGl0ZWN0dXJhbGx5IHNvdW5k
Lg0KPg0KPiBUaGF0IG1ha2VzIHNlbnNlLCB0aGFua3MhDQo+DQo+IE1heGltZQ0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
